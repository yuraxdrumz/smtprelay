Received: from EUR05-AM6-obe.outbound.protection.outlook.com ([104.47.18.107])
        by localhost.localdomain with ESMTP;
        Wed, 04 Oct 2023 09:09:33 +0000 (UTC)
Received: from FR0P281CA0109.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a8::9) by
 VI1P192MB2163.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:1c1::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.33; Wed, 4 Oct 2023 09:09:29 +0000
Received: from VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
 (2603:10a6:d10:a8:cafe::ca) by FR0P281CA0109.outlook.office365.com
 (2603:10a6:d10:a8::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.26 via Frontend
 Transport; Wed, 4 Oct 2023 09:09:29 +0000
Authentication-Results: spf=pass (sender IP is 209.85.218.50)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.218.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.218.50; helo=mail-ej1-f50.google.com; pr=C
Received: from mail-ej1-f50.google.com (209.85.218.50) by
 VI1EUR05FT018.mail.protection.outlook.com (10.233.243.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.26 via Frontend Transport; Wed, 4 Oct 2023 09:09:29 +0000
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99de884ad25so335440366b.3
        for <eyaltest@cynetint.onmicrosoft.com>; Wed, 04 Oct 2023 02:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696410568; x=1697015368; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=G7Cgmgtmhd9E5ZxXRqGnXxMgD19WgV6Gpxc7gekKcDUafyK8+KYStKzCO+gDWgjpIe
         Jn7Fs3iu5LJDtqORoRM4qgEk234YEQ/snUeZv7QJxOBjNdDQdSBXrYYRx/8HoVqI926H
         j4Px572c7OwpQ2haFLWsUP0Rn92XNWFRdiPO3SoLZjAxrVYX9y1GUaoZNqhEHTIzWYKA
         4qTQdonzq7+CcneMBuBCNqaaVcfDSCLJ9XnjX6Dtcxk9seG/MhO4flohzgSn05M/ZvM6
         4crgHF1aKvdb9bLOz56PYRa1EpLeR13NkyGUfAxFjfA/qi9oCt6nWyhzyYQvWwR3OOH+
         5iDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696410568; x=1697015368;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=gvFC+i0uliOenabSnLyPTKZ/pNIW+fvv8/clFO18lm+8QOfurPPodBq1awDw6BfA5d
         48voj54xHIr+6miLfw/NZ+sT2mWRyq3XZuetrNs5NQeaFEW3FfsYmfvaGj06gz0SXdsq
         uh8iXWuP+8JnY3AA1VcHttvNlVpsw43h9OMivJ2gwB/fAsrFeu56kHEcA1NDnnSxb5sl
         H8Psthgh7gCCn1fZRf5sIVfyXlsr0zpDlp4VsoIw6vdLYwRySGKuo7wTue8Cn5c95dHl
         otTMgRbYMLny3ARQljC1uUd02uvYZ6EqiAcQAnZTaLFzOW1KCnT+S4b46w8pcpDtaCk9
         UxLg==
X-Gm-Message-State: AOJu0YxsQ06qK5HNANc+SekdRkhV+W8AYQ2NBmmIsQ+0kATKb4FEhsOG
        iDTExHAVpmqKEDIabJBLIHSkLgoHy3WIqUtdVoOiNJqp
X-Google-Smtp-Source: AGHT+IGv5j4rQ0fgQBm0A2L+a0ClB24lEGqN/p/+/g4oQAp0rO/VFRj0v4xexkKEqL2EmYWhRk5T2oGsTVkbqO6uDmM=
X-Received: by 2002:a17:907:78c4:b0:9a5:d16b:6631 with SMTP id
 kv4-20020a17090778c400b009a5d16b6631mr1866669ejc.70.1696410567816; Wed, 04
 Oct 2023 02:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
In-Reply-To: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
From: Eyal gr <eyal.gr@gmail.com>
Date: Wed, 4 Oct 2023 12:09:11 +0300
Message-ID: <CAE+NwjC=FHtuecJtBiqq-sUYzhBwtK22xqpGFT+-7xMVYwnMww@mail.gmail.com>
Subject: Fwd: Made to Travel: Save 15% or more on your fall getaway
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="00000000000049ba010606e05d24"
Return-Path: eyal.gr@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR05FT018:EE_|VI1P192MB2163:EE_
X-MS-Office365-Filtering-Correlation-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-AtpMessageProperties: SA|SL
x-cynet-tttt-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
        =?utf-8?B?OTZ0YXZTczluYThVNHJGcW13RFBLYWIxWHJUYkhxZGkxdW1EaXh0aVZRd0Vi?=
 =?utf-8?B?OWtwZEdFeFZrdFBYZmhobWNhSkhiUlIrc2toZ0VVVWRXWnlUTlJlZWxXWnR4?=
 =?utf-8?B?TkVHeDJ3YnB5S0JIYnR4bVVRWnhrNEFIUUw2MDF3eFFCQzl1VTFjSGhvaFVo?=
 =?utf-8?B?blFNbm0waXJyVWxzUEl0NWhpOXpIRDl6NkNNQkE1Tm1SZ3RSMlkyajRvbjNw?=
 =?utf-8?B?bDVrREh6b3hzR013cXlLY24ydW5RM1NtWnBUaXkvbm45QkpTeHM0a3d0SDhR?=
 =?utf-8?B?OVAwQW83SU45enhIb2o3K3pXbGVwZGFVcWNTS2ZSS216R2VYekpzUXZMa3BB?=
 =?utf-8?B?Ym1VZXNhRmVQYzhhWHl0Tk1RUmptczJZSURudnprRzdaRXNwd2VMUFpoL0Mz?=
 =?utf-8?B?aDBERnlKVENWMmlmZGpFTm40Rng0T0pHTENYaG85cHJTV3BucGdUbWVPWFNF?=
 =?utf-8?B?d1VHKzJYZTdISCt2OGphUFJGZFY0MWpZaHFEZEY1ajdqblFiRW13Y3RLbEho?=
 =?utf-8?B?TDF1RmVvQVpQSnZWTmsvSkpnaXRERko0N3dySThwTjJYTVluNXVQeDNucHNI?=
 =?utf-8?B?bTBWcmZoVVFBUm5EVnZualN6TjJINWw3eUtZOHB2Sk9KVjMzenE3bktPOXNu?=
 =?utf-8?B?YzlXWlkyUUpkZmRNVmRBMkEvZTJ0TCsvbStzdGo0M2dGcW5SOVN3S1RJZXBj?=
 =?utf-8?B?QkpFa3A0eVpIbFo1K0RlTWNIVXM4N2lja1FiUnNkTXJ4TC83ZXpGdlZHVm1J?=
 =?utf-8?B?c2pDcEZIU0FOYjZPR24wSzR0dXdZcDg2WGxLT1BTalV4MS9aeHk4bXhUTFN4?=
 =?utf-8?B?blVNdHB1Vlk1dm03NDllTGVIZVNhQnBvOUZLVU5TV2hkUkQxNGVMVm5SdENI?=
 =?utf-8?B?cnhySStsaFFuc2RtOHpiTjV6N3c2V3V3UVBWR2VxWVpta3ByTHlaNVF0VklI?=
 =?utf-8?B?RTdSYUxGckhoRG1ZamFvZElGV3ZpUDVYK0MzNTc3dXFpUkhtMEhTUG1IeEFz?=
 =?utf-8?B?WURYN3VCSkZZYUloeDVSOFdiZFhFWDFkZ3d6Qml0d1RUbnowNDdZS3B0aVlD?=
 =?utf-8?B?ZDM1V0w2eXFXVUQxTEFVQWJDNzEyTXVNN0JZOTNCeDA0djZ2V042a2JUT3RY?=
 =?utf-8?B?MnBWUnp1YnhhY0pPUlVXSkZyaVdCYk1XM24raEhwWjExb0lEUG5QbVVFc3J6?=
 =?utf-8?B?clVrUjhkODhSRVhVMjBaWjlGVHdmWlU3QkF5ZnZYd3FuTnpDci9GMUFTdUFk?=
 =?utf-8?B?UWlPS2pBME9wNFIzc0Y4dU0wcXh6ZC9CSlkxZkJ1elE2QlBoSXg4WkRYMjRT?=
 =?utf-8?B?MVlzVkxPL1UxNEhyd2Z4Mzc3cFVsOFdnMkcxRUwvSGpJMkk5bFBBcTViWUdw?=
 =?utf-8?B?UlRla0lpRHRIYXBVcWZoajQzbXZvSlpic3FHams0WlVCQ1NoK1c2RUc2SEFL?=
 =?utf-8?B?ZFhzRFdTbmEvTUczQTJSV2ovSXcvbkIxZjZzTjgwQlp6cE4yWlhtZUQwRlBo?=
 =?utf-8?B?Nnl0MlNyNyt4cDduRE9xbEFRUnZhQ3VlZFFqVVlhejA3Q05nZlpiVisxVHJM?=
 =?utf-8?B?YUVCRWVuanB5L3lVZzVVK1lBV01NdDFudGdMRjR4SkJPSElUQVdRYytuZDBq?=
 =?utf-8?B?dkJhMGREbGlIMGVqU3NFS1lSdFJ0L2txSzB3WEJPQjhqUmFJNXpxUWZhK3NY?=
 =?utf-8?B?M2srWDZjVGdOcFNGaWt3YS95UDZZMkRjNkpEeUdHVXR2MUxJOFcvSFVwVmFl?=
 =?utf-8?B?cXk5b2I3aW0wYXRleENqY05zTkhUTzZTNlZYKzFPZkpRRDNHZ0hzMEkyczFC?=
 =?utf-8?B?dWt4MlR2cklFQ0hkcUV2ckNSdFpZL09rN1NOUVliWWV1TFhNZUFKOVRkam0y?=
 =?utf-8?B?QW8xbnlLeUs2SnUySG40dzlQY0pBamc4NExhc1BUT05tSWJzWlJJUytRc0pC?=
 =?utf-8?B?NmQ2YlgvZUhNN1hnU3F5bFU4Y1A2NDFPa3A1RWI3S1pkVzk1aFlvWmJORmJH?=
 =?utf-8?B?Qkh2eTRMTWFkSmc5QjBoOUwvS2s4WEdmdE5Ka1ZFMVdBK05GVVN3ci8zVFc3?=
 =?utf-8?B?VzA1MVFRcENEZjlYa2RGT1JNaVZGUUROR0ZNUFdySUV0ZUM1dVVsUXRXRkE5?=
 =?utf-8?B?dXZkMGRLUTl0L083Q3laZ1VzbG8xa3h3OTZPUG5pL1dTQnVJaDFkYzkwaEhu?=
 =?utf-8?B?cnk5ck5aSHJXRVJ5alduSzViYnVZQUJTWEhRYXFGYTNIdndFaEZQdjA4THJx?=
 =?utf-8?Q?0axWD/cBsnfjOZ6zIECgam5TaOetAK8n5HwBR2E1B4=3D?=
X-Forefront-Antispam-Report:
        CIP:209.85.218.50;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail-ej1-f50.google.com;PTR:mail-ej1-f50.google.com;CAT:NONE;SFS:(13230031)(4636009)(451199024)(1690799017)(166002)(7596003)(7636003)(8676002)(6666004)(26005)(1096003)(5660300002)(86362001)(19627405001)(76482006)(356005)(55446002)(42186006)(6916009)(66899024)(82202003)(53546011)(73392003)(336012)(83380400001)(76236004)(33964004);DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
        QL94Qce55NQJ4CZM7/HPmHH3GrXuq/fXeTKfWFe8IHB0bJRcO39kiHyGPli+022ejoM1V8XjQDAbNriyymjp325+RWracyceTjg3VvKAsyI7mSAhfltItPOrDv0K5GmzQD4+/rUQRxgs2hWUcthlsvVf87Q/x3Dex71I3pGBdLv+qme0YJopCfMP4joXde9qOh0jaKAaF3uVBpc0o0HDaL04XVncL8NnLBqbTbiDkMXu5SDP6NaDGqUWopLt3gNPTd0CgSPfWK0pbP5XIt+AmheNFSaRHQTfq6og4m9Nf25yhWV5Z7dw2xh2qLqIvM1G18/YDvGm0HH4iBU6eOudDcPYOnMvUBo08w0zwp7ym66XoslQs6ymbufZRQyAEpArPQJcT/R3sJ3r08Af3UIACkNvc/RWJJiimeFeGS6KI0/SNrRtXvbMZokUBUVcNwtJDsca5Per0+RQcOlkulvlw5MrS/Hmt0E7H3LJKUZC+foupYBttH1qJwVe1BCcHjXTbfDRJwRN2yX75JK46zkN8xuLc4IgJAzrH9cTBV76rHt2rGPXRqpALKobwmXGs3cwRu8CYPLvMh5YF2R+YMDP96e/ZgkGU7r9VBKSw+B20A9f3k+3k9SpgrN1lIgIb4CnPbaYef4D3KofbYZFpvmH4+T2inC33QBKEL3dPiwEMgDzx7At9AuuqhjRNmq6CnDBm9Fk8+sjWomL0ibjgNLesq4gNoRrtRWlFtALfCb8G3Pj1UlM1M7WmET5xBXA6H5wJJunh066AAxaY87RkFsu2Q==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 09:09:29.1948
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
        VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB2163

--00000000000049ba010606e05d24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


---------- Forwarded message ---------
From: localhost:1333?u=3DNDdlNDk4ZjQ0MDRlYzc0NDQyM2JlY2VhMTFiNjg0ODc5YTcxMW=
QwMDVmMTZmOGI5MjQ1OTYwZWM3YTA2M2RmYzYwZTAyZmFiMzc2YzBi <mail@eg.expedia.com=
>
Date: Wed, 4 Oct 2023 at 2:59
Subject: Made to Travel: Save 15% or more on your fall getaway
To: <eyal.gr@gmail.com>


Members always get our best prices
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=
=8C =E2=80=8C
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C

[image: Expedia]
<localhost:1333?u=3DODYzMDkxZmQ0NmMzNzE5NjRiNThmOGI0NGNjNzcxNzg4NGEzOTFmNWE=
wMzUzOTMwZTlmNmVhMmU5ZTY4MmRjNTU5NzNiZTZkOTdkYWRmY2M4NmZhMGFlMzNjODRlMDNmZW=
M3NGJiYjAwYjY0NjIwYzZiODkxMzZlNGEzMjAzODFjNDkwMGFlNDM5Njg4NmJkYWE3NGFmYmU3N=
DkwYWZmYTYzYjIwYjE0NWFjZThkYzU0Y2MzMTgwYTg4NDQ0YzI1YzIxYWRmN2RjYTViNWY5Y2Rh=
ZTgxOGE4M2Y0OWQyZGMxYzJlOGM1YWI4ZWIzMDNlZTFkODExMDQ1NDZiYjJiNmM4NTI3OGEwNjc=
5NTU4MmIwYjI1OTJkYzQ2NjU1MTAxYmE3YjdmM2M4MTNjNDdhOWJiMTQwOGZlNmE3MjM2ZGM5OD=
NjNDAwY2MzMzc2ZWEzZjNhNzdmMWM3NDcyZWU5NTVmZjRjMTk5OWEyZTA4OTdjYmZlOTQ3MzA4>

* The Travel Edit
<localhost:1333?u=3DNTNmZTI4YjU0YWVmOWMyZjgzN2VkZjU2Yzk2ZWI5YzhhNzZlZjY4NTc=
zYmQxMjgzZTExNTczODlmZWFjNGE4MTcxNDU4ZDlkM2I3ZWJlZDUxZDY3MDVhZjJiMzQwNDI0Mz=
ViNTBjNDczZDJkOGI4NWM4ODk0YjY5MDdlYmI3OTcwNGU5ZjIyM2YyZjQxZDI0N2ViYzAzMzc5N=
2VlZDUxNDU4YzhhMzE4YzY1MWM3NmMzNGY1MTM0NzE1N2E0MWMxN2M5MjVkMjk4YjE0NzQ0ZDBj=
NjgxNDMyNGQ1MjFmMjM0ZTQxMjAwMmY5ZGUzZmI0NTg5ZTk4ZTdlYWQ1NmRkMjViODkyOWIyMDA=
5YWZlMTNiOWJkMDE0ZmUxOTVlMWU4OGVjYjE3ZDAwMTg1ZjRmNGU5ZmJkMzYwOGZmMDJmNTJjNj=
YyY2EwOGZmMzU0MmVmZDAzYTBhOGI0NjQwZDE4ZjcyOWMwYWUxY2FiMmE0Y2I3M2FiZmVhNmNl>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOGRiZmM5ZWE4ZGU0YmEzZjBlMjQ2NTI0YzgxMDgzZTQwY2NiZDVkZWF=
mNTdlOGRhYTBkZjg0NzE1ZDkzNTViNzRmYzkyNzBjOWE2YjJkNGI4OTI4OTRiMTlhNGM2NmQwYT=
BhNDdlNDhlM2EzMjU4YzY5MDI3Yjc3ZDUwZmYzNjVmN2ZlMmJhZjhiMzA4MGMyNDZjOGEzMTUyN=
DhiMzU4M2U0MjlkZjJmOTU3ZDU2OGRlNzc5OTVhNWFjN2YyYzZhMmQ1NjA5MDc5NjMxMjAyZTkw=
OWNiNDNiMWY3OTYwZGY2YTFmMmFjNGI5ZTAxMjQzYTc1ZTI1Mjk2MzQwNmZmYzA4OTQzYzZmYzF=
iMDk3ZWI2MWNlYjYzNDIyNDdkNjQ3MjcyNjE1ZGNmMDI0MzVjMDczNTkyYTY3MWQzMmM0YzlkND=
U3NzJlNzRjNmQ4MjFiMjUxY2Y4NzE1YjViZTI5ZjU2OWJiNDAyYmZkYzc2NTE0ZjQ5NDc5ZjYy>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMmU1OWUwMzUyNmE5MjVkOGZhMWFlMzZkNjEyYzI3ODcwYzY5ZWRiZDV=
hNWZjZWQ0ZTJlZWMxNDA4ODcxNGI4YzU3NDcwMDM5MTZjYmNmZmZkY2RiNTY3N2ExNzk3NTA1Yz=
EwZDA3NDg2NzQ1OTIwZDVhNDA3Zjk4YjA5YzlhMDUwZjJjMjg2NTBhZDhlNmE2NWRhYWY3YzA4O=
WIwMjBjODM1NjU2OTE2ZGQ2NGZiZmVjYjBmMmExN2U0NzAyMzk1MDJhNTA0MDczOGE4ODczYWIz=
MDU1ZTE5ODNkNDg2MDViOTA4NTNlZmQwYTcyNzEwMWJjNDg0N2I1MjU1NjY2NWRkZmNhNGM3MDh=
mOTA4M2I1OWVlMTQxMjAxOWFhYjU3YTE2MDk2ODJhYTJmMTViMTRmNDMyYjg0ZDYwOWZjODY2MT=
g1NzkwNTYxMjdkODVhNjcyODZhZWE4OWIyY2NiMzFmODY5ZDlhZmI0Nzc1NTEwYjhiZjExZDc2>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMDE0NWJjYmMyOGJkOWYzM2RjZjZlZDc5NGIwYjk2N2FhYjI5ZjcwMGJ=
iY2FjMmFlZTExNzg1OGFjNDBjZDQ5NDBlZjIxM2M5YjEwYTk1MzI5YzU3ZTdiOGVmNDNiN2JhMz=
gyYzZiMjkxYjhlNDFhMWY5Mjc3YmMzOTI2YWI5NmU3NWFkMjlmY2UzYWUyYjY0MDc1MDQ2YTdmN=
GE2MGY1MGQyZTk3OTU3MWMyZDQ0YjM1OTc3YWUxMTA5OGNiOWQ0NTNmYjI5Mzc1ZjY2ODU3OTE5=
MTNmNDlmZDM3Zjc1MTM1Mzk3MmEwZDQ0ZmNiNDRiMGU4NTFlMmRiYTg1N2Q5YzlhMjI2YmEzNWU=
wNjI5ODcyMTYyM2ZkMTZmN2YzODY3YWI1Zjc3ZjMyNDQ2ZWNkZjE5MWZmZTg3NGE0NjljMDEyYj=
YyMTVkNDI3NjBkNDQ4MjBkZGUxNDM4ZWI4ZGQ0YzY3Nzc3ZGMwOGFhM2FlNTU4NjViMjc3MGM2>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DY2MyYzZjODM0ZWMxZmU1ZDc3MjI2NjlhMzQ3OWIzNWYxNDNjNjRkYTE=
zZGQ4OGY4ZmY0NjQxMjJmMjMxZDFjMWYxNTc2M2JmNjVhYjJmMDgwMWRlNTA2MTljN2MxYjZiNz=
I5NWY5ZTM3NDQ2MmY3OWU4MzcwMThkNTUwNDViNzM1OWQxNDYyZDQ5Y2RjYjFjZTdmMmUwNmUyZ=
DZmNWZkZDc4YjkzODFjZWUyZmRlNTI5NzQyZDVhNzhiY2YzM2Q2MWIyYTBmMGU1ZTFlMWM5YzVi=
YTFjMDhhMWY3ZDVjYjNkODA5MWY3ZDZmMjVmYzJmMmM1N2E1N2I2M2JmNjg1OTZmYTUxZDA5ZmN=
mZDQyODI0OWI0ODQzNzVmNjI4YjFiN2M0MzJjMTFhNjQ4ZGMwYjc1YjVlY2Q2OWYzYmNmNDMwOD=
MwNTZhODMxMGQyNTUyNzIxYjhiYzY0NjJlYWM3ZmQwZjhjZGM5NDIxMGMwMzZhOWYzODgzMGMy>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNWU3MzNiNzlmMzAwODRlZjA5OWU0ZjQ1MzUyYzk2YjUyZGE2OWUxMDJ=
kMTEzOGI2YmI4NTMzNWNlOGJiZjAwMzA2NzYzOGZlNzFkOGRkODM3ZWVlZjJmYTEzOTI5M2NiNz=
RhNjRjODYyMTJkNjdkMjA3ZGE5M2I0NDY0YzE0NGRkNzVmN2FiM2E4YmM1ZWU1M2U4Y2UxMmJhZ=
Dc1NjRkMWQzMTk3NWUyZjIwYTdlMzgzNjUxNDczYjJiNjYwNzZiZDJiMzBmY2ViODJmMTA3NzM5=
YTlkNTVhZjdmZTJkM2UxN2NjMTE2YTE0MjlhMTY5ODg1YThiNzBkZDkxMzgwOGNkZWExM2U5Nzk=
0NzMzNTcwYTQ3YjQ2NzQwM2Q3YzU3MTgyZjU5YzZlZDk4MGRiZWQ0MGI2OGY2YmE1MjFiMmQwYm=
M1YzFiNmVjNjY4MWViZTUzMjQ4MjMzZWQ3MWM1ZjA0YjFiZmRlNWI4NzAyMGFkMDgzMjNhNWUz>

West Maui reopens for travel on Oct 8

Hawai=CA=BBi Governor Green has announced that beautiful K=C4=81=E2=80=98an=
apali, N=C4=81pili,
Honok=C5=8Dwai, and Kapalua will fully reopen for travel on Oct 8. Plan a v=
isit
to this special place, support the island's businesses, and make a new
memory.

Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s
residents.

Explore Hawaii Hotels
<localhost:1333?u=3DMzcyMGZiNjhkZjY4ODVhMmVhYWEzMDFhNzE2OGRmNzFhMmFiNzc0NWY=
4ZTY3NmFhODdjOWEyNmNjMDQ4MDAzZjY4MTMxMDhjNDhmZTI1Mjg4ZGRjMmFiODdmNDZiMzZjZj=
k4OGI5OWFhYzVkMTA1YjJjMWZjOWE2NzdkYjY3M2YxZTFlMjYyMjMyMWM3OWEwNTdjN2I0NDJiN=
jdmNTk5YmMxMGY0MzZhZDNjYWIzNDUxMjg0OGE5ODhiNWIzMmI0ZDNmNDcxMTEzMzlkZjU3OTYy=
YzdmZWM3ZDgyNTI2MzdkNDE1ZGRkMDUzNGVjZmI5ZTU1ZjhhOWUyOGUxNzNjYzRlYTI4YjIyOGQ=
xODQxZmIyN2U1NzU1YTE0YjIxYTg0MWE2ODVlNDI0NDYyMmE2Y2JiYzEzYmQ4M2IxY2I5NDdhMG=
VlNjhiMmEwNDgyYjI1N2RiYTMyZmNkZDg0YzY0ZjVmYjEzOTZkY2Y4ZmUyYjkwZjcxYmI2NmVhY=
2FmNQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DZmE1ZWQ3M2ExMjU0MTVmOTdiYjUyOWQ2OTUwODQ0YjljZjU0Zjc1MDE=
5OWZhNjkyN2U5NzMzODAyZGQ2OTg2N2FlMjk5ODA0OGU2MmMzNjUxZGVlMTcyZjM5ZmM1NzBhMj=
UwZDc4ZjQyNTJmZGRiZjNkNmM3ODM4NjExMDUwMjZlMTdmMTI4YWIyZjNlMjM1ODk4MDg1NmM5M=
DliMTljOTk3ZTlkZDU0NTAyMTQ3ZmJlMzM5MTg0OTdjZTc3M2Y1ZmNiOWU4NzA3OWViMzk1NGJh=
ZTUyYjM3OTVmZWEwNWNiYjNiNWZkYTg0ZDlhOTI0ZTJkOGQ3M2NmNDA3MDM5NWE3YTZkYjdhNGQ=
xZTM5MWYyYTNiOTZhMzE1YWVjMzdhMGZhMmI2Y2FmYzliMDM3YTEyYzc1MmI1NWU4MDI0ODQ2MD=
lhNDcyMTgyOTE3OWU1OTNmYjUxODNiZjRjNjM5NzFjZDI5NzZkNjBmYTY0MmUxZjkxOTM1ZjZi>
  [image: Google Play]
<localhost:1333?u=3DNjQzMTA3NTk4Y2E2NmVlOTAwNzA2MTYwNjhhYmJhYjhjZDEyMGY0OGQ=
3ODIyYzllY2Y3ZjY3YmUwYWRhYWRjNGY4ZDBjZTZhOGE2MzYzMzBjM2I3ZWM1YTU4NjFjMWUyMz=
RhNjRjNjk3ZWQzOTdlMTg0MzM2MTM2ZjUyZjUwYmJiZjdkODY5MTUxODU1OTkwYjgxZmE0OWI4O=
WEyZTMwMWIzNWZlYjVhYmJjMWVjYmM1ZjU4OTkyM2UzODVlMjZkZTliYWJiNmY1OWEwNjYzZDg3=
NDJkNjMwZDQyNWE2NTBhMDBkNmE2MTNlODM4N2I5ODQxZGEwYzY1MjQ4OTFlZmI5OGNjYjBkMDk=
yN2EzNWQxNzcwY2Q2M2QzODljMDk1ODE1MDExOGE5Zjc2MDAzZWMxMzg3ZDMxNTRjYjQ4NmU2OG=
NkODBjZTdjMjdkYWY3N2QyYzA3NDg2ZTNjZWY4N2FiYTFiNzAxYWQwNDdhOGNmYmVlZWJmZDBh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZWVlNjc3NGE3MmI1ZDhmMThmZGJlMjBjZWY1OTYwZTM3MjQ2YzZhOGM=
xZTFhNzZiM2U5NDUyMDgxMzkwMjg0OTE5YzE2YTVkZWUzODNmOWI3YTg1MDBlMmU1YjZiNGNjYT=
M2OTc2ZTI4MjcxNjNlYzZlZWM2M2FiMzU3OGQ3OWU3YjRiMjBiYzVmMWE3NWU5NDA4OTBjMzIyO=
TkwNTk4MjA1ZDU4YzFhYzg3YmRmZmM0MTFlYjAzNzc1ZDZmZWEzNTRlOWZlZGViMmNhMWYyOWJh=
ZjhiZDQwNjFkZDFlNjRkYjIwZjg3Y2MyYzk4MGM2MTg0OGZlOGE5YjZjMzY2Y2M0Y2Q0ZTViYjE=
5NjAyNGIzMmQ3MjdiMzFiYmZmMTY1OWQ3NTE2OTY4MzFjY2Q4YjJlNTRhMDUzYjVlMDRhYmZmYW=
UwODg0NWNiYjJiZmVhNzJlZjI3MjFhODgxMTg3Y2EwZGFiN2IyYTBiNjcwZDk0NDc4YTMzM2FkN=
DZhZQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMzM2ZjI0ZTViZTNiMGRiODM0ZWM5ZDg2OWYwYmY0M2EwMTY4NTUxOWV=
mMjBlZTYzMTU4MzIzYTdjMDAzZDVkZWMwYjVjZTQyOTkzY2JkZTVhMzBmOGVlZTRiOGYzNzRmMz=
Q0YTgzNGQzMWM4YzFiNDU1YjNjZTU0OGEyNzdlNWE0MjdiOWVlMTdlZTE3MDM0YmM2MzJkN2IxM=
TYzODY1ZmRhZWZhZjExOWJiNDAzMzA5YTg1ZjAzMGY2MDIxZTY4YmRmZTc0NWViMTgxMGIwZTMw=
ZWI2MDg2OTMwYWYyN2E2M2NlY2FmZWRiMzczNTE1YTAyMGE4ZjI1ZWQ5MzUzMGM4N2ZhZTQzMGE=
0Mjk4M2E4MmJkZjlmZTQzNDc5ZWNjYmJhOTc1MTRmMTA4ZTI0MTRmODNhZTJjMDNlMWY2ZTJlZT=
NmODI3MWIyYTY0Njk2YjAxMGViM2FhYzg3Zjc4NWIzZDg4MWM1OTE5MDNmMTY5MmMzZjk5NTZmN=
zU1MQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYjllN2ZmNTlmNTc0ZGMwYzk1ZDJkNTdiYWUxZjFiNzMyYmU0YzIwNjE=
wNzA2MzM0NzVjOWZkNmYyNDQ1ZjVjNzE0YjUyN2Q4MzU2ZTY1NzY5Y2FhMDA1OGMxZTAwYTU4NT=
cwMjllYzcwNTBkNDBjZmFkNGIwM2EwYTlkYjZkYzg4NGIyYzQwMzE4ZTI4MTc1MTM5ZTY3ZjM1M=
zBhNWU5ZmQ2Mzg2NDRlNmYxYTk5MzEzMjFhMzUzMjMzNjRiNjE3MzZmZGE2ODZjZGIzNzhiZGFj=
YzgyOGM5Zjg1YTk2MWExZjZiMzZhMGZjMmE2MWM3ZjUwMTk1ZTJmMDk3ZjQ4YTQ0MmFlYWVkYmF=
lMGVmY2RkNDY4ZWJjMDZhZDRlOWM1NjZiMDZhNGY3YjRmNWI0ZjlkMDU3NjUzZTJmMzJlMWE1ZT=
YwNGNiYjA0NWI0MTAwNjlkOTdkMWFmZDQ5YTY3NWY5M2JjY2M2ZjRkMWIzYWVmOTI2ZDM1NGYzZ=
GJmNQ=3D=3D>
   About Us
<localhost:1333?u=3DZjAwOTVmYmVmZjU2ODdhZDExYjllNjhlMDAyYTM1Mzg4MjEwN2U5NTl=
jYTJhODBkYzAzNjYxMzliZDYyMTk4ZTEyNmVkOGRjNTYzYzI3ZDE3YmYxYTRiMDkzYmFlZGFkYW=
Q5ZmM3YTE3ZGJlMDA1MmFiMDU0MmQ5NmFmZmE1OTQzMzIwN2M0OWM4Mjg5ZjQwZmRhZTRmNGUzY=
jk5YmY2NWRlNzE4MTZiYjEzMjBkZjRkN2M4ODUwNzhjMzc4M2EwOGEwN2U5NjRhNjVjN2FiNTM3=
NjEyMTUzMjE2M2E3N2RhYmQzZDA2Y2MzNGU3OWE3MTVjNmE2ZGZlZmYyYTc4ZTY2NjAwYjFiNGQ=
xOGIxZGRkNzZmZjQ4ODkzNjc3OWE0OTJjNTY1MmYwMzczYjRjNmU5MDczYzk1OTE2YjhjZThiMT=
Y0MTZiMzliNGI5NjMxZDg2N2UzZDFmMzE2YjFmOTUwZmRlMTQ5N2JlZmY4OTM2ZTA5YjY0NjJjO=
TRmMQ=3D=3D>
   Customer Service
<localhost:1333?u=3DMmVkNWEzMTY3YjgxMWFjODk2YTEyMmJiZmM0MDhmYmM3NmI3YzA3YTQ=
0NTg3ZTI1NmQ1M2EwY2Q5NmIyNWRhMTQ3MmQzOWM1MGY3ZTU5YmVhOWE2MDJmOTljMGJhZGE3ZW=
U4NjE2NGVmODVmNWM0NTJiNzM0Y2M3YTBlNTUyY2QxMjkyNTA2Y2MyYjMwODdjMWFlYmUyMzYzN=
jgwYWZkYWM1Y2U4YjcyYTkzZmRhYTM2MmI1YzkzZjc0MjI4YTU3MGM4M2Q2NjUyMmY0ZTljMDlh=
ZWVhMTUzOWQxYjRjMDIyNzdlYjhkNjQzOWFkNmM0Y2U0NjkyZWJjMmM3MmU5YTg3MWJmNDU0MmZ=
hYjczNTIyMzU3NGJhZTE0MTZiMDI4ZjdkMjViYjUwYmY0M2I0OWE2OTJhMWUyYmU1Nzc4OGZjZD=
NjYTJlOTg4ZGU0YTUwMzI5YmE3NzE4MDRiNTFhMzExNGMzOTM4Y2Q1MzdjYjg3YTQ3OWE5NmQ1N=
jY5Zg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMDNhMmE4Y2IyMTdiYTMzOWQxMDAwMDdjZjY0YWJkNmJiNmFkMWQ4ODl=
kZWQ2NjI1MGI0ZjU5ZWY0MTIxY2RhYjAwNDYyODIzMWY0ZWEyODYxMjMzNDFkY2NhNGZkNGNkYm=
Q0ZmMwNjU3ZGQyNjc1MDZmZjM3MjRmZmZkNWZiNGI1NzAwYmY2NTc5MTMwZDJiZWEzZWIyNTY2M=
2Q0NzZmOGE1OTI3ODA3MjA3NDYzZjBlMWJjOGMyOWJhNGM4Y2ZmMjA4N2M5YWI5MGQ5YTFmNjcy=
ZjZkZDgyNWIxNGYyNzc4OWFkNzFiOTE0NDc0OTllMzg4MmZhYTY1NmQzOTQ=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMDNiNGRhZWRhZjJkMWNiMTQzN2JiMWYzMTg2ZGEyNGIyNDUxYTQ4YTc=
xOWEwMmI2YTc5ZWZiZDUyMDA3Mzc0NWQ0NTZmYzZlN2U1NTFkYTNiYzU4NzkxOTExM2M1OTlkOG=
Y2MzQ4YjEyNmY3ZGU5Nzg3MTk3Njg3OWM4MTllZDljOTZiYWVhZTk5ODk3NDg1OTE2MjczNTk4Z=
mVmNzQ2MmE5MDRkZTk4NWIyZDkzN2FlMWViMDYwOTIzOTk1MjMzODI4MmEzMTkzMzMwN2Q0Yjkx=
MWI4NGMxZDY2ODNjM2JkMTM3MDJmZmQ0MWNjOWJkOTRlOWFjZmU3NTgyNjg4OTZhMWY5ZmVlMjE=
1ODllYjFiMDdmM2IwNTk1ZWQ1Yzg1YWY5YmY3YWUwMjdkNzBlMTg2NDE2MTMxMTJlZTFiY2IyYz=
lkZDkxYmE2YjUwNmQ1N2EzODVmNjljYTk5ZmEzZGJhMWZmZWE1ZGEwNDg1ZGEwMmUzYjJlNWE2O=
GFlNGUzNTc3NDIzMjM1ZDIxNTFlZjJhMDA4YzAyYjYxYWNjY2QzMWNjZTU1YzBlZTU3NWQ4ODQ0=
NmYwMzU=3D>

EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&EMLDTL=3DDATE2023=
1003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX


--00000000000049ba010606e05d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br/></div><div><br/><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br/>From: <strong cl=
ass=3D"gmail_sendername" dir=3D"auto">Expedia.com</strong> <span dir=3D"aut=
o">&lt;<a href=3D"mailto:mail@eg.expedia.com">mail@eg.expedia.com</a>&gt;</=
span><br/>Date: Wed, 4 Oct 2023 at 2:59<br/>Subject: Made to Travel: Save 1=
5% or more on your fall getaway<br/>To:  &lt;<a href=3D"mailto:eyal.gr@gmai=
l.com">eyal.gr@gmail.com</a>&gt;<br/></div><br/><br/>

<u></u>


 =20





 =20
 =20



   =20







 =20

 =20

 =20






  =20
   =20
    =20
    =20
    =20

   =20
    =20
     =20
 =20


 =20


 =20

 =20





<div id=3D"m_1202337279934882522body" style=3D"margin:0px;padding:0px;backg=
round-color:rgb(243,243,245)">
<div style=3D"font-size:1px;display:none!important">Members always get our =
best prices</div>
   <div style=3D"font-size:0px;line-height:0;overflow:hidden"><img src=3D"h=
ttps://click.eg.expedia.com/open.aspx?ffcb10-fefa1d7374640c-fe2415707c630d7=
f741d75-fe3211727364047c721775-ffc71c-fe3015727166037c721271-fefc1d72756000=
&amp;d=3D120017&amp;bmt=3D0" width=3D"1" height=3D"1" alt=3D""/><u></u></di=
v>
 =20
      <div style=3D"display:none;font-size:0px;line-height:0px;max-height:0=
px;max-width:0px;width:0px;opacity:0;overflow:hidden;color:transparent"></d=
iv>
     =20
<div>
 =20
</div>
<div>
 =20
</div>
<div>
 =20
 =20
 =20
 =20
</div>
<div>
 =20
</div>
 =20
     =20
<div style=3D"display:none;font-family:sans-serif;max-height:0px;overflow:h=
idden">=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C
 =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C</div>
 =20

=20

   <div role=3D"article" lang=3D"en" style=3D"font-family:Helvetica,Arial,s=
ans-serif;padding:0px;margin:0px" dir=3D"ltr">
   <table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"width:100%;font-family:Helvetica,Arial,sans-s=
erif;background-color:rgb(243,243,245)" dir=3D"ltr"><tbody style=3D"font-fa=
mily:Helvetica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,s=
ans-serif"><td width=3D"100%" valign=3D"top" align=3D"center" style=3D"font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,245)">
   <table role=3D"presentation" class=3D"m_1202337279934882522w100pc" width=
=3D"600" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"font-fam=
ily:Helvetica,Arial,sans-serif"><tbody style=3D"font-family:Helvetica,Arial=
,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=
=3D"100%" valign=3D"top" style=3D"font-family:Helvetica,Arial,sans-serif;ba=
ckground-color:rgb(255,255,255)">
     =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
  <table role=3D"presentation" width=3D"600" class=3D"m_1202337279934882522=
w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center" s=
tyle=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,255=
,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D=
"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"width:=
100%;text-align:left;font-family:Helvetica,Arial,sans-serif">
   =20
     =20
      <p style=3D"margin:36px 32px;text-align:left;font-size:16px;font-fami=
ly:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522gutter-margin =
m_1202337279934882522text-align-left">
        <a style=3D"text-decoration:none;vertical-align:middle;font-family:=
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DMzZmNDAyODI1NjUxNGM5=
NDk0MDQ5NGFlY2UzZGVlMTNkMzgyN2Y3ZTljNzU1YTVmYzQ1NjFiNGVhMTRhMDkwMThiNmU1NTE=
3NDIxNGFiYzg0MjA5NjEzOGRmNjFiZjVhNWNmOThhZTk3ZjFkNmMyNjc1MjM5YmY4MTA0MGQ4YT=
c5OThkYWMyOTA2MGVjNTM1N2NlMWRlM2ZlZjg2ZjBkMzM0NWI4MWY1YjYyMDYzY2Q1ZTdmYmJmM=
DllNWM2MTBhMTI3YmJiOGIyYTczN2Y5ZDNkNGVjZjRlMmZkY2MzNzBhNmNjZjVmNDEzYWI5MjFj=
NzUwNDQ4ZWVlMTg4ZTU2ZmNkYjIxNWFhNDkyNDI2MGE1ZDdlM2YxODNkODZjZDMwZDVjNjI3M2M=
wNDhlOTVmYjliY2JjMTI3MjVjMDA1NjI2NmE4YWEyOGUxNzFjODgwNjEyZTJkODQ1NjM5ZDMzZD=
djZTRmNTRkNGMyYzIzN2ZhYWQxMjU2ZjRh" target=3D"_blank">
          <img src=3D"https://image.eg.expedia.com/lib/fe3211727364047c7217=
75/m/1/expedia_logo_product_dark+blue.png" alt=3D"Expedia" width=3D"150" he=
ight=3D"auto" style=3D"font-family: sans-serif; border: 0px; height: auto; =
line-height: 100%; outline: none; text-decoration: none; display: inline-bl=
ock;"/>
        </a>
      </p>
  =20
  </td></tr></tbody></table>
</td></tr></tbody></table>


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
    <table role=3D"presentation" width=3D"600" class=3D"m_12023372799348825=
22w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center"=
 style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,2=
55,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"wid=
th:100%;border-bottom-width:1px;border-bottom-style:solid;line-height:1px;f=
ont-family:Helvetica,Arial,sans-serif;border-bottom-color:rgb(223,224,228)"=
></td></tr>
  <tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=3D"100%" h=
eight=3D"16" style=3D"font-family:Helvetica,Arial,sans-serif"></td></tr></t=
body></table>
  </td></tr></tbody></table>



     =20
       =20
     =20
     =20
     =20
      =20



<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                            =20
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:16px;line-height:20px;margin:16px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:500!important;color:rgb(25,=
30,59)">
                                  <b style=3D"font-family:Helvetica,Arial,s=
ans-serif"> <a class=3D"m_1202337279934882522h-dark" href=3D"localhost:1333=
?u=3DMWY2NmJlZWNkZDViMTFmNGVmYzE3NWU0MTA3NDkyNTZlODU4ZmU5ODJiMmViN2M5NWE3YT=
Y3OTZhYjc2Zjg1ODAxNzg3ODYyZTk5MzYwNDlmMDhlODM4MWUxZTU4YzgzODg4ZWRkMTY5NGMwM=
2UzNmQ1OTU1M2YyODIyOTk1NDY3NGNjMjVkMzQ5OWVlMTAwNjgzMmZmOTQ1MTczNjY2ZWI3ODc3=
ZmJiZjU0ZDY0Mjk5M2NhNzc5N2I1MjA3NzlmMGY2NDIxZjY2YmQ4OWQ3OWIyNmMxNDk2NGFkMzR=
hMmFjMDNjMDk0NDRhYWIzZjg0MDE0MjhhMTFjOGUxMzNjYmQyZDFmNDFkZDk1MzE3NTM3NjFiZT=
hhNzNmMGMxZTk3YmI5MDhkMmZjMmRkNDBlMWY4ZTQzODY5MDA3ODViNGM3YmEzMjhjNjA3ZTJhZ=
jc2MWYwZTJkOGExMmZiZjM0MmRiYThkMTk5NWY3OTAyN2RjOGQyNWE5N2Fj" style=3D"text-=
decoration:none;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)"=
 target=3D"_blank">The Travel Edit</a></b>
                                </p>
                               =20
                              </td>
                             =20
                            </tr>
                          </tbody></table>
     =20
