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
From: localhost:1333?u=3DZjU4OTgyNTI2NGUwOTExM2ZlNGU2NDQzMzI0YWE4OThlNmM1ZT=
BmMjg3ZThlMDIyNmFjYTIzZjM3NDI1MjMxZjlmOWIzMWQ0MmQxYWNl <mail@eg.expedia.com=
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
<localhost:1333?u=3DNDBhZDFjZDg5NzlmOTllMWRiYzVhMWIxMjNlNTMyMzgwYWEyYjZiYjY=
4OWVkN2Y2OTgxNTk1M2M1NzllMDdkM2IzOGRhMGNjZmQ1MWY3ZWNiZjRiMDZkZjUxMzU0MWI2Zm=
YxYzA3NTc1MDBmNDlmOGFiMTdlZjc1Y2I0MDlkNDZmMGNmYzA4OTRjYWJlYzE3MGFiYzRmNGU4O=
TU4OWViZDcxMDU5Y2ZiNDk5MmViOTZiZDhhYmQzYWI0OTQ5MTRiYmFhZDlkMmZhNTM1Yzc1ZTYz=
MzMwODYzM2VmMmUyNTgzMDJmMWM2OTg2NjIxOGNlNDRmNzcwMmRiNzFhZjZiYWY1NmFjM2NlMTF=
hNTViYzlkZWRjZmJmNzA4NjMzNTM2YzQzNTdlODZkYjc1ODVlMGFkZTZiZjk0ZDZmODE0MDNiNT=
I5NjQ2MWJjOTI4ZTU5YTk1MjI4MjkxZWE1NjRmM2NjZDAwYTNjN2M5MzQ5YjJhODUwYzhmZDUw>

