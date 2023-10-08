Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([104.47.1.51]) by
	localhost.localdomain with ESMTP;
	Mon, 02 Oct 2023 12:01:50 +0000 (UTC)
Received: from DB7PR05CA0013.eurprd05.prod.outlook.com (2603:10a6:10:36::26)
 by DB5P192MB2243.EURP192.PROD.OUTLOOK.COM (2603:10a6:10:4a0::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Mon, 2 Oct
 2023 12:01:48 +0000
Received: from DB8EUR05FT005.eop-eur05.prod.protection.outlook.com
 (2603:10a6:10:36:cafe::15) by DB7PR05CA0013.outlook.office365.com
 (2603:10a6:10:36::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30 via Frontend
 Transport; Mon, 2 Oct 2023 12:01:48 +0000
Authentication-Results: spf=pass (sender IP is 209.85.217.53)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.217.53 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.217.53; helo=mail-vs1-f53.google.com; pr=C
Received: from mail-vs1-f53.google.com (209.85.217.53) by
 DB8EUR05FT005.mail.protection.outlook.com (10.233.239.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.21 via Frontend Transport; Mon, 2 Oct 2023 12:01:48 +0000
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-45281e0b1cbso7788634137.0
        for <eyaltest@cynetint.onmicrosoft.com>; Mon, 02 Oct 2023 05:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696248107; x=1696852907; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=soHJ0uVfE+FL7OiW5/Ua2GAokYR0HmwdrLLoUrOlj4M=;
        b=OkFB9k+8lsXU2168lfF7ZqjzRi5j7roRB8tIIv3eegjo/knwmN65QITFosLGxm9ad/
         E6IM6JvbNc4Zq8NApmbW8iNj2kz8FZBq1+7y8p49P9arJNEyE51t7ZwjM1bhIpfCQfa6
         V+PsY6rlNq8KoxWRQVup/KRSFPv6UDOiJ4y5xA0aA/VGF19jWGTwnsW5KwveRlqVEGhw
         EdqqYcFM0YzDFx3aEJDXI25R1v4wswFrZBvRTzq5x77L//BQOk6/swm27ckWY+KbEg15
         eE3ctLaW1+nZZ3/73rPtUdw04HzDl6FKnwa4VA9OAWU7EocgBZi47+VeqUC0KaprFD8L
         rWwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696248107; x=1696852907;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=soHJ0uVfE+FL7OiW5/Ua2GAokYR0HmwdrLLoUrOlj4M=;
        b=sCwhLvLzOWUxCcr0GlBFv34yA68Iz7F2FawToQEZ30jW4LMa7gnoNQNMzpZ141s1bk
         q0SXd7cCcXNyCoSacO1gQVA+NT0VGVTxryEx9caGdCwSyx2CbGgP1Ib9RTP0SEhpzbyX
         e/qyQs0r1aa/9XcG/0KkYk46xjbVrEu0WqDh6pJLaGNw7cLknyydwOa+FzXccJFBqpni
         1VVeuDAgo1HZY5Rj5X/XIE3IEPLkM1rJHoJlIT7pMvcggedzHroHFmTpqNinFQl3BVqX
         euzez7JO7NEqKkmrTsgzvwY5A/cKv8Di6tBhrGZC6jMCwrkKkF8ftuj68PxyDkTvvPfQ
         rviQ==
X-Gm-Message-State: AOJu0YySD9Rw8p/mj7K1YmkoX5uX5noYRvYAm5UMjNqxhV+dDH7hSumc
	FKwNvT0GKwftnNRHmdGiHylmoHGec/lg7Z9qCGpiMOeobExuCg==
X-Google-Smtp-Source: AGHT+IGJFpu1qrqQzhJcZiVFmv/od6bQQysGWWQjUIdL6Y365RQwKiVV1JNhYTBwxwCvL9lwXOzlT49tNoyM6M0mum8=
X-Received: by 2002:a67:f754:0:b0:452:7f81:1502 with SMTP id
 w20-20020a67f754000000b004527f811502mr9444931vso.26.1696248106812; Mon, 02
 Oct 2023 05:01:46 -0700 (PDT)
MIME-Version: 1.0
From: Yuri Khomyakov <yurik1776@gmail.com>
Date: Mon, 2 Oct 2023 15:01:35 +0300
Message-ID: <CADrc17DTu5MpDMEDqGiMqAPPwHAbULoBmsNexuJEfizQtfG4tQ@mail.gmail.com>
Subject: base64 dude
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="000000000000db90870606ba894a"
Return-Path: yurik1776@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB8EUR05FT005:EE_|DB5P192MB2243:EE_
X-MS-Office365-Filtering-Correlation-Id: e8f18f4c-616d-4c96-fb45-08dbc33f5b1c
X-MS-Exchange-AtpMessageProperties: SA|SL
x-cynet-tttt-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?WVFMa2U0bGVuNHptc1d0bDhRQUV4RzU5STNvQWhEQVUxZm1pb0lqbWR3dmRu?=
 =?utf-8?B?VFV5dTdCMkpudWFPeTZUa2xxY0kybFpRaTJmL1NWZVIwMTVVWEdnWSt2cmow?=
 =?utf-8?B?NUkxTCtEY0F5TXVuaERsYnZ6VGY3OUpqdFgwTnNHME10Vk1oVS8wQk8xeGdE?=
 =?utf-8?B?OHBDYXpVYTNWeEYrdEN2eEJDTUpjUGhEWjZyWWo1aXNQTTd4V1NveGRrcDRs?=
 =?utf-8?B?MFY4NUltY1hPbjZpR1p2NVZqVlFGVlUxWCtDN3NLVXZNemxVWGtTSmVzYis4?=
 =?utf-8?B?b2x2cGRTR0xlTk1uRCs0ZWZycWpwb3o3UkpiVFdVaVVYWGN6TW5uOWVYdnFj?=
 =?utf-8?B?OGppM2hDMlZHMlFpZGRsdEV0SjBrTDdQQXB2ZDRVeUVuWlVqbktUekRCd1ZP?=
 =?utf-8?B?TTk4UWdoNWNsMGhRTEpRL3FTMGxKcjZlL1gvd2tPZnc2Y2ROU0hEMlQ2ZkF0?=
 =?utf-8?B?WEdlOWRSSUFadGZwaXJsMDZ6dE5KTjlEaXZrUEFTWDdVTDdPYTJJRUljS09s?=
 =?utf-8?B?QnVXVXl2TTA1S2tPZU1rd3d5T0xnMmlmVjB3YmVtVmVIWHQvUmpON1puOW91?=
 =?utf-8?B?WEFJOU56MkFDc0d6VUdmVHIyZmk4bWErbGFiSnNZb0NXR1g5UXNyNWFjSlc3?=
 =?utf-8?B?YjZYYWdEMnNQUVhSQzl1Vk5Kd3ZFMzM1OEhiTktHYVZucm1hVHlhQXp2bG8v?=
 =?utf-8?B?dVJRNThxMXhrZFFseFZTUWVMTjVxUFhGRks2YWd1ZlZIRXcwYnRIUDBRK2cy?=
 =?utf-8?B?a3NFbk1qK0QzeEVNS2hkVGhFSnp6L3lhVGlFMjgwUmxlQmR3bDdRUTFMYTdw?=
 =?utf-8?B?eUI2ZVpqcnl6Z1djVTVjc3I0eGR5eUVpMUxzOXRFajVaUEZUQUQwaDZIQnJN?=
 =?utf-8?B?SDdUOXJwdEFzMUVEUGlkbFBSRzB5TWlYVkVFb0dOSHNTL2JOSlJHTlRCSG9I?=
 =?utf-8?B?RG5Ua1R0K1c5ZVZ1MkZ6dVlsL1NMbzNtSjQxbGxRTU9YR05nMHR1eUZnV2lR?=
 =?utf-8?B?djdBTGo4b3NEL2tKQXgrMGlJa3pDSmJwV1U3K1NxRUl3eFdjNGVjQ0pjNnNW?=
 =?utf-8?B?WitZMFBEbTQ3SHpWanJsRWNzNnJ3aVJ0RDVBRmpJUHhYa09Mek52QnFnWVBX?=
 =?utf-8?B?VkRDQ2pHUWlONkpucUd0YU40NEY4b2toMkFjMGZSU3NDMHhPQ3poNHlaVC9x?=
 =?utf-8?B?NlJDNUREVll2ZVVBcFY5aWNoUnFUNjROMFNKUklMTUlNWUJhWXE0M0hTdU9r?=
 =?utf-8?B?UmxVTWs2clZwdmVVWDJUUGxzUHErNWZHaHR5WE15Qk9uY3FKR2MwcXBqZlFa?=
 =?utf-8?B?Uk54enh4cFJEMmVqWWllT0R5cWNaK292d1NsM0k2UE9SdnZWd0RJRFBUU3Vm?=
 =?utf-8?B?NGUyWG9RYzlpZVFSNUJ6OUdzN2FZNCt0T2NTMCtLcjUzWGZhNWlkM1FORGx6?=
 =?utf-8?B?by9DUzdWS0RmS3I0dmozSFRBYnE1NjdzdjRYTTByZlJhandmeTlVUGxDdkZ0?=
 =?utf-8?B?TTJFaGVmMy9FcmRHZ1A0KzdhSFNCSnkzMGVjTVU5NE1tbVByanZKOG9mZ0tB?=
 =?utf-8?B?cnBvZ1FBRVF0Tkw4a290QnY4eG5uV2w3bHVGWFZ3WTk2dENEeld0Q1ByekQr?=
 =?utf-8?B?d1JVb25DM1lUTW90RHVyTit5SThzdXYrQ1JsS25OK3BQNnhacjZFWFBpSFFP?=
 =?utf-8?B?Wm0vdDJBYkVjeTkwdCs1ZjhrelBGSVR4bisyUFdpVG9jcW1BbVgvcHBFTjkr?=
 =?utf-8?B?bG1tdThrQ2R6N1Z5dlE4anhOcHZzcC85bjA4bGhqTGx1SWo1ZkVOQW8rUUZ4?=
 =?utf-8?B?UURsNm5GdUtpaHNyam1uUTJnMkhsVHR6RTUxOW5sVFR6UmZIV3RFU1RHWTNv?=
 =?utf-8?B?eW5XMFRwQURCbTJGMHdpTEptOFBYeUZQSHBnYXdPbmdxYTFqSmNBYjdOcjRt?=
 =?utf-8?B?L0RuUmZOcENIWHZ2RlAwYnV5WEF2c1ovUEhiVW81cXlFTk1lU3RjSmxNQzVI?=
 =?utf-8?B?NUNhdG9uNjhuaG9KSW9nbjlKdDcyVlhEY1NGRzhBMlB1ZVlTRVF2aU1ONGEz?=
 =?utf-8?B?ZlNFMktjOE9URXU0VVFEdWlETGI3KzlFTXRES1BzR2xSQ0RHczRUZ1pwS1o1?=
 =?utf-8?B?dnNWeWVmNkZsNHR1L3A1OWJpV0h5NHdhOG5zbmxWRjNUdFZYWVllM1BEQnB2?=
 =?utf-8?B?a1Nja2ZieHZVUnpiZllqTkZUb3pXTVM3RWFybU1adTV0V0xvWEk0Nnp3OU9L?=
 =?utf-8?B?V24wTFM0dnVlRDV1c1dWZVlEUmJWTjg1MzJXRFZDcWJHUlRIRXRrbnlRNmRO?=
 =?utf-8?B?ZnY0VEpEVmRkTXJmZm0vWWlhRzZIdUxIbWRzR1krR1FzWXY5VHFsMUtvdC9s?=
 =?utf-8?Q?F6W1j4qc8Ftbiadw=3D?=
X-Forefront-Antispam-Report:
	CIP:209.85.217.53;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail-vs1-f53.google.com;PTR:mail-vs1-f53.google.com;CAT:NONE;SFS:(13230031)(4636009)(84050400002)(451199024)(5660300002)(8676002)(1096003)(336012)(26005)(7116003)(76482006)(42186006)(6916009)(16350225007)(6666004)(33964004)(82202003)(73392003)(83380400001)(7636003)(86362001)(55446002)(166002)(356005)(7596003)(57042007);DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	VpwUbyI+Ay5xywyZKqMbyDucLLAaGBFhp+KYw6XjILUsSDNcqVAuLzv/TR31uLaUj5groqxWEqZRgWA+nEegFvbI79jlTCWiuinQpTM1lxmA1G29Dbl0ww8pngVp56ae4RRQo7X8RKiHTki9jsZ1XhPrGGj0RObRDxqVbcTXzcSlJVlLhKFQv4FkzeW6wC3a9a2R1TQkJTzQz5x7uQc7jRvnKoFnWe6iKLOEen0MM+OLQcwkeAhMfrR0B3buKEQiiAXM8S9kUG1G4+v3COF55c9HF7DH9Gx19LE1B5nA0LRB0NIJ4VQ0EBbpPv3erRSVZbcIO9BoaRoWIGyWUjxjxgOMWGc3GLITeIykvT7qkq1mpyMkFPXAR5KvzzBSyzq97DxdGza03R8fu5n2sTDQKYfzceA2WlQsdlH8RSY3EgVN5T/pLC244j56kmm/jnwDPx5l0e6XHrCT1Kni4iBvcLvqa5rZc+zJrHWqdR+DNyjTom2ymWbtYvuyaLwOFZZhUuZBHs92T7sb3HL3Uh1mI6lxiP6rKDPWeLZ4IZc5JRcjlv17DO8mvL/soNt9Nf6iEF3mh9GamuzkfdBpxyalak5rgRJ7Nkk7Xs24DiFqfDwvAA/qCkeukiJ8Ce7qBrp/2Moqi5qHOwHjSo2l1irLxZpPBeTqB7oVRrF4anLNpEkywrud7uCBcFCZMaHMfhgwhE9V6JKaY8WSkCTW5T/kjDY8JdnXgytT3pAhQTQyHpPKqUy3tY6YeOMWcE84F8Pjv1nN2qrUxi+pc8ws99bb5w==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 12:01:48.1726
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8f18f4c-616d-4c96-fb45-08dbc33f5b1c
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
	DB8EUR05FT005.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5P192MB2243

--000000000000db90870606ba894a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

4pSCIHNjcHh0aC54eXogICAg4pSCDQrilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilIDilIDilJgNCuKUjOKUgGRuc0NhY2hlLmhvc3TilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJANCuKUgiByZXNlYXJjaC5jeW5ldC5vbmxpbmUg4pSCDQrilIIgc2xiLmN5bmV0
LmNvbSAgICAgICAgIOKUgg0K4pSCIGxpbmsuc2JzdGNrLmNvbSAgICAgICDilIINCuKUlOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUmA0K4pSM4pSAZG5zQ2FjaGUuaG9zdOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUkA0K4pSCIGFjdC5xYXNpbWZvcmNvbmdyZXNzLm9yZw0KDQoNCnRoYW5rcw0K
--000000000000db90870606ba894a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigwLDAsMCkiPjxzcGFuIGRpcj0i
bHRyIj7ilII8c3BhbiBjbGFzcz0iZ21haWwtQXBwbGUtY29udmVydGVkLXNwYWNlIj7CoDwvc3Bh
bj48YSBocmVmPSJodHRwOi8vc2NweHRoLnh5eiIgdGFyZ2V0PSJfYmxhbmsiPnNjcHh0aC54eXo8
L2E+wqDCoMKgIOKUgjxicj7ilJTilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDilIDi
lIDilIDilIDilJg8YnI+4pSM4pSAZG5zQ2FjaGUuaG9zdOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUkDxicj7ilIIgcmVzZWFyY2guY3luZXQub25saW5lIOKUgjxicj7ilII8c3BhbiBjbGFz
cz0iZ21haWwtQXBwbGUtY29udmVydGVkLXNwYWNlIj7CoDwvc3Bhbj48YSBocmVmPSJodHRwOi8v
c2xiLmN5bmV0LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNsYi5jeW5ldC5jb208L2E+wqDCoMKgwqDC
oMKgwqDCoCDilII8YnI+4pSCPHNwYW4gY2xhc3M9ImdtYWlsLUFwcGxlLWNvbnZlcnRlZC1zcGFj
ZSI+wqA8L3NwYW4+PGEgaHJlZj0iaHR0cDovL2xpbmsuc2JzdGNrLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPmxpbmsuc2JzdGNrLmNvbTwvYT7CoMKgwqDCoMKgwqAg4pSCPGJyPuKUlOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUmDxicj7ilIzilIBkbnNDYWNoZS5ob3N04pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA
4pSA4pSA4pSQPGJyPuKUgjxzcGFuIGNsYXNzPSJnbWFpbC1BcHBsZS1jb252ZXJ0ZWQtc3BhY2Ui
PsKgPC9zcGFuPjxhIGhyZWY9Imh0dHA6Ly9hY3QucWFzaW1mb3Jjb25ncmVzcy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5hY3QucWFzaW1mb3Jjb25ncmVzcy5vcmc8L2E+PC9zcGFuPjwvc3Bhbj48ZGl2
PjxzcGFuIHN0eWxlPSJjb2xvcjpyZ2IoMCwwLDApIj48c3BhbiBkaXI9Imx0ciI+PGJyPjwvc3Bh
bj48L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iY29sb3I6cmdiKDAsMCwwKSI+PHNwYW4g
ZGlyPSJsdHIiPjxicj48L3NwYW4+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4gZGlyPSJsdHIiPnRo
YW5rczwvc3Bhbj48L2Rpdj48L2Rpdj4NCg==
--000000000000db90870606ba894a--