<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
      <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif">
        <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"p=
resentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif=
;background-color:transparent">
          <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
            <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif=
">
              <table cellspacing=3D"0" cellpadding=3D"0" role=3D"presentati=
on" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                  <td style=3D"font-family:Helvetica,Arial,sans-serif">
                    <table cellspacing=3D"0" cellpadding=3D"0" role=3D"pres=
entation" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                      <tbody style=3D"font-family:Helvetica,Arial,sans-seri=
f"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                        <td valign=3D"top" class=3D"m_1202337279934882522re=
sponsive-td" style=3D"width:100%;padding-bottom:0px;font-family:Helvetica,A=
rial,sans-serif">
 =20
                         =20
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">

                                                                =20
                                =20
                                <p style=3D"margin:0px 0px 16px;text-align:=
center;font-family:Helvetica,Arial,sans-serif" class=3D"m_12023372799348825=
22nomob">
                                    <a href=3D"localhost:1333?u=3DODllYzhlM=
jI1ZDJjYmZkNWIyODQ1NGU4NzY5OGFmOGRhYTkyMGZiZDFhYmZlZjYzNjYzMTY2NmUzYjA1ODlm=
MDkwMGMxM2Y3M2EyOTE0ODMxNjJlNmI0MjNlMWZhMGJmMmJhMWJiMTYyMWZjMGE0YTNlYzNhZDk=
wZjQ4NGFlZTFjZDU4MGZlYjg3ZGU3NzBiYWZmNmU2YTYyOThkZDY3NzYzZTg1YjAwOWJlMWI1Mm=
VhOTU4MTQwMjJiZDUwZDNjOTAxMjFjMzk4Y2JkOGM2ZTA2MDU2ZjJhYzMzODczMjUwZGQ5ZDVlY=
TZiMDJlY2QyZWMzOTg2NDg2NDYzNTVjNjU4OTdlYWZlMDI2NTQ4N2Y2MTcxNTg5NGYxZWU2NzQ1=
MTY2MzY5ZjNkMmJhOWNiYzMzYWM2NDc4YmViMDE3MDMzNDQ0NzMzZGMzZmM2ODhlMTgzYTc0ZjM=
wMzc0YWZmZDA2ODI4ODViYWRiOTM1NmI2YWQ4ZGRlMjFm" target=3D"_blank" style=3D"f=
ont-family:Helvetica,Arial,sans-serif">
                                      <img width=3D"600" style=3D"display: =