* The Travel Edit
<localhost:1333?u=3DMjMwZGI4NzQyOTA3MmJjMWVjMTdkNzc0ZDk3ZjM2MDkwNmE3MGIyNzI=
zMGE3YjAwY2ZkZDEyODcwYmUyM2ExMDkxODMwOWVjYjQwN2VmMWYxM2VkY2FhNWI3OTMzZmYwYj=
A4NGNiZTU5ZmE0MzNlMjIwZGNiMDk1OTExMGMwZjk0NDE2MDczODBlNDQ4YWFlNzlhYjMwMDQyO=
GM4ZjNlYjI2ZGRhYjU5NTJkOGRkYTkwOWE0NzM0Njc0NDliNmIwOTY1NzZiMTZhMzk1NTM3M2Rj=
NzE1NDk4OWMwZDhhNGZjZjA1OWQzNTkzMDU3MGY1YzQyMmQ0YjA0Y2Y2OGE1YjVlODIyYzk3ZDl=
lZWY3NTNhMTAwY2ZjZTAwNjM3Yzk3MDgwMDJhZDE3ZmZhMmExZjM1NDliYTA4YWIyYzhhMjA5YW=
UwZWE2NTBiNDlhYWUzM2JjMjAzNTI5NjgxMzU1ZjA5ZWQ1Zjc5YTgyMjdiMTY0OTgzNTRiNjcw>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMzc1MTE3ZTRmZjcyNGNkY2VlMGU0YTRiZjhkY2M2MThmYmMzY2Q5NDk=
xYjQ3MTg0NDRiM2JjM2FlZDhjOWY3YjQ1MDNlNmYwMmE0ZDJkZjExZWRkOGQ5YmM5NDllYzg1OG=
NiNTRiMjM1MGM1YTM3Mjg3ODIzYWVlMDk2M2U3NTgyNzZiY2ExYWIwNWFlYzMyYmUzNjg5NzExM=
GVhNzAxYmQ1N2Y3MTM4MTI4NzFjMTRjMWUyOTgyODgxMWYwNjdkNGQyOTYzYzA1MDIzNzE1MmU0=
OGIxNzg3MzEzYzgzNWM3ZTViYTE0ZTVkN2NmZjYyOGZjNWI1MWY3YWE0YWZlOGEyZWEwNGM1ODB=
kYzg2YWE2NTNjZmI4ZGY1YTZkZTBkYWJmNGNkMzE4OWM4NDAxOWFlODE2ZWQ2YzYzOTZjOGRmNW=
Y1ZWVlMTJlZTc0M2E1ZjM0NDMxZjA5NWMzM2RlNzdjMjZmOGQ3NzllNmRlY2ZjMTE2ZGVjNjU1>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZmIwNjUwMGEwNzZiMjdhNDI2NmQwZTBjOTFlNjViZDEzOWMzYTBmYjh=
jZDFmYjQ0NzQ1NmZjMzM1NGUwODAxNjYyMjA4ZDkyZDUwZmNkNjc5ZGJiNzQ5OGRiOGZiYzMxOT=
NiMTFlZmZiZWVjZjMyOWUzMjcwZmY2NzAwZDdjZDYxODVmNGE2MDNhMmI5NmYwMjE0ZTgyMTNjO=
DEwMzU3ZWFmMGIzOGQxOGM0MWRiODhkN2Y0ODZlZDQ4ZjQxMDE0YTc4MTFjNjIzZDBjZmI0ZjI3=
YjY2YTg5ZTBkZDhjYjUxYzlmNjEzMzJhZWFkMDk5NzBmMGJiMzZmNGE1ZDE3YWExZjQyNTA5NTA=
0NjNhYjRmYTA4YzM5Y2Q4MGFlYzczYmQyZTNiZDQwNjMwYWQ3ODc0ZjA4ZGJiMDBhM2NiMDlmND=
liMTkzYmVmNjQ0M2EwNTY1MDNiZDgwOGRlYmExYTExY2EwMTc4MWFlYmQ4ZDljNzc2MmFjMGM4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOTlkZWE0ZDhiNmEyZGY3YzQ1MmVjZDg4NDU3N2Q2N2I0NDBkOWE0MjU=
xODdjNGIxYjUwODZlYzk5MjU3YWZlZDY1YjQ2Y2RjOGRjZDNjZmFmYjA4MWJkZDZlNTM4NmNhOD=
BkY2MyZWFmYTZiYTJmOTg5YzRiNzc5MGY1NzkyZDMxZjBhZDk0YzY4YTI5MmFkNjAzMjBmM2E0N=
DVlYTc2ODZjODQ1NzE4ODdhMDY1MWNlY2I3NzQ3NDFhNzcxMmRjOGMwOTI3ZDc0ZjYyOWE2MjE1=
ZTY5NzI0NjdlZGEwZjk2ZmNkYTI3M2RkMmFmZWJjYzFmNjRiMjM3YTU0ZDM1Y2RiZDMyNzFlMmV=
hZjI2YjMxYTlmNGM1YmY1MTM1ZDY2ZWRkYzc1ZDMxYzgwMTI5ZTg2Mzc0MmJkMzY0MWUwYmU3Zj=
IzNjJhYjVmYWI1MTcyYzliNThmMGY3MTMyYjQxZmEwM2MwMThhZThhYTZjNGU5MmExYmI2ZjBi>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMjg0NmNkZmFlNjkyMzkyNjg4NDVmNWQ0NDYyMTc4ZDEwMDU0NDlkOTh=
hMGQ4Y2Q2NDRiMDA3ZTI1MDY2M2FjMDA4Y2Y2YTliNDZiZmIzYmE3N2I0OWE4NjYzNDU0YjczNm=
M5YjI2ODEzOTk0MGI2MGFhYTVkMDYxYmI5Mjc0MDgzYWIwNjI2MDk5ZTRmYzdlYjAyNWQwZTdkN=
zJiYmE4MTRiZjcwMWY5MDFiMDg2NzkxN2Q5MjNkYTU0N2UyYzg2NTBkMDQ0NGY5NjcwM2JjZjJk=
M2E0ZDZkMzkyMDZmODI1NjUxNDFjN2RkMDM4YWI0MTc2MWVkYTQwNmFkNmZmNGU2NjY5YWZmMDg=
1OGU4MjljZGY1NTYwYWEzZWRlZTNlMzYxZDZmNWRhZGNlZGJlMGRlMDI3MzEzNTEyNzRkN2YzYT=
IzY2JmZWJmOTBhMjI0MDNjZmVlM2NhMDRmZjVhZTU2ZGFkZjNjNDc1ZGQ2NTJhOWUxZGZlYmU5>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNzdkNjYxZWQ1ZTE2YzIzZWFmYTAwZDU5MWY1ODUwMDA5NWVhMzA1NjF=
kODkyYzc2NjZiZjZhOTJkYzVlNGQ0NjhjMzNmOTZiNTM4YTgxMTBkYTk5YWVhNjM2MDgwNGU4Y2=
VlY2M2YmRlZGUxZmY3MmNjMDljMWM3Mjc5N2ZlMWFmYTAzNDdiMzQ4MDQwMzUwZDk0YzUwZWJhY=
jdiMmMwMDM5OWE5YzkzOTc4MGZmZmE3ZmM4Y2M5NzRhYzdjNWNlYzk3OTBmNjY4YTVlZGUzNzI0=
YjRiMDRjNjhiYjMzODcxMzkyMmE4YjFhYTg0ZDEyMmE5ZmU3NDIwNTlhZTYwYTliMTYyMTk1Yjl=
hNGY5MDA2ZWI3OTdlOTRiNTVhYjQxM2RlMzNmNTg4ZTAzNjI2NjZlMTcwMDZlOThhYTVhYWZjYm=
I5NjliZDFiZDBjZTYwNDQ4NDc4MDBjNzY0MjRlNDk0MzZiOWUxMDYzMzZhYzA0M2Y1ZjVhOGE5>

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
<localhost:1333?u=3DZjI2ZjdiZjNhMmI1ZDcyNTQ2NmFhYzYyNDI2MDk5Njk3NTZjYmI3ZjU=
zNThiZDY4ZDkzNjBmMDE1NmZlZjcyMWZkODU0ZTkyYTlmNTY0MTg0NjU4YWFhYzEzYmZhY2Y4ZT=
FhOWI2NWI5ZWZiOGU3MjJmZGZlNmQ4OTMwNGE4ZDk3NTZiYzBmYzU5Nzk4ZGM0MTRmYWVjZmIzZ=
GIxYTU3YWRlNTBmNDJlMmRhNjExM2IyM2Y2N2IyMjJmZDRmZjQzOTcxMGEzMGZmYzM3ZjhjZmNk=
MTdjYjNiNmM1MjJkMjY0ODBjZDM3ZTM3YWM1NjY3NmU4MDVhYjBmY2MyZGQzYWYzYTRjODI1YTI=
zOWE0MjZkODA1OGMxN2I1N2JmMmQwMTAwYWZiYTQ0MDQ0OTE2ZTcwMGRiYTRlNWMyM2JhZGM1Mj=
U1YTU0YWFjY2E2NWVhMGQ0MDBlYmI0YTU5YTI5OGVjOWRkNGNiZTk0NDU4ZTQyZTEwNWU2N2NhN=
zM4NQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DZDRlM2RhMjc3ZGJhMjRhMzkxOGMzMDZjMzY2MzRjZTM3NjQ2M2U2NDE=
xY2QzYzQ4ZjJmZDRiOGMxM2I0ZTkzNTkxMjJlYmI0OTdkOWVkODQ1ZDY4NzAzZDVjZGY1OWRlZT=
E5YTM4ODBlOWRiYThhMjAyYzEwZDIxNDhjNzQyYWZiNzNjNDUxM2NiNjFhNDIwNjBiZDQ0MDUyZ=
GFhYWNhNDM1NTU4MWE2MTIxYjVjYzRmNjBhMDE4MDhhMjNkZThjNjgxYjI0Y2Q5YzJjZjU3OWRh=
YWU1NmY2NjM2NGM0ZTFmZDM4YjY5ZDFjNmJmNmJhYTIxODlhOGQ5NzQ4MjFhYmRmZGIyZTZhMmE=
wNTFjZWFlYjMxOWZkYjdhNzcyNGE0NDkxODQwZGI2ZWM3YmYxM2ZkZTI4YjA4MjMwOTQwZGYxOT=
Q5MzVlNTYyNjI0ZGJlMmUxM2U1Njg5ODQ3MGVlN2E4YzYyMDRmZmI4ODRmOWUxYjhmYjMzMzc0>
  [image: Google Play]
