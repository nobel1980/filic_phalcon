<?php
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
?>
<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <div class="row margin-bottom">
                    <div id="wrap">
                        <div id="mid">
                            <div id="content-wrap" align="center">

                                <form action="http:// fareastislamilife.com/login" method="post" target="_top">
                                    <input type="hidden" name="login_theme" value="cpanel" />
                                    <table width="200" class="login" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="64" height="22" class="login_lines"><div align="right">Email:</div></td>

                                            <td width="144" class="login_lines" align="left"><input type="text" tabindex="1" id="user" name="user" size="14" /></td>
                                        </tr>
                                        <tr class="row2">
                                            <td height="32" class="login_lines"><div align="right">Password:</div></td>
                                            <td class="login_lines" align="left"><input type="password" tabindex="2" id="pass" name="pass" size="14" /></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align: center"><table width="208" border="0">
                                                    <tr>
                                                        <td width="96" height="26">&nbsp;</td>
                                                        <td width="102"><input name="submit" type="submit" class="input-button" id="login" tabindex="3" value="Login" /></td>
                                                    </tr>
                                                </table></td>
                                        </tr>
                                    </table>
                                    <input type="hidden" name="goto_uri" value="/" />
                                    <br />

                                    <script type="text/javascript">
                                        /* Must not include external javascript -jnk 06.20.09 */
                                        var init = function() {
                                            document.getElementById("user").value = '';
                                            document.getElementById("pass").value = '';
                                            document.getElementById("user").focus();
                                        };
                                        if( window.addEventListener ) {
                                            window.addEventListener('load',init,false);
                                        } else if( document.addEventListener ) {
                                            document.addEventListener('load',init,false);
                                        }

                                    </script>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>  <!-- .row -->
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-4 col-xs-12">
                <div class="contact-detail margin-top">
                    <h3>Address</h3>
                    <hr class="colorgreen">
                    <address>
                        <p>Fareast Islami Life Insurance Company Limited <br>
                            35 Topkhana Road, Fareast Tower, </br>Dhaka -1000.</p>

                        <p><i class="glyphicon glyphicon-earphone"></i>      096130000123</p>
                         <p><i class="glyphicon glyphicon-envelope"></i>      info@fareastislamilife.com</p>
                    </address>
                </div>
            </div><!-- End right content -->
        </div>
    </div>
</main>