inline-block; width: 100%; max-width: 600px; height: auto; font-family: Hel=
vetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/travel-asset=
s-manager/cread-2248/US-eMail-UMP-D-600x338.jpg" alt=3D"Plan your fall geta=
way and save with Member Prices."/>
                                    </a>
                                  </p>
                                 =20
                                  <div style=3D"width:0px;overflow:hidden;f=
loat:left;display:none;height:0px;font-family:Helvetica,Arial,sans-serif" c=
lass=3D"m_1202337279934882522showmob">
                                    <p style=3D"margin:16px 0px;text-align:=
center;font-family:Helvetica,Arial,sans-serif">
                                      <a href=3D"localhost:1333?u=3DOWIzZTg=
xYjlhZjYzNmRjYzM2YmUzMjVhMTE5OTc4NWMyZGE3ZDcwMGFhNTdiNDYxNWM4MzJiMGVhNDRmYT=
IxYTQxNDAzZjUzZmViMWEwMGI1ZDIyYTczMTkxNzY0MWI0YTYxZWY0YzMyNjQwYThkZWZjNzUwO=
DU4NmM4YTI4N2NlZDY1Y2I4ZTI3YWY4YTk2MGIyMWFiNTJiYjQ0OWY0NWU4MzI5YzkzNmEyN2E0=
YzU4MDk2Nzk1N2YxNmQ3OGJmMWM3MWFlZTNkZjIzM2RmMGIyZjk2NzQzYjc1NTZiMGU4MGFhYzE=
xZDAyMDJjYzMyYjRhNTg5MWI1Yzc5ODkyYzg3MzdmNDE2NDgwZTkxNTg1ZGU5MWE2NjQ3NjE4Yj=
FmMDZkZjEzODg2ODA5N2E4YTQzN2Y3YWM0NzQ0NzEwNmQ4MjNjZjA0N2Y3NDI5YmYwNzhhOGY5Y=
zI1NTJmYTMwMDc0YzY0YmQ0NDY2MGY3M2EwOTk5YzRkODUw" target=3D"_blank" style=3D=
"font-family:Helvetica,Arial,sans-serif">
                                        <img width=3D"375" alt=3D"Plan your=
 fall getaway and save with Member Prices." style=3D"display: block; font-f=