<localhost:1333?u=3DNTkzMTI2OTQxMDgzNDg2ZjkwZGRkMTMxMTYzNWUyYmI4N2NlMDU0N2J=
lNDJmNzVhNDcwMzNjYmY2MjZiYjFjNDIzN2Q4ZGZkYmIzN2ZlYWFkZWU4NTYwZWFhN2FlYjRlOW=
E3ZjIwNmU1NzUzNTQ2NjFkZDkwNWY5ODQ2Nzc0Nzc4MzY5YTVlNmI3NWJhYTJiOTU4ZGY5ZTc0Z=
jk2NzM5NjNjZTEwYmQ0ZTJjMDkwMGVkMjQwZmI3YWI4Zjk3N2EyMDRhNzI5YzgwYTgwZmQ3NWVj=
ZTRmMjNlMTMzNzI4MDYxYWY0Y2ZmYmM3NTNiZDhiZDY5ODMzNTk4YWNjMWQ1YzgyZjU0YmM3M2U=
3MzIyN2VkMzhjYTE5MzIzZGFmNTZjYzcxYjRhNDc2ZmE1ZjRkNDdkNzQ2ZmVlZDIzMjYzZTNkMj=
IwMGRiNWY4ZGZlMzlhNjgyMTg0MGYwYzIxYjVmOGJmZDFhOWJiZTEyNjEyYTRhMDc0ZmFlZjYy>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DN2U3NzA4ZjhlYjYzMmIyNzJjMzQyNGZjYzlkZjU1ZDIzMjRmNGVlNGU=
xM2M0NjdmM2MxYjFjOGVlOTQwYzZmNzViYTI0OGUwMGIwODgxMDFhNzFiNDI5ZDdlYmMzNjE1ZD=
AxY2UzNTJkM2NmYTE2NzMwYjNkZjA1MzMwNDk5MmRjZDM1MDBjMGFmMzdhYTk3ZjdhNTE4NWE2Y=
jJhMDk5ODAxYTYyNjlkMjkxYzM5ZjVkMWRhYTBjNWI4NDNhY2E2ZjY5OTYxN2Y0OTk2ZmUwOGJi=
NWU3ODJlN2M4ZTZlOTAxNTg3ODg3Yjc1NDQzM2ZlYTYwNWNhZWJiOGNhYzU2ZDM1MmY1MmNlZTQ=
xOTVkM2Y0ZDQ4ZmQ4ZjEyNmM5NmJlMTg3ZTJlYzhhMGVhYzk4ZGYwOTBjNGNmM2IwNGY2OGE0Mz=
IzYTlhYjc1NmZiYjQwMzY2MmI4ZjIxNjlmOWE4NTQ1NmI3MmM2OTk2YmIzMmFlOGY0YTliYjMxZ=
TQzZg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DYzlhNGVkODQzN2VlYWFhMDM3NjllNzhkZWY3OGNjMzczMmQ4NGM3MDB=
iOTQzNzFlMmM3NmNiYjI5YjcxNTM4YTAzOThkOWVkZTFmZDk5OTNhMTI2NzU0NjM4NTUxYjQ4OD=
g3ZjdmYWUxMjAzOTRkODIyZmFjOGZjNDc0ZTA5M2YzYWVkMWU3MzViZmFiNTc2NzRiYjQ2OGRhM=
mJjMDNmNTNiMTY3NWNkYWJmNWEzYTQ2YzhhYTEzODRlYjdmMTI3N2Q5ZDRhOTU1ODJjY2E2ZDhi=
NzAzZmNlY2UyZDFiY2M0ZWJkYjdmMDIwMTQwNDBjNDk4ZGRmOWEyYTBhNDhhYTRkOGQ4MmU1ZGY=
4MTE3NDZkZTc1ZDExMzQzMDY0N2M5ZjQ1MjU2ZGUwNWRiNTAwZWRlODY0MzhjNzdkMTZiNjVhOD=
g3OGNhYWRkNGZiNjA1MTU2ZDk0N2ZiYjhjNTY0OGU2MTc0YmVmODU4ZGUxNDFiNzgzNDlkZTc0M=
GQxYQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYzg0MGJjYTViMDNiZDg3Mzk5NWY1N2QxMmFiOTI3ODJiOTI0Y2E1ZmQ=
wNWM1Zjc2M2UyMTA4YmVhMjA4MDE1NmZmNzYzNzA3MzRmODA1N2ZmOWM2ZjEzYjFhYmRiNmRlZW=
Y0YTNkOTc2NGMxNzVjNDAwNjc3OTU1ZDY5NzAyMzY2NTU0ODcyODNlMTNmY2I5N2QyYTcxN2FkM=
DFmMThjNzA5ZjdhNzQwMmYwZDNiOTQ1OWY5MWYwNWM0ZjRhMzgwNWNlNmYxYjc5OWViOTVhNGJh=
MTc4ZTJkYTliNWY4MmYxMjRiNjMzZDMyZWI2YzAzMWY3YjVkY2RmZTlkMzM5NTM2YjhmODhkMTI=
3NGNiYzhlMTc0ZDllZWJjNTFiYWFjMTEwOWU3NmE3NThmOTRkNzJiNGE0Mjk5NjNmMmJiOTcwZj=
BhNjMzODdkNTA2NjMwYTBkY2Q4MjgwYWZlNTQ0NTA5ODA4MTVlNWNlZmI1M2ZkM2UxMTI1NjA2Z=
jIzYw=3D=3D>
   About Us
