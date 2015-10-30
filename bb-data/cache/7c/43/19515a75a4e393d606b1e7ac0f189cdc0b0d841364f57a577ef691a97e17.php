<?php

/* mod_page_signup.phtml */
class __TwigTemplate_7c4319515a75a4e393d606b1e7ac0f189cdc0b0d841364f57a577ef691a97e17 extends Twig_Template
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
        // line 3
        $context["mf"] = $this->env->loadTemplate("macro_functions.phtml");
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 5
    public function block_meta_title($context, array $blocks = array())
    {
        echo gettext("Sign up");
    }

    // line 6
    public function block_body($context, array $blocks = array())
    {
        // line 7
        echo "
<section class=\"container login\" role=\"main\">

    ";
        // line 10
        if ($this->getAttribute((isset($context["settings"]) ? $context["settings"] : null), "login_page_show_logo")) {
            // line 11
            echo "    ";
            $context["company"] = $this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "system_company");
            // line 12
            echo "    <h1 style=\"text-align: center\">
        ";
            // line 13
            if ($this->getAttribute((isset($context["settings"]) ? $context["settings"] : null), "login_page_show_logo")) {
                // line 14
                echo "        <a href=\"";
                echo twig_escape_filter($this->env, (($this->getAttribute((isset($context["settings"]) ? $context["settings"] : null), "login_page_logo_url", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["settings"]) ? $context["settings"] : null), "login_page_logo_url"), "/")) : ("/")), "html", null, true);
                echo "\" target=\"_blank\"><img src=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "system_company"), "logo_url"), "html", null, true);
                echo "\" alt=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "system_company"), "name"), "html", null, true);
                echo "\"/></a>
        ";
            }
            // line 16
            echo "    </h1>
    ";
        }
        // line 18
        echo "    <div class=\"data-block\">
        <div class=\"data-container\">

            <form method=\"post\" action=\"\" id=\"client-signup\">
                <div class=\"alert alert-info\" style=\"display: none\" id=\"account-created-info-block\">
                    <button class=\"close\" data-dismiss=\"alert\">×</button>
                    <strong>";
        // line 24
        echo gettext("Account has been created");
        echo ".</strong> ";
        echo gettext("Please check your mailbox and confirm email address");
        echo ".
                </div>
                <fieldset>
                    ";
        // line 27
        $context["r"] = $this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "client_required");
        // line 28
        echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"reg-email\">";
        // line 29
        echo gettext("Email Address");
        echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"email\" value=\"";
        // line 31
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "email"), "html", null, true);
        echo "\" required=\"required\" id=\"reg-email\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>

                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"first-name\">";
        // line 37
        echo gettext("First Name");
        echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"first_name\" id=\"first-name\" value=\"";
        // line 39
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "first_name"), "html", null, true);
        echo "\" required=\"required\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>


                    ";
        // line 45
        if (twig_in_filter("last_name", (isset($context["r"]) ? $context["r"] : null))) {
            // line 46
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"last_name\">";
            // line 47
            echo gettext("Last Name");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"last_name\" id=\"last_name\" value=\"";
            // line 49
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "last_name"), "html", null, true);
            echo "\" required=\"required\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 54
        echo "

                    ";
        // line 56
        if (twig_in_filter("company", (isset($context["r"]) ? $context["r"] : null))) {
            // line 57
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"company\">";
            // line 58
            echo gettext("Company");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"company\" id=\"company\" value=\"";
            // line 60
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "company"), "html", null, true);
            echo "\" required=\"required\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 65
        echo "
                    ";
        // line 66
        if (twig_in_filter("birthday", (isset($context["r"]) ? $context["r"] : null))) {
            // line 67
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"birthday\">";
            // line 68
            echo gettext("Birthday");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"birthday\" id=\"birthday\" value=\"\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 75
        echo "
                    ";
        // line 76
        if (twig_in_filter("gender", (isset($context["r"]) ? $context["r"] : null))) {
            // line 77
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"gender\">";
            // line 78
            echo gettext("You are");
            echo "</label>
                        <div class=\"controls\">
                            <select name=\"gender\" id=\"gender\">
                                <option value=\"male\">Male</option>
                                <option value=\"female\">Female</option>
                            </select>
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 88
        echo "
                    ";
        // line 89
        if (twig_in_filter("address_1", (isset($context["r"]) ? $context["r"] : null))) {
            // line 90
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"address_1\">";
            // line 91
            echo gettext("Address");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"address_1\" id=\"address_1\" value=\"";
            // line 93
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "address_1"), "html", null, true);
            echo "\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 98
        echo "
                    ";
        // line 99
        if (twig_in_filter("address_2", (isset($context["r"]) ? $context["r"] : null))) {
            // line 100
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"address_2\">";
            // line 101
            echo gettext("Address 2");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"address_2\" id=\"address_2\" value=\"";
            // line 103
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "address_2"), "html", null, true);
            echo "\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 108
        echo "
                    ";
        // line 109
        if (twig_in_filter("city", (isset($context["r"]) ? $context["r"] : null))) {
            // line 110
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"city\">";
            // line 111
            echo gettext("City");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"city\" id=\"city\" value=\"";
            // line 113
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "city"), "html", null, true);
            echo "\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 118
        echo "
                    ";
        // line 119
        if (twig_in_filter("country", (isset($context["r"]) ? $context["r"] : null))) {
            // line 120
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"country\">";
            // line 121
            echo gettext("Country");
            echo "</label>
                        <div class=\"controls\">
                            <select name=\"country\" required=\"required\">
                                <option value=\"\">";
            // line 124
            echo gettext("-- Select country --");
            echo "</option>
                                ";
            // line 125
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "system_countries"));
            foreach ($context['_seq'] as $context["val"] => $context["label"]) {
                // line 126
                echo "                                <option value=\"";
                echo twig_escape_filter($this->env, (isset($context["val"]) ? $context["val"] : null), "html", null, true);
                echo "\" label=\"";
                echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null));
                echo "\">";
                echo twig_escape_filter($this->env, (isset($context["label"]) ? $context["label"] : null));
                echo "</option>
                                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['val'], $context['label'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 128
            echo "                            </select>
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 133
        echo "
                    ";
        // line 134
        if (twig_in_filter("state", (isset($context["r"]) ? $context["r"] : null))) {
            // line 135
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"state\">";
            // line 136
            echo gettext("State");
            echo "</label>
                        <div class=\"controls\">
                            ";
            // line 139
            echo "                            <input type=\"text\" name=\"state\" id=\"state\" value=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "state"), "html", null, true);
            echo "\" />
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 144
        echo "
                    ";
        // line 145
        if (twig_in_filter("postcode", (isset($context["r"]) ? $context["r"] : null))) {
            // line 146
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"postcode\">";
            // line 147
            echo gettext("Zip/Postal Code");
            echo "</label>
                        <div class=\"controls\">
                            <input type=\"text\" name=\"postcode\" id=\"postcode\" value=\"";
            // line 149
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "postcode"), "html", null, true);
            echo "\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>
                    ";
        }
        // line 154
        echo "
                    ";
        // line 155
        if (twig_in_filter("phone", (isset($context["r"]) ? $context["r"] : null))) {
            // line 156
            echo "                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"phone\">";
            // line 157
            echo gettext("Phone Number");
            echo "</label>
                            <div class=\"input-prepend\">
                                <input type=\"text\" name=\"phone_cc\" value=\"\" style=\"width:20%\">
                                <input id=\"phone\" type=\"text\" name=\"phone\" value=\"";
            // line 160
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), "phone"), "html", null, true);
            echo "\" style=\"width:70%\">
                            </div>
                            <p class=\"help-block\"></p>
                    </div>
                    ";
        }
        // line 165
        echo "
                    ";
        // line 166
        $context["custom_fields"] = $this->getAttribute((isset($context["guest"]) ? $context["guest"] : null), "client_custom_fields");
        // line 167
        echo "                    ";
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["custom_fields"]) ? $context["custom_fields"] : null));
        foreach ($context['_seq'] as $context["field_name"] => $context["field"]) {
            // line 168
            echo "                        ";
            if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "active")) {
                // line 169
                echo "                            <div class=\"control-group\">
                                <label class=\"control-label\" for=\"";
                // line 170
                echo twig_escape_filter($this->env, (isset($context["field_name"]) ? $context["field_name"] : null), "html", null, true);
                echo "\">";
                if ((!twig_test_empty($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "title")))) {
                    echo twig_escape_filter($this->env, $this->getAttribute((isset($context["field"]) ? $context["field"] : null), "title"), "html", null, true);
                } else {
                    echo " ";
                    echo twig_escape_filter($this->env, twig_capitalize_string_filter($this->env, (isset($context["field_name"]) ? $context["field_name"] : null)), "html", null, true);
                    echo " ";
                }
                echo "</label>
                                <div class=\"controls\">
                                    <input type=\"text\" name=\"";
                // line 172
                echo twig_escape_filter($this->env, (isset($context["field_name"]) ? $context["field_name"] : null), "html", null, true);
                echo "\" id=\"";
                echo twig_escape_filter($this->env, (isset($context["field_name"]) ? $context["field_name"] : null), "html", null, true);
                echo "\" value=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["request"]) ? $context["request"] : null), (isset($context["field_name"]) ? $context["field_name"] : null)), "html", null, true);
                echo "\" ";
                if ($this->getAttribute((isset($context["field"]) ? $context["field"] : null), "required")) {
                    echo "required=\"required\"";
                }
                echo ">
                                    <p class=\"help-block\"></p>
                                </div>
                            </div>
                        ";
            }
            // line 177
            echo "                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['field_name'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 178
        echo "

                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"reg-password\">";
        // line 181
        echo gettext("Password");
        echo "</label>
                        <div class=\"controls\">
                            <input type=\"password\" name=\"password\" value=\"\" required=\"required\" id=\"reg-password\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>

                    <div class=\"control-group\">
                        <label class=\"control-label\" for=\"password-confirm\">";
        // line 189
        echo gettext("Password confirm");
        echo "</label>
                        <div class=\"controls\">
                            <input type=\"password\" name=\"password_confirm\" name=\"password-confirm\" value=\"\" required=\"required\">
                            <p class=\"help-block\"></p>
                        </div>
                    </div>

                    ";
        // line 196
        echo $context["mf"]->getrecaptcha();
        echo "

                    <div class=\"form-actions\">
                        <button class=\"btn btn-block btn-large btn-inverse btn-alt\" type=\"submit\">";
        // line 199
        echo gettext("Sign up");
        echo "</button>
                    </div>

                </fieldset>
                <input type=\"hidden\" name=\"auto_login\" value=\"1\"/>
            </form>

        </div>
    </div>

    <ul class=\"login-footer\">
        <li><a href=\"";
        // line 210
        echo $this->env->getExtension('bb')->twig_bb_client_link_filter("login");
        echo "\"><small>";
        echo gettext("Login");
        echo "</small></a></li>
    </ul>