amily: Helvetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/tr=
avel-assets-manager/cread-2248/US-eMail-UMP-M-375x375.jpg" class=3D"m_12023=
37279934882522max-w-full m_1202337279934882522w100pc"/>
                                      </a>
                                    </p>
                                  </div>
                                 =20

                                 =20
                                 =20

                              </td>
                            </tr>
                          </tbody></table>                         =20
                         =20
 <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presenta=
tion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:14px;line-height:130%;margin:12px 32px 0px;text-align:left=
;font-family:Helvetica,Arial,sans-serif;font-weight:400!important;color:rgb=
(25,30,59)">
                                  Made to Travel: Inspiration for your next=
 journey
                                </p>
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:28px;line-height:32px;margin:12px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:700!important;color:rgb(25,=
30,59)">
                                  Members save on autumn breaks
                                </p>
                              </td>
                            </tr>
                          </tbody></table>
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif;background-color:transparent">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"padding:0px;font-family:Helvetic=
a,Arial,sans-serif">
                                <p style=3D"font-size:16px;line-height:20px=
;font-weight:normal;margin:0px 32px 16px;text-align:left;font-family:Helvet=
ica,Arial,sans-serif;color:rgb(25,30,59)">
                                  Fall is here, and so are Member Prices on=
 select hotels. As a Silver member, you can save 15% or more on over 10,000=
 hotels worldwide with Silver Member Prices on the app. Now is the perfect =