<localhost:1333?u=3DN2NiZTc1Y2Q5MTU2YTM4NTAyMTYzMGNiZTgzYTBkNmQ1MThjNzhkN2Z=
hNTQ2ZjZkODllNjM3ODRjNGQ3NDVlMDQyN2IyMGVjNWFhNDRiYjRkOTFmZDg0MWIxNTE3YmY4NT=
UzZDM0ZjQyNGZmNGUwMGUzN2UwOWIzYmQ3ZDg1ZmNmYTQ0YWIwYTllODZhNzdlYmJkMjNiN2Q5N=
WRkOGM5OTUxMjg5OGE1NTc4MTBiM2VmNWI0YTZmOWNiZTY4OWJlYmJmYjM0NjdhZDJmZTYwNjZj=
NGQ1YTNlYmIyMTVhNzYzZjU1NzgyMTE2NmVhYWMzMWJjZTNlZWY3MjMxMGUwNzFkMWY5NWU1OWZ=
jNDMwMGM2YmY2MGNkY2ZiMzgxMDVjMjg4NmQ1MGQ2ODE1N2U4ODQ1OGY2MDVmZTA4Y2FjOGUzMz=
RjY2U3NTY4YzEwMDgzODczOGFmNGE1ODVmYmZmZjE2YzgwMjY5YmUwNzRjMTQ1YTY0MjM5NzAzZ=
DViNQ=3D=3D>
   Customer Service
