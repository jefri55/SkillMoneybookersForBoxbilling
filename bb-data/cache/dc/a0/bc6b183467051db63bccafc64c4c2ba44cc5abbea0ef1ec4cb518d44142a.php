<?php

/* mod_page_password-reset.phtml */
class __TwigTemplate_dca0bc6b183467051db63bccafc64c4c2ba44cc5abbea0ef1ec4cb518d44142a extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout_public.phtml");

        $this->blocks = array(
            'meta_title' => array($this, 'block_meta_title'),
            'body' => array($this, 'block_body'),
            'js' => array($this, 'block_js'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout_public.phtml";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_meta_title($context, array $blocks = array())
    {
        echo gettext("Reset password");
    }

    // line 5
    public function block_body($context, array $blocks = array())
    {
        // line 6
        echo "
<section class=\"container login\" role=\"main\">

 <h1>";
        // line 9
        echo gettext("Reset password");
        echo "</h1>

<div class=\"data-block\">
    <div class=\"data-container\">

        <form method=\"post\" action=\"\" id=\"password-reset\">
            <fieldset>
                <div class=\"control-group\">
                    <label class=\"control-label\" for=\"email\">";
        // line 17
        echo gettext("Email Address");
        echo "</label>
                    <div class=\"controls\">
                        <input id=\"icon\" type=\"text\" placeholder=\"";
        // line 19
        echo gettext("Your email address");
        echo "\" name=\"email\" value=\"";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "email"), "html", null, true);
        echo "\" required=\"required\" data-validation-required-message=\"";
        echo gettext("You must fill in your email.");
        echo "\">
                        <div class=\"help-block\"></div>
                        <span class=\"help-block\">";
        // line 21
        echo gettext("Enter your email to reset password. You will receive new password after reset link is confirmed.");
        echo "</span>
                    </div>
                </div>
                <div class=\"form-actions\">
                    <button class=\"btn btn-block btn-large btn-inverse btn-alt span3\" type=\"submit\">";
        // line 25
        echo gettext("Reset password");
        echo "</button>
                </div>
            </fieldset>
        </form>

    </div>
</div>

<ul class=\"login-footer\">
    <li><a href=\"";
        // line 34
        echo $this->env->getExtension('bb')->twig_bb_client_link_filter("signup");
        echo "\"><small>";
        echo gettext("Signup");
        echo "</small></a></li>
    <li><a href=\"";
        // line 35
        echo $this->env->getExtension('bb')->twig_bb_client_link_filter("login");
        echo "\"><small>";
        echo gettext("Login");
        echo "</small></a></li>
</ul>

</section>
";
    }

    // line 41
    public function block_js($context, array $blocks = array())
    {
        // line 42
        echo "<script type=\"text/javascript\">
\$(function() {
    \$('#password-reset').bind('submit',function(event){
        bb.post(
            'guest/client/reset_password',
            \$(this).serialize(),
            function(result) {
                bb.msg('";
        // line 49
        echo gettext("Password reset confirmation email was sent");
        echo "');
            }
        );
        return false;
    });
});
</script>
";
    }

    public function getTemplateName()
    {
        return "mod_page_password-reset.phtml";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  117 => 49,  108 => 42,  105 => 41,  94 => 35,  88 => 34,  76 => 25,  69 => 21,  60 => 19,  55 => 17,  44 => 9,  39 => 6,  36 => 5,  30 => 3,);
    }
}
