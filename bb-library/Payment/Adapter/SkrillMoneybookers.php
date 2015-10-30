<?php
/**
 * BoxBilling
 *
 * @copyright BoxBilling, Inc (http://www.boxbilling.com)
 * @license   Apache-2.0
 *
 * Copyright BoxBilling, Inc
 * This source file is subject to the Apache-2.0 License that is bundled
 * with this source code in the file LICENSE
 * 
 */

class Payment_Adapter_SkrillMoneybookers
{
    private $config = array();

    public function __construct($config)
    {
        $this->config = $config;
    }

    public static function getConfig()
    {
        return array(
            'supports_one_time_payments'   =>  true,
            'supports_subscriptions'       =>  true,
            'description'     =>  'Skrill Moneybookers payment gateway allows you to give instructions how can your client pay invoice. All system, client, order and invoice details can be printed. HTML and JavaScript code is supported.',
            'form'  => array(
                'email' => array('text', array(
                            'label' => 'Skrill email for payment',
                            'validators'=>array('EmailAddress'),
                    ),
                ),
            ),
        );
    }

    /**
     * get html auto submit to Skrill Moneybookers
     *
     */
    public function getHtml($api_admin, $invoice_id, $subscription)
    {
        $invoice = $api_admin->invoice_get(array('id'=>$invoice_id));
        $url     = $this->_getURL();
        $data    = $this->_getSubscriptionField($invoice,$subscription);

        $this->_generateForm($url,$data);
    }

    /*
    * This function to generate field
    * created by jefrisugiarto@gmail.com
    */

    public function _getSubscriptionField(array $invoice,$subscription = 0) {
        $data   = array();

        //config payment
        $data['return_url']             = $this->config['return_url'];
        $data['cancel_url']             = $this->config['cancel_url'];

        $data['cancel_url_target']      = 1;
        $data['dynamic_descriptor']     = 'Descriptor';
        $data['language']               = 'EN';
        $data['confirmation_note']      = 'Samplemerchant wishes you pleasure reading your new book!';

        //payment detail 
        $data['amount']                 = $invoice['total'];
        $data['currency']               = $invoice['currency'];

        //Recuiring Billing Detail
        $data['rec_amount']             = $invoice['total'];
        $data['period']                 = $invoice['subscription']['period'];
        $data['cycle']                  = $invoice['subscription']['cycle'];
        $data['status_url']             = $this->config['notify_url'];

        if($subscription){    
            //client detail 
            $client                         = $invoice['buyer'];
            $data['pay_to_email']           = $this->config['email'];
            $data['firstname']              = $client['first_name'];
            $data['lastname']               = $client['last_name'];
            $data['address']                = $client['address'];
            $data['city']                   = $client['city'];
            $data['state']                  = $client['state'];
            $data['country']                = $client['country'];
            $data['phone_number']           = $client['phone'];
            $data['postal_code']            = $client['zip'];
            $data['pay_from_email']         = $client['email'];
        }

        return $data;
    }

    /*
    * This function to check if config test mode or not 
    * to return url 
    * created by jefrisugiarto@gmail.com
    */

    public function _getURL(){
        if($this->config['test_mode']){
            return 'https://www.skrill.com/app/test_payment.pl';
        }

        return 'https://www.skrill.com/app/payment.pl';
    }

    /*
    * Method to generate form html 
    * Copy from example PayPal Email
    */

    public function _generateForm($url,array $data,$method = 'post'){
        $form  = '';
        $form .= '<form name="payment_form" action="'.$url.'" method="'.$method.'">' . PHP_EOL;
        foreach($data as $key => $value) {
            $form .= sprintf('<input type="hidden" name="%s" value="%s" />', $key, $value) . PHP_EOL;
        }
        $form .=  '<input class="bb-button bb-button-submit" type="submit" value="Pay with Skrill Moneybookers" id="payment_button"/>'. PHP_EOL;
        $form .=  '</form>' . PHP_EOL . PHP_EOL;

        if(isset($this->config['auto_redirect']) && $this->config['auto_redirect']) {
            $form .= sprintf('<h2>%s</h2>', __('Redirecting to skrill.com'));
            $form .= "<script type='text/javascript'>$(document).ready(function(){    document.getElementById('payment_button').style.display = 'none';    document.forms['payment_form'].submit();});</script>";
        }

        return $form;
    }

    /*
    * Copy from example PayPal Payment Gateway 
    */

    public function isIpnDuplicate(array $ipn)
    {
        $sql = 'SELECT id
                FROM transaction
                WHERE txn_id = :transaction_id
                  AND txn_status = :transaction_status
                  AND type = :transaction_type
                  AND amount = :transaction_amount
                LIMIT 2';

        $bindings = array(
            ':transaction_id' => $ipn['txn_id'],
            ':transaction_status' => $ipn['payment_status'],
            ':transaction_type' => $ipn['txn_type'],
            ':transaction_amount' => $ipn['mc_gross'],
        );

        $rows = $this->di['db']->getAll($sql, $bindings);
        if (count($rows) > 1){
            return true;
        }


        return false;
    }