<localhost:1333?u=3DZTlkM2IwZTJjZTRmZWU1MjkxMzJmMmRjMzBlMWJjZWJhMjU1YTg5N2Y=
3MzUyZjQ1NDFkMDgyMjlhNWNmZDZkZjc2MWNlYjQ4Y2IyZWNhN2RiZGVjYTk2NTc4NTE4N2Q0MD=
RlMzJmNjdiZDVmMDUyMDA4MjA2ZGU2NTljZjk5NDBhOTQwMjM5NzUzNDRjZjdmOGFlYjk3NjU5M=
TBhNGZhNjY4OWZjN2U0MjVmZjJmZDlkZmZlMDMxMzEwOGU0MmY5N2Q5MjBhMWI0ZGU4MTdiOGRh=
ZTAyODAyYjRlNjg0ZTIzOGI1NjdlODlhMjlhOGQ3NDQ5ZjIyZDMwOGExZDM1YmVjYmZhNWRkNTk=
yMjljNzYzMTgyZDRmNmY5MTM4N2ExMGFhZDhkZmRjNWVmYjg5YTkzOTJmMTBkNGU0YjdkYjU5Nj=
YwZjAzOTNmMTNhZDk4ZTEyNDU1ZTY5NmQ4NWEwYTI5ODNkYmNhZmQ0Y2NkOTVhOTVlNTQxNjYxO=
DQ0Zg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMDg5MzA3NGNiNjQ3ZDU1MmYyNzc1YmE1YmM4ZWFiOTA4MDYwYzUwYWZ=
hNjZkOWE0N2ZmM2VhZmQ1OTlkNWQzNGIxZDQ1OTRkYWMxMTE1YmJmNTEwZTU0MzFhYTgxZWUyZD=
k2MzNjZTU3NTFhNTZkYjNmMWJmZGQzMWNhMzdmNDRmMDBiMGI1YTkzMWE1YmJjYmUxMTI5NTBjN=
GU0M2ZiNzUzM2ZhMjFlYWUzZjA2YWRjYjkzYWIxMDAyMzE0MTU0YTE0ZTVkNDMxZmMyZTkyZjMx=
NTYwOTQ2ODgxMTQ3MmRkM2VlNWQ0ZTIwZjBjMjEwNDE1OTQ0MzM1ZmZjMTc=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DODE4N2JkZjg5ZTYwMDZmNDNjZjFmMjI0ZjVhMmJlMWQ3NDAzNGQ3YzN=
hOGI0OTk2NWJmN2EyZTE1MGFjMTVkMzhiMGQwMmUzYzZlY2E4OWNiM2FjOWJmMzQyZWFmYzE5Mm=
U2MTVmODZhODFhNzQ3YjI3OWRmNmMzZmU4ZWE3Yjg3ZTYyYmY1YmMzNjBhZjljNmRjZGU3NDRjN=
GJkMDEzNWM5NDQwNmY3Y2QyYjYxM2M4M2RkMzNkMWMyN2E4Yjc5NjlhN2Y2YzE3NzAxMTU0ZWFl=
ZDhlZmE3NGUwNDAxNzFjZjE0ZjQ5ZDVmYWZkOWFlZDRkNDY0NDU0MWJkMDI5MWQ4M2Y3MTZjZmN=
lMzlmMThiY2I3ZWFkNzJkYTAzMzc2NjFjMzQ2Mjg1NjliYmZiYWJlM2FmZTU1ZGM1ZmYyMTRiMz=
QyZGIwNGFmM2JkMjM4NmE0NWJkZTk4NDNkMDhlNTY2OTBlNGY5OWY0NGIyNTYxZmVkMmQ0MjA1M=
mY5Y2M3YjlkNDYyNTMxNTAyOThkMDFhNTU0YWNiMzJhNTk1NTEzZTQxMmI4MGIwMjBmNGU0ZTc1=
MzJiNDQ=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYTUwNWEzYWFmZjA1YmVk=
ZjA3MTI4YzdmNzZjZTg4ZjI1ZGU4NTQwZmI1N2IxZTY3MzVhMzg3MmZkNDk3N2M4YjBjMzdlNmR=
jZDM0NGJjZGNmM2Y4Mjg3YmE0NjgzMTdmNzc5OWZkNDBhMTZkNjQ2MDZkMmUwYTIwOGNiYmM5Mz=
JiNzZiZDY1YjNmMzkyMTc2YjFlMTRhNTA4YmU5Mjc0ODMzZjVlMThhZmI3ZmNmMTU2MjdhNzFkO=
DZhNGJhZjliMGZjZDBhOGQ2YjU5NGE2ODk0ZjllZTA2MGI3MzVlODk4MDM2NDExODM0ODFiNjEw=
ZTkwYWU5ZTc0MDkzMGQxNDY1MzJiZjdlZjY3M2VkOWE5MjdhNWM5M2VhYjdmZGE4ZDI4NDdjZjk=
1ODlhNDQyNGQyZTlkMWNmMGZjYjZmMzc4ZWJiODM3ODJhYWQ3YWY3N2YwZjY4ZDUxZTU0Y2ExYz=
E0Y2M4NjZlMjdkZjE4MDIxNDA3NmMyOGUy" target=3D"_blank">
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
?u=3DZDkxYzc4NTZiYWM5ZDljOWNjMWVkYzU4NDhhZjNlNDBmOTUyMzJlNDc0YjBhYWU3NmE2OT=
djMmJkYzQ2ODI5YmFhOTIyNTgzZTMwYjc5MTcwYTg5ODc1NDI3ZDc2NDA0Njk4MzkxMzg4NTE1O=
DU0NzMxZGY1YjkxMGQ1MTc2ODJmMWI0ODk0ZWJjNWQwMThlNzFhMDY5OTJiNzk1NTJiOTk4ZDhm=
Mzk1MzIwM2FmNjIyN2Q2NmVmZDVkMjdhMWI2ZWY5Yjk2ODlkYTRhYzI3Y2Y0ZmM2M2E0ZGY1MmY=
3NmVhMDAyOWM4ZTczY2I0NmY0ZGZlNWMwMzE2ZWUzYWM4ZWM1MjJjMDIxODE3ZDUyZWRjYzIzMW=
M5MmIxMjg4ZTBlNTUwNTgxYzM1Y2FmMTU3ZTJkMjAyODJlOWYxNjYzZDI1NWMxMDJiNmM1NmY1M=
Tg5OGI4M2FjYTI3N2JhMWEyM2Y4MjkyNTg3MjJkNzg2ZmVhMjI0MDczNzc2" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DYmMxNTc2M=
Tg3YjAwYmQ3NDg4NzFhYThkNWY5NDk1ZDE0M2M0YWZiNTBhZGYwMzhmOTg2YTYzNDc3NDE0Yzgw=
MjI5ZTFjYWM0YzA0ZjFhNzg0NjBmZDJhOWZiOGMxYWQxMWI0OTgzMWY5N2FlNDFhNGZhYmY3OGN=
iNmM4MTlhNDA2OThmYTI3MDA2NDg3MjE1MTJmODY5ZjhhOTk1YzZhYTBmNjRhNjNlNWQxOGMzYT=
BiMjZmZDI5ZTRiOGNlYzFkOWZlYmZkNzZiNDNlMTgzMWU2MTE1YmQ5MWFhM2M3YzFmOTk0Mzc4N=
ThjOTczOWE1NGJlMThkYTIzNjRhZWYxYzdjMzQ4YWJlMTExYmNmYmVkODRkZDM4ZTZlOGI0NDZh=
OWIwNDIyMDJkOWExMmMwZWZkZWU2NzY5YzI0ZjMwNWU5YmQ0YzI3ZTg4MjVhN2JjOWQ5ZGNmYTU=
3ZTY5NDgwZDhjMjE4OGNjYjRhYzEyYzU3YzM1NzU3ZWI1" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZGU4ZjQ=
4YWMxNWY3YzFiMjMwNmY3NTkyOWFkNWQyZWM4YjYzY2E3MzZhZDIzM2NhYmExOTZhMGM0MDFkZD=
Y3YjM2MDEzZGJkNDA0NTBlMjUxOTBlZWY4NmI5OWE3ODk0NTRlNTU3M2NjNmQzM2Y0NWI5MjYyN=
Tg2NDhjNWQwOWE4NDVmOTVmOWZhNzU3ZDA0NWJhZDc1MGY2N2Y5ZDc3YTI0YjMxZmE0OWM5Y2M3=
YWU5ZjlhZGY0MjA4OTU4YzBhZjg1ODQxZDQwMWRkZTk4ZmVmMDI2NDkxODkwNzg3ZjhiMjhkN2F=
iNWJjNzg5OGI5YzhmNDc5ZWIyOWU3MWMwYzM3MWZiYjA5OGUwODhlYjU5M2M5ZDVlZTgzMDBhNm=
VkYmU2MTM2NDU5ODRkNjBmMGU0NDJhYWQxNTM1MDkzNWMxMThlYzVkMDJjMmE4OGNlY2I4NjExO=
DgxZWM0YjE2MjViYTYwMDg1NDI4NTY4N2ZmNTk1NmFlYTIw" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNGY2MmY1MjMx=
M2M2YmZjNmMyYTRiNmRiYWEzNzY2YTBkNGM3YWQxM2ViOTNlNDBmY2Q3MTFjZmFjYjFkNzJkNzh=
kNzIxYjRmYjY5N2NhODliNzRiZGE2MDliZmNmNzhjODEwMWE4ZTAzOTI5M2U0M2QwNGE5Mjc3OT=
Q2NjM2YWU3ZjY0ZTRmMmMxNzEwZWFhNmY3NDg2NzAzZGYxYzQyMWI0YzllZTJlZmQ0ZjFhZTA1N=
2NjNThiMzZhMDcxMTY0YTI5MTgyZWE5OGYyYTAxMjdjYjUxOTViNzczMmRjODg4MDNmM2EzZjQx=
MWU4NjM4NmM1NDM0NDg5NDViZGE5ZWI1NjE1YjhhMWQ5YTU2ZDIxZmRhM2U4NDRiNGUwNzY3ZDR=
mMjM2YTBjMWQ2OTgzZmI0ZmMwNjk5NzEyZTZhZGQ3NWIwOGNkODk0ZjlmYTczNjY4YmVkMzdjMD=
AwNThhODc0YWFmNzc3ZThmODMyYzc3MWZjYjkxOGQ2" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMWU5ZTUxMzI2YTZiY=
2ZlMGViYzAxMWY2YTkzMmYxOTI0NDdjOWRjMzc4ZDFhMjEyZWE0YTYwMDQ4MDhiNzUyODZmNTJl=
ZThlZWQ5ZmRkMDFmOTNkZjc4OTNmMzk4MDFjNjZhOWUyYjQyYzM5ZjNkMjA3MTEzOTAwYmQ3MGY=
3ZmY0MWIyZjY2ODE1NGRkMTdkMzdkOGRjYTAzYjA2N2I4ZDRlYTJjNDVmNWM1YjE4MzZiZjRjMD=
ZkMDkxYjY1YTE1Mzk5OWRmZjcxMjM4MDZiMWJjOGU0ZDRmY2ZmZjBkNmNkNzk5YzVlZmNlY2Y0M=
GI4NGY2NDc5ZGU5M2Y2NjlmZDdmNjJiMGRiZDlkYjVlMTY0ZmUxMGMyYTU5ZjFkYTI0NzZjMWI3=
ZjhkZjA3MWVhMjAxYWQzNmQzYjhjNWZjN2U3YzZhN2QyZDg1MjBkNTczNWRhZGYyYzJjZWUyMmE=
5YWJiM2U2YjFkYmNlMGFlODI2MTg4MmFhNGM2" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DZjg5MWE0ZWZmO=
GI5MDQxZTZiODlkOTYxMDFjNTkyOGE2YmEwZGEyYmMzMjczMmI5ZDMyZjNkOTlmYzE5YWE1NjBj=
ZTg1MGZlOTc0NzFhZDU1NTY4NTdjMjdjYmExYzk1Zjg0ZDNkZDVjNTMzNDM4OTVkZjc4ZGYxNGV=
jNDY5NGU5MmZlYzgwMWQ3ZTQ2MTFhNDU2ZjlmNzAzNjZmZWQ3OGVhNzVmMWQ0MWYyZjRiZWQ4Mj=
E3NGE5ZDFkOWVmZWY0NjNiMjhhOTg2YTJlMzcxZWUxOWE2Mzc0N2E5ZTNjNDhlMzYxMzQ2NTk5Z=
GRlYTdhYjUyYWRkMjMwMTAxZjY1MGE3NWM1YzU0MTg4ZTQxMGZhNjc1ZjA0Yjg2MzhiODI1N2M5=
OTAxMTQ2NDkzYWM0NWJjNDdlOWE4MTc1YTRlNzI2N2QwYTNiNjk5ODNhNjEzOWM1NmJmZTE5OTV=
lZWVkODUwNWRjOWQ0ZTI5ZGQ1YWM0NDA1NTdlYmY5" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNjdhOTl=
hYmM4MjY1MWQ5MDhhNjNkYjMwM2NiNmZlMGJhMDUxMGQ1NmEyZWRjZTJiNmUxNjhiODRiZjc4ZW=
U0NGE3OWFiOGJhMzFmNTYyNzU4NTgyYTAzYzhjMzI4ZDU4ZmVmN2Q0YmI4M2I0ZGJiZGM1OWQ1M=
2NlOGIyOWM5ZDFkY2U2NDYzZDQyODMwYjA1NDFjNTk1ODlkNDFjMDBiZmU5NDI4MmZkMWM2YzY4=
ZGZkOTZhYTMwYzhmYjkxZGRlMzQyZTk5NjAxZWUzZjQ3MDRkMTVhMGU4MjlhNTEyNTFmYzZkMWV=
hYmM5Y2Q5ZWQ3MjdkNTc3ZmM3ZmQ2ZmZlODRjODk4ZDhkZWE5NTQ3OGI5Zjk0ZDk0ZDk2MjJkZm=
EwMzRhMzFhY2E0YTI2YzA3YjZhYjQwZDY5NDBhYzg2MDRmZmRkN2IwM2Q4Mjk4NGViY2U4NjJhY=
WExMDczNmE2MTIxYTgzMjFkZWUxZDBiMzE1MDE0YTM0MjA5NjhhNg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMDdkYmU5NDc3ZjJhYzI5Yzk2MmNhNW=
JiMDcxMjVlNDNjMTVjZGYzZWM5MzIyNTUyNjk3YzkzYmExNmIwMWUxMzZhZmYzMjY5MTA2MGYwN=
jlhMGYwMWJlMzk2YWMzYzNiODUwY2Q5N2FmMmU1N2U1NzU1ZTkzMzQzMGRjZmU2MTk3MDMxYjA2=
ZmE3MzM4MDc3N2Y4Y2EyZmFjM2MyODVhODc4YTlhMzQ4ZDQyOTk3YjNjMThhYzZiNTI1Y2ZlYzM=
5MTQzNzFkYjM1ZWJlM2NjYWI5MjFlMGJlMTMwMzVlOTBmNjMzMWEwY2I4MzRkNGU2MzBhMDBlZm=
ZmYWYxMWY4ODBkOTMzZGE3MTU0OTBkOWYzNGNmYjMwNzJjOTYyYTcwM2EyMmMxOTdiMjdlODIzM=
TYwODgyYjA3M2I2Y2E0M2E0YWZhMDZmMGIxZjIwODk5MmQxMjhiMTkwNTIxNWQ2Y2IyZDE5NGJj=
NTEzNjE4MjNkMTA4YzJlZTNh" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMzBiNDc2ODBhODM1YmU4NGViY2MzM2=
UzNGQ5NzA1ZjUwYzY4MjUzN2U5OGU0ZmM3NzRmMTMyOTY3ZDZkNzM4ZWY1ZjgyNjIxNDRiZTRjN=
zhiYmFlNDg4N2EzMWFhZWQwNmMzMjMxZWMyYzU0ZjEwYTI2NTFjOWMxMTMxZTU3NzZiZmVlZjBj=
NTAyN2IwZDlkNjRmZGQ4NDFhYWYxMzZiYzg1OTI2OGI3YjcyOTBlZDJkNTVlZTJhMTNmMGMxMTI=
2NWVmZWNiYTRlZGY4ODgwMDAyY2FlZWI0MTg1MmNjOWMwMjU5YTVjN2ZhOThiMzc0NTdkMjNlND=
VhMjBhOTYzN2QyZGU2NGYzNDc5ODEzYzJhNmMxYzU1MGM0MmQ1MWUzNmYxNGRiYmE0ZGNiNjAyM=
WJiZTlhZmNkN2ZjZmZmMjM4MWRhNmVlZTE5NzdiYzNhYjc1NTYwNmFmMWZlYjRkZmZhM2NlMjA5=
MTFhNTQ5ZGQ4MmRlYWE2OGQ4" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZGFlYjExNWJmYzM3=
M2M1MzRlMDdkNmE3NDQxZGQzOTZmNTdiM2E1YTFiMDQ3NGE1NDlmODZjNWYzZDFkZmFjN2ZjZjk=
2MWRiZDk0OTljN2E2OTk1MDI5YTFhOGNjODUwYWE1YWMyNmMwZDIyZTVhMWY3NTYxYmMwZWRmZj=
NlZTllMDlmZjE2ZTUwYTMyOWJlODZjZjRiZDg3YmZjYjgxZDA0N2I2NjQxZGFmZGRjODFiMDcwN=
DkyZDVjNjc5NmJhOGQ5OGUyYTA5YmU4YjA5YTZlNTgwYTgzY2ZlY2JmZmJlZDk1ZjBmNjFlNzA5=
YjcwMjI2YTY4NzAwN2U3NzA5Y2QxNmY4MWM5ZWViMWZlZDk5NzIzNzJhNmNlYTRkZjM2YjNjN2V=
kNzkwOGI4NmJiYWExOTljODM3YWNjY2IyNzFlODQ1ZmVkMjQxNmY2NmM5YzdmNThjMzkwNDExYT=
RkNGFhZDU2NmY4NDRlMGRiYTRiNjhlOGVlZGViZmRhYg=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNTMyMWJiMTliYjYw=
ODE4YzM2MWEwMGYyZTk2MTg1MmRiMDY4YmY4YWM5NDExZTc2NzFlMmY4MmRiMjY4MDUwN2E1Zjc=
2NTIzMWRjYmQ2ZWU5YTBkYzNjMDQyNzFmOWNhODdmMWNmZGUwMzYyNjBmNWI4N2I0NDVkOWIzZm=
EyNmY0NGM3Mzk1YTU5NDdkYjVjNDI0MjEyMWFlNGQzOWNmZDIxZmE2NzUxM2I0OGE3NzkyZjNjM=
mYwZTJjNWY1ZDc1MDI2ZGJmNjE2Yjc5OTY0ZmM5MWI4MjA5MzZiOWU3MzYyNTAxYzhjNGVlOTRk=
OTVjYjYwODBkMDEzODllYTA5OTY2YzJiMmU5NGFiMWMzOTFiOWFmMmM4MDAwYjY5MWIwNjVlMDU=
0Zjg3NTIzMmZmZTU2ZTNkMGYyYjA2YTFhODdjN2I0N2ExMTQyYzhhYzFlYzE5MTA0OWU4YTlkMT=
VhMWE1Nzk4Yjc0OWZiYWZhNmUwZmUyMzU2ZmEyNmQ2MQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGIzZjZhOWQxYjUx=
N2EyYjBhMzlmZDEyMzQ1NmZhZDA5ZDhkYmQyNzY2YjNhYmFlOTUzMjM3OGYzZTMzYmEyNGNjZmY=
wMjk0ODQ5NGU3MWY0OTE4Y2MxMjQ2ZWQ0NzEyMzFjMzU4MjdkZjE0OTVlMGRkNTMzOGIwNjYyND=
hmMmM2NTlmOTUyNmM5NDliMTQ5NmU3OWY3ZjFlN2I3MWFjOTc0MTBhYTg4MTNjNDU3YTUyNGY4N=
jNlOTRhNWRkMTQ2Yjk1OWU1MzQzNmY2YTcyMDgzODk5MTgyMTY0NTA4NDQyNTc1ZDRiNDlkMWY3=
ZDBmYmZkZTIwZjBlNzQyOTUxZWQ1MmI4MWZhNTY4YjhjODg1OTNmYTNjYmJhNzI4YjY3NjEyN2V=
hZWFkNTM4NzZiZTQ4NTE1NzQ3NmFkMjJiMTU2NjcwZjAzNjZmZTFkOGU2NmEwYmJhYmVmYTUxOG=
MxZTY0ZWExYzU4ZTk3YTUzMWFiOGIxOTMzYzA1NGU2ZA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMzY4ZWZjZjFlZWEz=
YjFhODcxN2I0YmViZjI3N2M0MzIyM2JlZTA2OTIxN2E4MmViZjEzMjE2NjJlNTNmZDcwODNjNTI=
0MWE5MWY1MWYzYjZkNDgyZTEzNGE0OTNlN2M0M2FkOWQ0MjVlN2JhZjcyNzQxYzk0NjJmZGM5N2=
Q3MjNmYzczZDg1ZDc0ZjA2NGI1MTgwNTlmYjNkYTExMjY2OTg1Yzk0NjdlMTJiZGNmZGFlY2I1N=
2M4NmE0NzAyOTlmNTM2YjRjMDg2ODIzYjI0NDc3YjkwY2Y5OGNhMTk0MGUxMjNhYjc1ZGZkOGQ0=
ZWY0MDI1OTVjY2IxYTRjZWRhMzE4NGNlYmQ2MGE4ZmMyMzViOWFjOTVjOTVjODVmY2IyN2M5MmQ=
3OGY0MWZhZWI1OGYwNGZlODcxNmIzMGRhOTFhZmMzNDI1YzQzMjQxYWZkZjU2ZjJhZmE2MzcyND=
EzY2M4OTZiMjQwN2JlMDg3YmVmZWYwMGZkMzUyMDRmZQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNzIxZGY1ODMwY2IwZW=
VmMzNiZjc0NjljZDBjZGFmYzZlMzhhNTA2MjMxOTA1ZmRlYWM4MmFlOGUzNjEyZGZmNjZkMjFiY=
zg4ZTZiOTUyZjA2MGM1MDlhMjQ3MmE4NWU2NmI4MjBlM2MyNzI5YzI2NDQzZjA5ZmVkZTUyZWJj=
YzU0ZWVkNTI2M2JkZjQzZGFhNzEwYTA4MDg4MDUzZDBiYzA0MzRiOWQ4NGVkYTUzNGE1ZjgyZDB=
jNjQ3MzQ2NGZlNTkzZDUzOTJiMGVmYjcyNGRkNDI5YWZiNDQ1MTMwNmQyOWJiYWI0YWYwYTgxYz=
VkYWNkYjQ1ZDEyZjE1ZWM3OWMwYTQxZjRjYTg5MWY3MGMyMThlMzY1NTBhYjNhMjIwNmQ4NTZiO=
DU0ZTYyNjY5YTQwMjVlZjRiMjNjZTRlZDEzNmE0NDAyOTg3NzQ4MWJiOTQ5MDU5M2U4YjdlOTRi=
Nzk4ZWFiZjhkM2UwOTFjZTYyZDViMzEyYTkxM2QyNg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMjFjZjZlY2JkNTdl=
MzIxMDY0YTY2NTg3OWM1ZWE5MmFkMDZkOTE0OThjMzExNWM3MzQxYzA4NDExOTEyNGM1NjkxYmZ=
iM2I4MDA5MzU0OGMxYzVjNTVmNzRjNjkyNzRlYjc1NzFmY2ZhMGQwMWRmM2YxYTI2YjhlMThmYj=
BlZjMwOTAxZGE4MWIzMzljM2JjNzBkMDFlNzRkZGFjYjU5NmIzMzA2ZGQ0NTNlODQ1ZmQ3MGU1Z=
TFjYmRiZjVkN2ZjMzZhNDQ1YmNiMzcyODUxYmViMWQ5ZDUyZDU2ZWZjYzRmZDdjYzI0MjhjMGZj=
N2ViMTYzMzE5NDFkOWI3NmM=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DNzM5ZjlmMzc1ZDhhY2I5Zjk3YzM0M2U2MTY3Y=
WQzYTEzYmVlZDRhYTAxZWZmNDRlNDIzYmFhZTIxZDBlNDA0OWQwMjczZmI4ZDJlODEyYjE1Zjg4=
Y2Q4NDM3Nzk3M2RiZjM0YzExMjFlOTc0M2RmYjA4ZDBhMWJlNDc1Y2RmZTA5ZjY1OGI3ZTRkMTc=
1YWMxMTkzMzE1MTEyMzVlN2VkNmU4ODk0MWNlYmRjNzE0OGJiYTUzNTA3YzkwODAyNjY3OTY2ZT=
QwMjQ5ZjY3M2YxNjYyZmU4NzU4MTYyM2ZmMmU3OTIzNGNkOTFiMmQyNDAyM2U3MzU4ZTMzYzhjN=
WVlMGVlZTU5NDE4MGYyNTlkZDVkODI5YzI3OWRlNTQ1NzdkYTQ5NWQ1NTk0NDA3OTc1YTQ4MmI4=
NmNmOTY5YWZlMWU4M2QwZTdhY2I0ZDk5MjE5NTc3Yzk5NWFlZDlkOGNlZWQ2NDRiNWRiYmU3M2U=
xMWY4OGZhYThiYTY3NTM4OWVhMzU1YzBiNzk5ZjdiYjMwMTk3NTkwM2VhYzhlOTE2OWYzOWMxOW=
E4ZmM0YzBmMTUyNGRkZTEwNDc=3D" style=3D"font-size:12px;line-height:134%;font=
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