time to book your fall break.
                                 =20
                                 =20
                                </p>=20
                                 =20
                          <p class=3D"m_1202337279934882522gutter-margin m_=
1202337279934882522text-align-center" style=3D"font-size:16px;line-height:1=
26%;font-weight:normal;margin:4px 32px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(255,255,255)">
                            <a class=3D"m_1202337279934882522block m_120233=
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOWZlYWY5MmQw=
ZmZiY2JiZmI5ZjY4MWE3OGI5OTA3ODEyMWM5YjRkNjJlNWQ5OWZlOTI1YWI4MDNkZDUzNzhjYzV=
kMmNmZDkxYjkwMWJmNDdlZjI1YjE1MWIyMGYxMjUxZWI0ZDdlZDRmMzc4YmViN2E4NjkzMDVkYz=
c4MWRkODQzYjdlM2M4ZDJlNjU0MzJkMWQzN2NjYjM0YjljMjY1N2EzNTlkYzA5ODViODlkZjViO=
DFjYzExNzBjMWQxODE3OTg4MGMxZWY3ZmI3MDQwNjEzZTRmN2QzMDljZGM5OGY0MjVkODRiZjdi=
NDI1Zjc0ZmJhMDZmN2NkNzllZWI5ZDMwMjdjNjg2MzliZjc1Y2IwNzZmODRkMjM0NDUyY2FkNGR=
hNDhjOThhODI3ODRmZGMyZGZkMDMxYTIwNDNmNjQyMjdlNmQzMjU4MjhhOTY0Mjk3MGFkNDlmNG=
QxZTcwNTM0ZWMzMDYxOGFlOTMyZDFkOTk4NWM3ZmJm" style=3D"display:inline-block;t=
ext-decoration:none;text-transform:none;padding:8px 16px;border-radius:4000=
0px;font-size:16px;line-height:126%;font-weight:normal;font-family:Helvetic=
a,Arial,sans-serif;background-color:rgb(22,104,227);color:rgb(255,255,255)"=
 target=3D"_blank">Start saving
                            </a>
                          </p>
                       =20
                         =20
                              </td>
                            </tr>
                          </tbody></table>
                        </td>
                      </tr>
                    </tbody></table>
                   =20
                  </td>
                </tr>

              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
    </tr>
  </tbody></table>
     =20
     =20