    /*
    * Copy form example PayPal Payment Gateway
    */
    public function _isIpnValid($data){
        return true;
    }

    /**
     * Process transaction received from payment gateway
     *
     * @since BoxBilling v2.9.15
     *
     * @param Api_Admin $api_admin
     * @param int $id - transaction id to process
     * @param array $ipn - post, get, server, http_raw_post_data
     * @param int $gateway_id - payment gateway id on BoxBilling
     *
     * @return mixed
     * Copy from PayPal Email
     */
    public function processTransaction($api_admin, $id, $data, $gateway_id)
    {
        if(APPLICATION_ENV != 'testing' && !$this->_isIpnValid($data)) {
            throw new Payment_Exception('IPN is not valid');
        }
        
        $ipn = $data['post'];
        
        $tx = $api_admin->invoice_transaction_get(array('id'=>$id));
        
        
        if(!$tx['invoice_id']) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'invoice_id'=>$data['get']['bb_invoice_id']));
        }
        
        if(!$tx['type'] && isset($ipn['txn_type'])) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'type'=>$ipn['txn_type']));
        }
        
        if(!$tx['txn_id'] && isset($ipn['txn_id'])) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'txn_id'=>$ipn['txn_id']));
        }
        
        if(!$tx['txn_status'] && isset($ipn['payment_status'])) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'txn_status'=>$ipn['payment_status']));
        }
        
        if(!$tx['amount'] && isset($ipn['mc_gross'])) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'amount'=>$ipn['mc_gross']));
        }
        
        if(!$tx['currency'] && isset($ipn['mc_currency'])) {
            $api_admin->invoice_transaction_update(array('id'=>$id, 'currency'=>$ipn['mc_currency']));
        }

        $invoice = $api_admin->invoice_get(array('id'=>$data['get']['bb_invoice_id']));
        $client_id = $invoice['client']['id'];

        switch ($ipn['txn_type']) {
            
            case 'web_accept':
            case 'subscr_payment':
                
                if($ipn['payment_status'] == 'Completed') {
                    $bd = array(
                        'id'            =>  $client_id,
                        'amount'        =>  $ipn['mc_gross'],
                        'description'   =>  'SkrillMoneybookers transaction '.$ipn['txn_id'],
                        'type'          =>  'SkrillMoneybookers',
                        'rel_id'        =>  $ipn['txn_id'],
                    );
                    if ($this->isIpnDuplicate($ipn)){
                        throw new Payment_Exception('IPN is duplicate');
                    }
                    $api_admin->client_balance_add_funds($bd);
                    if($tx['invoice_id']) {
                        $api_admin->invoice_pay_with_credits(array('id'=>$tx['invoice_id']));
                    }
                    $api_admin->invoice_batch_pay_with_credits(array('client_id'=>$client_id));
                }
                
                break;
            
            case 'subscr_signup':
                $sd = array(
                    'client_id'     =>  $client_id,
                    'gateway_id'    =>  $gateway_id,
                    'currency'      =>  $ipn['mc_currency'],
                    'sid'           =>  $ipn['subscr_id'],
                    'status'        =>  'active',
                    'period'        =>  str_replace(' ', '', $ipn['period3']),
                    'amount'        =>  $ipn['amount3'],
                    'rel_type'      =>  'invoice',
                    'rel_id'        =>  $invoice['id'],
                );
                $api_admin->invoice_subscription_create($sd);
                
                $t = array(
                    'id'            => $id, 
                    's_id'          => $sd['sid'],
                    's_period'      => $sd['period'],
                );
                $api_admin->invoice_transaction_update($t);
                break;

            case 'recurring_payment_suspended_due_to_max_failed_payment':
            case 'subscr_failed':
            case 'subscr_eot':
            case 'subscr_cancel':
                $s = $api_admin->invoice_subscription_get(array('sid'=>$ipn['subscr_id']));
                $api_admin->invoice_subscription_update(array('id'=>$s['id'], 'status'=>'canceled'));
                break;

            default:
                error_log('Unknown SkrillMoneybookers transaction '.$id);
                break;
        }
        
        if(isset($ipn['payment_status']) && $ipn['payment_status'] == 'Refunded') {
            $refd = array(
                'id'    => $invoice['id'],
                'note'  => 'SkrillMoneybookers refund '.$ipn['parent_txn_id'],
            );
            $api_admin->invoice_refund($refd);
        }
        
        $d = array(
            'id'        => $id, 
            'error'     => '',
            'error_code'=> '',
            'status'    => 'processed',
            'updated_at'=> date('Y-m-d H:i:s'),
        );
        $api_admin->invoice_transaction_update($d);
    }
}