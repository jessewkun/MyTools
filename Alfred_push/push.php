<?php

require_once('workflows.php');

$barkId = ''; // barkid
$barkApi = 'https://api.day.app/%s/%s/%s';
$pushTitle = 'MacbookPush';

$pushMessage = "{query}";
$res = file_get_contents(sprintf($barkApi, $barkId, $pushTitle, urlencode($pushMessage)));
$res = !empty($res) ? json_decode($res, true) : [];

$wf = new Workflows();
$wf->result($pushMessage, $pushMessage, $res['message'] ?? '', '', '');
echo $wf->toxml();