<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
        <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif" cl=
ass=3D"m_1202337279934882522responsive-td">
            <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=
=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-=
serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                    <td style=3D"padding:24px 32px;font-family:Helvetica,Ar=
ial,sans-serif" valign=3D"top">
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td valign=3D"top" style=3D"width:100%;padd=
ing-right:0px;border-top-left-radius:16px;border-top-right-radius:16px;font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(12,14,28)">
                                   =20
                                    <p style=3D"margin:16px;font-size:20px;=
line-height:120%;font-weight:normal;text-align:center;font-family:Helvetica=
,Arial,sans-serif;color:rgb(255,255,255)">
                                        News this week
                                    </p>
                                                                      =20
                                </td>
                            </tr>
                        </tbody></table>


                       =20
                        <p style=3D"margin:0px 0px 16px;text-align:center;f=
ont-family:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522nomob"=
>
                            <a href=3D"localhost:1333?u=3DOGFhYmNlZjM2MGQxY=
2MyMjQxNTQ2MmUyNGRhYTgxZmRjY2UyZWI3ZmZlNDk5YzhhMTFkOTQ0Y2NlNTZjMzczZDViZGM2=
MzRkNGEwNDRkYzU5OTU0MjE4NTM0M2VmZjJhNDNmMDNlOTU3YzMyZGQ0NzA0NjJkYmNlMDUxOGE=
3NjQ0ODU2MzZlODY4NzY3YTFkMGRjNzQwMTY0Y2VkYmM5N2I0MDQ4M2VjNDczN2MzM2VlMGI3ND=
Q2OTM1NWZiYzhmNDMyZTFkN2Q5NmM3OTUzMWIyOTY4OWRhNjU0YzRhY2U4NTY3MTg1YzNlNmRkY=
TdmZDY4NDViODJhN2Q2OGQzMTYyM2JmMWQ1NjRiMjhhZGQwMDg3OTNkYjQ5OGE1NTljMmY1YzZk=
ODZlYjNkOTc5YWNlYzBhNTI0NWIyYTAzZmJkYjlmZWI4OTk4ZmIxYjRkMDdjMDM2YTY2NjcyMzQ=
4NWE2MDNiM2VhZTA3NGU4NTE3OWU4ODVmYjc5" target=3D"_blank" style=3D"font-fami=
ly:Helvetica,Arial,sans-serif">
                                <img width=3D"536" style=3D"display: inline=
-block; border-radius: 0px 0px 16px 16px; width: 100%; max-width: 536px; he=
ight: auto; font-family: Helvetica, Arial, sans-serif;" src=3D"https://a.tr=
avel-assets.com/travel-assets-manager/ceorg-3741/WestMauiToReopen-eMail-Sec=
ondary-D-536x230.jpg" alt=3D"Plan a visit to West Maui when it reopens for =
travel Oct 8"/>
                            </a>
                        </p>
                       =20
                        <div style=3D"width:0px;overflow:hidden;float:left;=
display:none;height:0px;font-family:Helvetica,Arial,sans-serif" class=3D"m_=
1202337279934882522showmob">
                            <p style=3D"margin:0px 0px 16px;text-align:cent=
er;font-family:Helvetica,Arial,sans-serif">
                                <a href=3D"localhost:1333?u=3DZjczYzZhZjg0O=
DJmNDVhZDRjZDAyMDdiYTk5NTdjNTA2OWRlYzFkMjdlODNiZmVmYWU2MGQxYjEwNmEyMjA0ZTEz=
NjY2NjYxMTBlMTQwNjk0YTc5ODYzMmFjNTgzNzljOTA2Y2I3MjlmYjIzZTlmMjUwODczMjQ0MzR=
jNDU0M2IyY2IwZWQyYWNmNjBjYTI0Yjg4ZmJmZjYyYzZjOWFlY2UzOGYxNjllMzcxMWRiYjExMT=
FmODE5ZDA3NTY4ZGRjODAyYjU3YzczYmU2MzlkYWZjZGYyMjk5ZTg1ZTdmYjhhYjQwNDU2ZmI4O=
DIxZjJmZTU4NjIxNWI1YTliYjM5MDBkNmU3ODZkNWFjZGIzMjU4MTllZDRlYzMxNWEyNzU2ODY2=
MDU3YTk3ODY3YmYzMjI1YTFkYWVlM2NhYjIxZTM0MDgzODMzNmRiNzBmM2U4OTBlZDNiYmRjMjM=
zMDVmZGM0MjBjOWIwNzFkNjgwYWQzNTg3YTMyMjdk" target=3D"_blank" style=3D"font-=
family:Helvetica,Arial,sans-serif">
                                    <img width=3D"311" alt=3D"Plan a visit =
to West Maui when it reopens for travel Oct 8" style=3D"display: block; bor=
der-radius: 0px 0px 16px 16px; font-family: Helvetica, Arial, sans-serif;" =
src=3D"https://a.travel-assets.com/travel-assets-manager/ceorg-3741/WestMau=
iToReopen-eMail-Secondary-M-311x311.jpg" class=3D"m_1202337279934882522max-=
w-full m_1202337279934882522w100pc"/>
                                </a>
                            </p>
                        </div>
                       =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td style=3D"font-family:Helvetica,Arial,sa=
ns-serif">
                                    <p class=3D"m_1202337279934882522h-dark=