</section>

";
    }

    // line 217
    public function block_js($context, array $blocks = array())
    {
        // line 218
        echo "<script type=\"text/javascript\">
    \$(function () {
        \$('#client-signup').bind('submit', function (event) {
            \$.ajax({
                type: \"POST\",
                url: bb.restUrl('guest/client/create'),
                data: \$(this).serialize(),
                dataType: 'json',
                success: function (data) {
                    if (data.error) {
                        if (data.error.code == 7777) {
                            \$('#account-created-info-block').show();
                        } else {
                            \$('.wait').hide();
                            bb.msg(data.error.message, 'error');
                        }
                    } else {
                        bb.redirect(\"";
        // line 235
        echo twig_escape_filter($this->env, twig_constant("BB_URL"), "html", null, true);
        echo "\");
                    }
                }
            });
            return false;
        });
    });
</script>
";
    }

    public function getTemplateName()
    {
        return "mod_page_signup.phtml";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  499 => 235,  480 => 218,  477 => 217,  465 => 210,  451 => 199,  445 => 196,  435 => 189,  424 => 181,  419 => 178,  413 => 177,  397 => 172,  384 => 170,  381 => 169,  378 => 168,  373 => 167,  371 => 166,  368 => 165,  360 => 160,  354 => 157,  351 => 156,  349 => 155,  346 => 154,  338 => 149,  333 => 147,  330 => 146,  328 => 145,  325 => 144,  316 => 139,  311 => 136,  308 => 135,  306 => 134,  303 => 133,  296 => 128,  283 => 126,  279 => 125,  275 => 124,  269 => 121,  266 => 120,  264 => 119,  261 => 118,  253 => 113,  248 => 111,  245 => 110,  243 => 109,  240 => 108,  232 => 103,  227 => 101,  224 => 100,  222 => 99,  219 => 98,  211 => 93,  206 => 91,  203 => 90,  201 => 89,  198 => 88,  185 => 78,  182 => 77,  180 => 76,  177 => 75,  167 => 68,  164 => 67,  162 => 66,  159 => 65,  151 => 60,  146 => 58,  143 => 57,  141 => 56,  137 => 54,  129 => 49,  124 => 47,  121 => 46,  119 => 45,  110 => 39,  105 => 37,  96 => 31,  91 => 29,  88 => 28,  86 => 27,  78 => 24,  70 => 18,  66 => 16,  56 => 14,  54 => 13,  51 => 12,  48 => 11,  46 => 10,  41 => 7,  38 => 6,  32 => 5,  27 => 3,);
    }
}
