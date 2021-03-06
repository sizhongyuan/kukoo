<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   <!-- span side-right -->
                <div class="span2">
                    <!-- side-right -->
                    <aside class="side-right">
                        <!-- sidebar-right -->
                        <div class="sidebar-right">
                            <!--sidebar-right-header  右侧头部信息-->
                            <div class="sidebar-right-header">
                                <div class="sr-header-right">
                                    <h2><span class="label label-info">最新通知</span></h2>
                                </div>
                                <div class="sr-header-left">
                                    <p class="bold">显示当前日期</p>
                                    <small class="muted">具体时间</small>
                                </div>
                            </div>
                            <!--/sidebar-right-header  右侧头部信息-->
                            <!--sidebar-right-control  头部下面的切换菜单-->
                            <div class="sidebar-right-control">
                                <!-- <ul class="sr-control-item">
                                    <li class="active"><a href="#contact" data-toggle="tab" title="contacts"><i class="icofont-group"></i></a></li>
                                    <li><a href="#alt1" data-toggle="tab" title="alternative 1"><i class="icofont-flag"></i></a></li>
                                    <li rel="tooltip-bottom" title="view site"><a href="index.html" target="_BLANK"><i class="icofont-external-link"></i></a></li>
                                </ul> -->
                            </div>
                            <!-- /sidebar-right-control  头部下面的切换菜单-->
                            <!-- sidebar-right-content -->
                            <div class="sidebar-right-content">
                                <div class="tab-content">
                                    
                                    <!--chat-->
                                    <div class="tab-pane fade" id="chat">
                                        <div class="side-chat">
                                            <!--header part-->
                                            <div class="chat-header">
                                                <div class="chat-action">
                                                    <div class="btn-group pull-right">
                                                        <!--we use data toggle tab for navigate this action-->
                                                        <a class="bg-transparent no-border" href="#contact" data-toggle="tab" title="minimize"><i class="icofont-minus"></i></a>
                                                        <a class="bg-transparent no-border" title="pop out"><i class="icofont-resize-full"></i></a>
                                                        <a class="bg-transparent no-border" href="#contact" data-toggle="tab" title="close"><i class="icofont-remove-sign"></i></a>
                                                    </div>
                                                </div>
                                                <h5><i class="icofont-certificate color-green"></i> Jane smith</h5>
                                            </div>
                                            <!--content part-->
                                            <div class="chat-content">
                                                <div class="chat-in">
                                                    <span class="chat-time">10:45am</span>
                                                    <strong class="chat-user">Jane smith: </strong>
                                                    <div class="chat-text">Lorem ipsum dolor</div>
                                                </div>
                                                <div class="chat-out">
                                                    <span class="chat-time">10:47am</span>
                                                    <strong class="chat-user">me: </strong>
                                                    <div class="chat-text">Erat duis lectus vel wisi, quibusdam aliquam vehicula eleifend ut</div>
                                                </div>
                                                <div class="chat-in">
                                                    <span class="chat-time">10:50am</span>
                                                    <strong class="chat-user">Jane smith: </strong>
                                                    <div class="chat-text">Et sagittis ut vel dolor nullam proin</div>
                                                </div>
                                                <div class="chat-out">
                                                    <span class="chat-time">10:52am</span>
                                                    <strong class="chat-user">me: </strong>
                                                    <div class="chat-text">massa massa quisque sodales id dictumst.</div>
                                                </div>
                                            </div>
                                            <!--status typed part-->
                                            <div class="chat-typed"><i class="typicn-chat"></i> Jane smith is typing...</div>
                                            <!--input part-->
                                            <div class="chat-input">
                                                <div class="chat-desc muted">Lorem ipsum dolor sit amet.</div>
                                                <textarea class="input-block-level" placeholder="chat here..."></textarea>
                                            </div>
                                        </div>
                                        <div class="divider-content"><span></span></div>
                                    </div><!--chat-->
                                    
                                    <!--contact  主体部分-->
                                    <div class="tab-pane fade active in" id="contact">
                                        <div class="side-contact">
                                            <!--contact-control-->
                                            <div class="contact-control">
                                                <div class="btn-group pull-right">
                                                   <!--  <button class="dropdown-toggle bg-transparent no-border" data-toggle="dropdown">
                                                        <i class="icofont-caret-down"></i>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#"><i class="icofont-certificate color-green"></i> Online</a></li>
                                                        <li><a href="#"><i class="icofont-certificate color-silver-dark"></i> Ofline</a></li>
                                                        <li><a href="#"><i class="icofont-certificate color-red"></i> Busy</a></li>
                                                        <li><a href="#"><i class="icofont-certificate color-orange"></i> Idle</a></li>
                                                    </ul> -->
                                                </div>
                                                <h5><i class="icofont-comment color-green"></i>最新动态</h5>
                                            </div>
                                            <!--/contact-control-->
                                            <!--contact-search  搜索框-->
                                            <!-- <div class="contact-search">
                                                <div class="input-icon-prepend">
                                                    <div class="icon">
                                                        <button type="submit">
                                                            <i class="typicn-message color-silver-dark"></i>
                                                        </button>
                                                    </div>
                                                    <input class="input-block-level grd-white" maxlength="11" type="text" name="contact-search" placeholder="chat with..." />
                                                </div>
                                            </div> -->
                                            <!--/contact-search  /搜索框-->
                                            <!--contact-list, we set this max-height:380px, you can set this if you want-->
                                            <ul class="contact-list">
                                                <li class="contact-alt grd-white">
                                                    <!--we use data toggle tab for navigate this action-->
                                                    <a href="#chat" data-toggle="tab" data-id="iin@mail.com">
                                                        <!--we use contact-item structure like the component media in bootstrap-->
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="busy"><i class="icofont-certificate color-red"></i></div>
                                                                <p class="contact-item-heading bold">通知标题弟弟顶顶顶顶顶顶顶顶顶顶顶顶顶</p>
                                                                <p class="help-block"><small class="muted">可以放时间</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                               <!--  <li class="contact-alt grd-white">
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="sungep@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="idle"><i class="icofont-certificate color-orange"></i></div>
                                                                <p class="contact-item-heading bold">Sungep</p>
                                                                <p class="help-block"><small class="muted">UI designer</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="contact-alt grd-white">
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="harab@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="ofline"><i class="icofont-certificate color-silver-dark"></i></div>
                                                                <p class="contact-item-heading bold">Harab</p>
                                                                <p class="help-block"><small class="muted">Team Leader</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="contact-alt grd-white active"> you can use this for active contact or your self status
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="janesmith@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="online"><i class="icofont-certificate color-green"></i></div>
                                                                <p class="contact-item-heading bold">Jane smith</p>
                                                                <p class="help-block"><small class="muted">Data analyst</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="contact-alt grd-white">
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="mahardika@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="online"><i class="icofont-certificate color-green"></i></div>
                                                                <p class="contact-item-heading bold">Mahardika</p>
                                                                <p class="help-block"><small class="muted">PHP Developer</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="contact-alt grd-white">
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="patul@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="ofline"><i class="icofont-certificate color-silver-dark"></i></div>
                                                                <p class="contact-item-heading bold">Pathoel</p>
                                                                <p class="help-block"><small class="muted">UI designer</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li>
                                                <li class="contact-alt grd-white">
                                                    we use data toggle tab for navigate this action
                                                    <a href="#chat" data-toggle="tab" data-id="opytama@mail.com">
                                                        <div class="contact-item">
                                                            <div class="pull-left">
                                                                <img class="contact-item-object" style="width: 32px;height: 32px;" src="img/user-thumb-mini.jpg" />
                                                            </div>
                                                            <div class="contact-item-body">
                                                                <div class="status" title="ofline"><i class="icofont-certificate color-silver-dark"></i></div>
                                                                <p class="contact-item-heading bold">Opytama</p>
                                                                <p class="help-block"><small class="muted">PHP Developer</small></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </li> -->
                                            </ul>
                                            <!--/contact-list-->
                                        </div>
                                    </div>
                                    
                                    <!--/contact /主体部分-->
                                    
                                    <!--alternative 1-->
                                    <div class="tab-pane fade" id="alt1">
                                        <div class="divider-content"><span></span></div> <!--divider-->
                                        
                                        <button class="btn btn-block btn-mini btn-primary">Add Action</button>
                                        <button class="btn btn-block btn-mini">Add Action</button>
                                        
                                        <div class="divider-content"><span></span></div> <!--divider-->
                                        
                                        <!-- side-task -->
                                        <div class="side-task">
                                            <div class="task active">
                                                <span class="task-header">
                                                    <img src="img/loader_16.gif" /> 
                                                    <strong>Portofolio_W34GF.zip</strong>
                                                </span>
                                                <span class="task-desc">9.1 of 17MB - 243KB/sec - 1 min</span>
                                                <div class="progress progress-striped active" rel="tooltip" title="40%">
                                                    <div class="bar bar-success" style="width: 40%;"></div>
                                                </div>
                                            </div>
                                            <div class="task fade in">
                                                <i class="icofont-ok-sign color-green" title="success"></i>
                                                <span class="task-desc">Paralax_bg_5448.jpg</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="icofont-ok-sign color-green" title="success"></i>
                                                <span class="task-desc">Widget_sidebar_W0089.psd</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="icofont-remove-sign color-red" title="failed"></i>
                                                <span class="task-desc">Widget_sidebar_W0089.psd</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="typicn-loop color-silver-dark" title="cancel"></i>
                                                <span class="task-desc">Widget_sidebar_W0089.psd</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="typicn-loop color-silver-dark" title="cancel"></i>
                                                <span class="task-desc">Widget_sidebar_W0089.psd</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="icofont-ok-sign color-green" title="success"></i>
                                                <span class="task-desc">Icons_bg_I98GH.jpg</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                            <div class="task fade in">
                                                <i class="icofont-remove-sign color-red" title="failed"></i>
                                                <span class="task-desc">Dashboard_3805.jpg</span>
                                                <button data-dismiss="alert" class="close">&times;</button>
                                            </div>
                                        </div><!-- /side-task -->
                                        
                                        <div class="divider-content"><span></span></div> <!--divider-->
                                        
                                    </div><!--/alternative 1-->
                                    
                                </div>
                            </div><!-- /sidebar-right-content -->
                        </div><!-- /sidebar-right -->
                    </aside><!-- /side-right -->
                </div>
                <!-- /span side-right -->