" style=3D"font-size:16px;line-height:126%;margin:0px 0px 8px;text-align:le=
ft;font-family:Helvetica,Arial,sans-serif;font-weight:600!important;color:r=
gb(25,30,59)">
                                        West Maui reopens for travel on Oct=
 8
                                    </p>
                                </td>
                            </tr>
                        </tbody></table>
                     =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                           =20
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td align=3D"left" valign=3D"middle" style=
=3D"font-family:Helvetica,Arial,sans-serif">
                                   =20
                                    <p style=3D"margin:0px 12px 8px 0px;fon=
t-size:14px;line-height:144%;text-align:left;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(25,30,59)">
                                      Hawai=CA=BBi Governor Green has annou=
nced that beautiful K=C4=81=E2=80=98anapali, N=C4=81pili, Honok=C5=8Dwai, a=
nd Kapalua will fully reopen for travel on Oct 8. Plan a visit to this spec=
ial place, support the island&#39;s businesses, and make a new memory.
<br/><br/>
Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s residents.
                                    </p>
                                 =20
                                    <p style=3D"font-size:14px;line-height:=
130%;font-weight:normal;margin:0px 0px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(22,104,227)">
                                      <a href=3D"localhost:1333?u=3DMzQxZTJ=
iNTkyMzBmOGU0Y2NhNWY0ZWY1OGE2OWQ3ODczNDIyYWJhNjYyZjc0OTQ3NGEyMGZlNGE1YzdmNW=
E2YjEwYmFjODRkYzFkZmQ0NGQzMGMzNmZlZDVhMWIwNzRkNjZlODg5MDAxYTI1Yjc3NDIxNzliY=
2JjYjA2ZTRlZjFkMDkxMjc3N2E4YjgwN2YyNGMzZWFiOGM3ZGU2YTExMWZiMGIwZGU2Nzg3ODcx=
NzMwNjE1NmEwNGFmMjViNDc1OTYxMGE0Zjg3YmU2MjcwMmYzYzBiMzIyZDM3ZmI0MTdkMTU0OWI=
1YzdiY2VmNDYxYmI4ZDJiMDI2NTMxNThlMjY2ZDI4NzcxZGFkNzk4MjY0YjdjNjEyZWQwZTMzZD=
NjN2VjN2E0MjcwNGI5NWNhYmFkZjMwODJmOWY2MjQ3YTc5NmYwMmMyMjViMGE2ZmMyNjkwODgyY=
TM2ZGZlZDJjMmEwN2FiNzg0N2MyYTk4YTRiMDcwN2RmOThjNDk3YQ=3D=3D" style=3D"text-=
decoration:underline;font-family:Helvetica,Arial,sans-serif;color:rgb(22,10=
4,227)" target=3D"_blank">
                                        Explore Hawaii Hotels
                                      </a>
                                    </p>                                 =
=20
                                 =20
                                </td>
                            </tr>
                        </tbody></table>                     =20
                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
</tbody></table>


     =20
      <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"pre=
sentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">=
<tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font-f=
amily:Helvetica,Arial,sans-serif"><td style=3D"font-family:Helvetica,Arial,=
sans-serif"><div style=3D"line-height:16px;height:16px;font-size:16px;font-=
family:Helvetica,Arial,sans-serif">
        =C2=A0=C2=A0 =E2=80=8A</div></td></tr></tbody></table>
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
     =20
       =20
       =20
       =20
       =20
       =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Arial,sans=
-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"padding:24px 0px 0px;font-family:Helvetica,Arial,sans-seri=
f;background-color:rgb(243,243,245)">
      <table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Ari=
al,sans-serif" class=3D"m_1202337279934882522w100pc">
        <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" style=3D"font-family:Helvetic=
a,Arial,sans-serif"><p style=3D"font-size:16px;line-height:150%;font-weight=
:normal;margin:0px 36px 9px;font-family:Helvetica,Arial,sans-serif;color:rg=
b(25,30,59)">Download our FREE mobile app</p></td>
        </tr>
        <tr style=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" valign=3D"top" style=3D"font-=
family:Helvetica,Arial,sans-serif">
            <center style=3D"font-family:Helvetica,Arial,sans-serif">
              <table role=3D"presentation" border=3D"0" cellspacing=3D"0" c=
ellpadding=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,sans=
-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                 =20
                  <td style=3D"text-align:right;font-family:Helvetica,Arial=
,sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DYmEwMTlkYjhlZTJlNWE4OWIxMzNkOG=
VjM2Y0YTBkYzcyZWEwMTFmMTViYTM4YTg3MTIwNTI4OTRjNWYyZGI5MTRiNGEwYmI3ZDQ5Yjk0Y=
Tc1NGM1NmYwM2VlNTA0N2ZhYTk3OWIxMmVlZDVhNWJmYzMzOWVmNTc3ZThmZDYzMDE0ODlmZDFh=
NTgxNTNjMmUwZmQ2YmE5ZWMzM2UxY2NjMDM4ZTYzZGFjM2M5MmZjYmQ0ZWE2ZGM5MjY4ZTE1YmV=
mZDAyOGIwMzE0NDI0ZWI5MzBkZWQ4NDA2ZTZiMWE1ZDg5ZjI1Njg5YTU5NmRiYzYwZThmODU0Ym=
EyYTExNzQwYWNkOTY5NWE2N2JiZTMyZmQyZjE3MTI5NTE3ZDNjZTFjNGI2YWNjNjc1YWZlNmUwN=
jBkM2YzMzdiNGZhMzY3NDg2NWU3ZWQ3NjFiNzQ1NzE5MmY0Y2M4ZDRkMTAwM2I2NWQ1NGIyZGE1=
OTRiZWQ4MjdlMTEzYTZlMWM3" target=3D"_blank">=20
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_iOS.png" alt=3D"App Store" width=3D"auto" height=3D=
"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: none; =
text-decoration: none; width: auto; font-family: Helvetica, Arial, sans-ser=
if;"/>
                    </a>
                  </td>
                  <td width=3D"14" style=3D"font-family:Helvetica,Arial,san=
s-serif">=C2=A0</td>
                 =20
                  <td style=3D"text-align:left;font-family:Helvetica,Arial,=
sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DZWYwZTE4ZDdjOWU2OGZkNmY2YTNhMT=
I1MzM1MTZlOWQ4ZmRjZGZjM2Y4YWE0ZjcxNzg4ZTE4NjNmYTk1YmE1M2M1M2E4YjY4MGNhMWIyY=
2MzMDQ1NTNmZDAzNzkyMmRlMzlhYmYyNmIyMDM2N2NjZjRiYzY5YmZjOWE4MTdiNzUxNmZmOGZj=
MDU1NTk5YzY4MjVhYjQxNDliMTQ0ZjYxYWY3NWY2ZTJmZDY5ZDNkMzdjODQxMTZjYjA2NDQyZTJ=
jOWVlMDhmODZjOWQ0ODA0YWI5ZjFlZTlmMzYxNDQwYTUyNmJmYmYyOTNhMzJmZTEyYTFiY2I3M2=
NkOTI1MjUwZDZhYWM0YTFlODA2YmFhYzg5MGYwZWQ0YWFiOGJlZDEzZjY3OGVkY2Q5Zjk5ZGY4Y=
TBiZDMxNWVhMjkxOGE1NTVmMDY4MzA4MDg3MTQ3MDUwYmM0YmE3MTQxNzlmN2EyN2NlZDJjZTM1=
ZDk3ZDAyOWY1YWJmZmI2MDA2" target=3D"_blank">
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_Android.png" alt=3D"Google Play" width=3D"auto" hei=
ght=3D"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: =
none; text-decoration: none; width: auto; font-family: Helvetica, Arial, sa=
ns-serif;"/>
                    </a>
                  </td>
                 =20
                </tr>
              </tbody></table>
            </center>
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
</tbody></table>

       =20
<table role=3D"presentation" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" width=3D"100%" class=3D"m_1202337279934882522w100pc" style=3D"font-famil=
y:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td align=3D"center" width=3D"100%" style=3D"margin:0px auto;max-width:=
600px;font-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,2=
45)">
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;margin=
:24px 36px;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)" clas=
s=3D"m_1202337279934882522gutter-margin">=20
       =20
       =20
        =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DN2Q3NzZiZmZkZDgz=
