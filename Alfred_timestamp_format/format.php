<?php

require_once('workflows.php');
date_default_timezone_set('Asia/Shanghai');
$wf = new Workflows();
$query = "{query}";
$data = date("Y-m-d H:i:s", $query);
$icon = "icon.png";
$wf->result( $query, $query, $data, 'Asia/Shanghai', $icon);
echo $wf->toxml();