ZmIxMTMyMzJkYWNiNzBiMzkwOGJmNWJiYjUxYWFlYWU5YzU3ZDNhNDI0ZTk3ZTlkZjMwYzgyNTA=
zZGIxODZkMmEzNDgxYzBmZjVmM2FjYTBjM2VkMTgzM2Q5YmE3ZGQ4ZGRhOTcyZGNiM2ExNDk4Nz=
MyMzRlZDY5NDA4MDc2N2JkN2YyNjQ0YWU5OGI0YWM0NGQxODMwZThhMjZjYWFlMjI3OGQ0N2ExY=
TI2ZmRiZDMzODY1NzgwMzQ3OTkyNmFiODNlMTA2ZGEyOWY4Y2M1YTc2Nzg3MzYyODRlY2MyMjk0=
MjkyOThjMjI2NmUxMDU4ODZjNDZlY2E3Njg0MjM2ZmZhMTEwYmNhNmJkZjBmNWRmNTNhYWEzYjF=
iMzBhYjkzYjIxZTQ4MDVlYTU5YmFlYjVmZDA0MDlmNmExOTk2NjRjMTY4NWU2YjNlNDEwNzdkMz=
lkNjVjMDQwMTEyNWUyOTZkYzQzZTY1MjFlYzAyMWI5Mw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYjExODg4NTA4NGNi=
OGE1MGU5YTU2ZjJiNGVmMTc4NDUyMThhMzc0YjU0YjVjMWIyNTE5NzU3YTM0YTM5YTcwOGRkMDc=
xYzcwZThkYzA0MzRhZTFhYzBkMGM2NTY4MGIzMGEzYzE0NmU3NzA0OTg3NTVhYWM2NDgwYWM0MT=
E3MTdjYTMwZGViZmU0Y2RhYzNhMjg0MTBiZTE3YjgwZWJhNTRmNmMxMmY5NjY2ZjZkZDJlMzNiN=
TNiMzM4OGRkMDc4NmIzYzIzMmEzMmQ1NTgzZTRlNWE1M2NiZjQ0ZTFhNzZlNGZhNzExNjg3ZDgw=
OTE5N2NiY2ZiNTdkMjJjYTBjNGNmNmVmMDYwMTg5YzA5MTc0ZTdiYWQzZmEzZjNhZGY2ZTA3ODQ=
0MDBlNjkzM2E0OWQxMWZhMWNhZThhNGQ3MDU4MGYxY2E3YTM1NGI0NTdkYzI2YzhkZmQ5ZGJkMj=
EyM2E0YzE1MjdhOTZmMDUwYzdkMTM2MDEyOWVhZGRhMg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DN2UyZTcxNjBlODgz=
ZTRhMjMzMmIzOWU5ZjliOGQ3YjkyNTExMjMwY2NjODg1ZDE4NmE2MTdiYzQyNzI2YzViZjg1ZTM=
3NWZkMmQ3MzM3MWI5OWYzMGQ4ZTg2NjAzNzU2ZWY2ZWNmODU0YmMzYjU1MWZiOTZlMTc4MWMxYT=
g1MTUxNzQ1MzIyNmJhNjlhYmEzZTYwYzQ5Yzk5NjIzNzRhZGRhNTg2MTI4MTFiNzIzOWQ5ZGRkZ=
WM3YTI0ZDVhNGNiMjY1MzI2OTFhZTEzYjVlNWRkZTY3OTBlODI5ZjkwNjRjNzg0YzcxMmNjODMz=
ZjliMzg1MTdlYmVjM2RiZDU5YjljOWY5YTlhNjdlYTBkNDAzNWFhZTdiZGRjNjkwYjA1ZjNlNmZ=
hYjE0NzYyOGJkN2FlY2E3ZjdjMTM5NDJjNmRjNTFlZDQ0ZmM4ODQzNjBlYzEyMGY0MWFhN2IxNz=
Q5OGZkYzhiOTc3NWMzYjA5ZTM2ODdjZWY1NDA3NjYwZA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDNiNDRjOGNmODEw=
NzIzMTBmNjZkZDIwMWE3MzljYTljZTYxYTA0M2M0ZDBhZTMxYjhhZjMxMmQ4ODBjYzA5MTk1M2Y=
4ZjRkMDQ4YWZhZmRjMDY0NTcxZDlhOTM3MGEyNTg3YTM5ZWNiN2Y3MGJmNmU1OGU1ZDE1NGJkYz=
lkZDFiNjQyMjliYTllYzZlZjU3M2U5ZDM2ZmUwNmRhYzIyZDkxMzEzMDg2NGNkZTA1MGFlZDliY=
2M0NDYxZWYyOTVmZDM5MTE1MTczYWYxOTJmZDkyZmE1MDJiZDdjZWU2NDY1ZmM2MWU2NWZlMGQ0=
ZDA3ZDBlMjFjZTM5YjZlZGI0YTllZDFmYjBlYmFiZjhiMGUxNzJhMjljNzc4M2Y2YzE4MDg2OGZ=
iZGI2ZjYzN2NhZDJkZGM2Mjg2ODg5NTI4ZDUzZGZhYWYyNGRmYjQ0YTkyZmI0MDYwMDlkMDgzYT=
k2ZjVmMzQ3MWEzNzdkODVkOWU4ZDc1NTgxOWQxYmRhOQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzcyMjBjMWQ2M2Q4Zm=
I1MWUxOTY4ZDE2Y2ExN2VmZDMzNzRhMDU1ZjRhYTg3NmMzNDVkMzE2MGQ0NzY5OTFjNDNiZjY2Z=
jQ0NGMyM2UxN2M1NDdkYjYwY2NjNmI4YWEzNTEwODVjNDFhY2IwZTQyZjFlY2VkODkxODZkMzg1=
YTdlZDM0YmFhMWExNjIyZGZmYzVlNDE2ZjhjYTVhYWU4YjU5MjM3MzExNTlkZWM4ZTk2MTM4M2V=
iYzNhNWRiNWI4N2QyMGZkYzU5MDdjMjdlYzg4NjM4YWE4MTkwMmE3NjczMmJiMDhjYTUxNjY0OT=
JmZjk2Yzc4ZjJiYWNiNTJlOWU4N2NjNDRiZGUyYzNjYjUwMTQ5OTBkYjFhNjk3ZWI4NDVkNjlkN=
GFmOTE1OGJhMjk0MDYwNmI5NmVlYzI4YjY5ODg1NDQ0NWZjM2VmOWM0NWE5MGFjYTQyZWU4ZDQy=
ZTllMjRlYzg4MDUyYjg5OTY4MTU4NjI5ZTFkMzJmOQ=3D=3D" target=3D"_blank">Custome=
r Service</a>
       =20
      </p>
    </td>
  </tr>
</tbody></table>

       =20
                =20
<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"font-family:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rg=
b(243,243,245)">
      <p style=3D"text-align:left;font-size:12px;line-height:134%;font-weig=
ht:normal;margin:0px 32px;font-family:Helvetica,Arial,sans-serif;color:rgb(=
25,30,59)">
   =20
   =20
    =20

     This email and its links may contain your personal information; please=
 only forward to people you trust.<br/><br/>You are receiving this email be=
cause you are eligible to receive promotional emails from Expedia.
         <br/>
         <br/>
   =20
       =20
    =20

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DOTVjMjg1MjViNDNh=
MDg0OGQ0N2Y5YmZhZTJkNjYyNGExOWRmNWU1NWNjYTkxYmIxMzZiZDJkZDE2ZDc2OTEwZTliZmN=
mMDRjOTlkOWVkNzdmMDY0ODlkYjk4ZGE5YmE4YWJkMmI0N2Q2ZWUxYTU2N2NkMzkyODc5YzhlNj=
FhNDUwMzk1ZjQxYzM5NGYyZDEzM2U3NTZmYzQxNmY1N2QwMDZiNWMzOWE5NzA1YWExM2ZhMDA0Y=
TJhZTM2MDRlYzk0NmY1Zjc2MGYxYjVmOWUwZWI5OGEwZTc4YTlhNDRlMWRhZGEzOTkxNTk3N2Jm=
MTg4YWI4ZWM2ZGNmZTU0ZTA=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
">1111 Expedia Group Way W., Seattle WA 98119</a>.=20
          <br/>
          <br/>
       =20
       =20
         =20

          <strong style=3D"font-family:Helvetica,Arial,sans-serif"><a role=
=3D"presentation" style=3D"font-family:Helvetica,Arial,sans-serif;text-deco=
ration:none!important;color:inherit">CST# 2029030-50</a></strong>
          <br/>
          <br/>
       =20
       =20
         =20

          =C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights r=
eserved. Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks =
or registered trademarks of Expedia, Inc.
          <br/>
          <br/>
       =20
       =20
   =20
        <a href=3D"localhost:1333?u=3DMDRhMjIyNzkyMjVjMjhmZDA5ODU3MDUyYTY0M=
GYxNjBjYThlYTJlOWQyYTVlODIwMTYxMDY1ODM1YmU1YjQxM2E0YThmY2U5MWU0ZDg2YjJiMjFi=
OWJiNjZlNzI2Zjc1YmNkNmRmZDVkYThlZTdiOTZmOGQ3ZDYzNDUyZTE1MmE5ZGE4MTA2YjMwNmY=
5NDJhOWIyZWQxODc3ZDg2Njg2MmIyNWMyZjY5NWU2NDQzOWU4ODBhNGJlYjgyYTAyY2NlOTZkNz=
c3N2M5NzM4OTk2ZWViODgyZjhjNzZmNmQ2MTkzODllZmYyODBlNjMwYTYyZWYwMzQ0Y2NiNjA4N=
WM0YmI0ZTNjMDc5NWQ1OWJiZGQzYWUzZDViNzMwZjQ1MTA0YmY3MjQ5NTAyNjhmOTM5ZTc2ZDMy=
NzI3YTc3OGZjZGI3Yzc1ZTNhN2NiMzJhYjFjOTZlODRkYmYzYmZlOTlhMTZlNTEyOWJlNWQ2YmI=
4ODk5M2ViMGEyNGIxNWNlZjUxNTlkM2E5NTUzODdhZGE3YjliZGQwZGRjNmQ1Y2RkZjdmNTczMD=
VkNjc0ODRiMDc5OWYzNzVmNGI=3D" style=3D"font-size:12px;line-height:134%;font=
-weight:normal;margin:0px;text-decoration:underline;font-family:Helvetica,A=
rial,sans-serif;color:rgb(22,104,227)" target=3D"_blank">View online</a>
          <br/>
          <br/>
      </p>
     =20
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;text-a=
lign:left;margin:0px 32px;word-break:break-word;text-decoration:none;font-f=
amily:Helvetica,Arial,sans-serif;color:rgb(243,243,245)" aria-hidden=3D"tru=
e">EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&amp;EMLDTL=3DD=
ATE20231003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX</p>
     =20
    </td>
  </tr>
</tbody></table>

       =20
 =20

       </td></tr></tbody></table>
       </td></tr></tbody></table>
 =20
  </div>

</div>




</div></div>




--00000000000049ba010606e05d24--
