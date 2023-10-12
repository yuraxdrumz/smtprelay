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
From: localhost:1333?u=3DZDk0YzZiZjI5YWRmM2I2ODExODFkODM1ZWM0MTAzOTE4ZjYzYW=
JlYTM1OWIxZWFmYjVjOTdmYTk2MDMwYmEwZGJmNzRhMjhmNGY1ZDlk <mail@eg.expedia.com=
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
<localhost:1333?u=3DODcyN2M4YjI1ZTM2YWVjZjBiZGVhNWQxNzc3MmMwNzg2OGM0NjVmMTA=
4MDFlOGNlYmY4YzY2ZTcyZGVmNjM4YjcxYmExOTlkOWU2OWZjYWQ5MjU2ODE4Y2ZhODQwMjY1OD=
ViMzJkYmIxOWE0MDYyMDgwZTU0YTViNzEzMWZmZTJjODVhZjc5MDQ0ZTc2ODVmMWVkNzQ3N2Y4Z=
TlhMWE0ZDUyZmIwNGE2MzEyMjRlYTVhZDlhOTAxODg0ZWQzYjU4NjM1ZDgzNGM1Yjc0NDVjYTNl=
MzRlYWEwMDU2YmFhODZhODJhOTNmNjJlMmUzMTI2NjIyNGJlMTg5YjIzNTFmOTUwNDIzOWI0MWU=
4MzViNjc3MjNkM2JmNzY5ZTZiZDU0NGUzY2MwYWI1YWMzNmM3MDE0ZTkwOTcxMjA1Zjg2ODc1Yz=
k3ZGE3NWY3MzRiNzE3OGE0NDI4Yjg5NzQxMzFmYzczYjUyMGUzYjUwOGE2MDI0Y2FiZjdkMzM0>

* The Travel Edit
<localhost:1333?u=3DMDU1NDhlYzZiYjViYTI3OTgwODEyMjJjYTJjMzZiODkzZWU5NDRjNjc=
wNjJiNTA4NmY1ZmYyODgzMGE5OWYzNzU5OWQwY2M0Njc5ZGI4MjgxY2RmOGIxYWMyYTdiOWFmYT=
VkY2ZkYmYxYmZhMzExMWUzNGZkOTA1MGFjMDA5ZDM5OWYwMDQ5OGM2MGVlOGNhNzUwMGFhYTczN=
2M1OTYxNzc5Njg0OWM0OTIyMzE5MjA5NWJlNmIxNjhmMmM1OThhOWIyMjUwYWE5NDQ0Y2YwY2Zi=
ODZjYWJmNGY1NDRjNTNjMGMxZDY0YzAzNDI0MTc1ZTFjNDMyMDAxNjhkOTVhODhmMGRjMDgxZTQ=
0OGFhN2YxOTM1ZjUwM2EzYzA4YzE1YzZkMjkzYjhmZTYzNzRlYjRlYWVlZmJiOGVjMjAyZTc2Mj=
YzNWMwYzQ5MWUwN2FhYWY2NmRlOTI0NTY3MTdjYTk4YmZjYmUzMTk1YWIxZjdmMzEwMGM2ZjRh>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYjY5MTZlYWJiMjU5Mjg5MWI1M2RjZWNkMjU1MTAzZTYyZmVmZTRkM2E=
3MzQyMTlhNGI5YTc0NWUzZDMzYzM5ZTgwOWMxYjMwNTliOWJlYTQyYTQ4YjkwNTkxYzBhZTRhNm=
RkZGY0NzE0YzRiYjQzYjBlZDQyMjNhYTkzMGQ4ZWFkMzMwMmYwZDFjYmMxMmQ5OTYyMjYzNmY1N=
mM2MzBmZTM1ZTg1NDZmMTRlZTIyM2M3ZWM2NDZlM2QwZDM0OWRkN2JhOWMwYzRmOTI5MDdiNmY5=
YTUwOTA5MDg5ZjdkMmE5M2QwYmUzOThmZTBjYjYwMmFkYWY3NjI1MDFmZGRlNzg0MTdjN2M0YjY=
yZmYzNmYzOTliZTc1NTNlOThhNzNiMTdhODE0MzZiM2IxZGNjZjNhYzE1NzBkNGVkZDZhYWNjMm=
U5ZTg2MWNkOTUzYmY1MjI1YzE5Yjc0MTQ1Mjc2YTk2YzlhZDBmNDdmZWM4YTBjMGQ0N2Y2MWI0>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNjZlYWY3YjBlMmY2M2IxNDlmNGRhMDAyNTE3NzQ0YjlkYjE2ZmY1Zjc=
1NjE1NzNlYzUzMzBmOTU4NTg0YTg5YWFhN2VmODgyYTc0NWYxOWRlOTI0MDFjOGVjMjA5YjNmMD=
Y1ZjRlMDAyYTkwYmY4NTU3ZjU3OWNhYWNiMGYxMjY5MzMzYTc5YzNjN2IxYzk3NWE4MWY2OWEyO=
TU2NTM0ZDQ1NGY0NTgxNzQyZjc1ZWNkMjhlNGI4ZTEzYWE1N2E5MTM5NmQxMzZjZDU1YmViZWUy=
ZDhkOWEwNTY1NzA0NzRhMzNmODNiZWE3NWQ5MWZhZGRlMmYwNzVjNWY0NTcxYTMzYmQzZjU2YTQ=
3NDQ2OWMwMjI4ZDg4M2Q0YjIxNzNkNGQ2MjcyOGM4OWUxNzkxMTM4NDA3NTJkMjRlODQ2ZjRjY2=
QxNDYxYTI1N2RhMjlmMTNhYTQ1ZWI1YjBmMDEwN2E3ZmUwZjNjM2JmOWZlYmVmZjRmYWNiZTIy>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOGRkNDE1N2I2NDczODQ3YTM2OTNhYjI1OTIyNTY4ZWE0MWI4OTI4ZWV=
hYTYxZjRkNzE0MGM3YmNlZGIxYTAyZjk3MGZmZjAzMGQxM2Q2ZmU0MmY3ZWRhZDA3ZTI5OTc1Nz=
ZmODI2NmQ0ZDIyZmY0NTYzYjIzZTUzMTI5Y2NmZTRmNjhhMjAwNjJiNTY3YTJkYzhkMjRiNmI0N=
Dg3NjA3MzczY2FjNzQ2ZDg1ZDYwNTdkODZhOTc1NjYxODFiNGY2NDQwNjAxNGQ3ZDYwMzQ1ZDRk=
MTU5YTg0YjQ1OWE3NDU3NWYyNTVkZDY1NTA4MzY5N2ZiOGQ4ZDcxZjI5ZjI2YzExZWU2MjhlMTF=
lYjg0N2RjYWIyMTJlZDRlNWVhNjRmNmNiNDkwZDk0ZWJhMTYwOGVhZTFkYTM2YThhNTdmZWFhYW=
EzYTk2MjBiZjIyMzJhNDAzM2E5MjBhY2JkNjc1OTc4NjcxZThiZTVmOGNlZjUxNTJkMDM3Njgw>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYzcyMDNhNjBhNGQwM2YxZWQ4MGZiNGRmNjY1YzllYmY1MjhhMzk0ZjI=
1Nzg2M2NlOTYzMTk2ODA1NzZiZGE2NDA3ZGRhYWY0NDA0MjAxNWViOGUyMjlmNWFmYzE0ZjIxZm=
E2ZmEwYWZjODQwYjM0OGVlNWUxMDM4MjRjOGE1MmY2NDIxZDM0YjVhODY4MzM0MmY3ZjQ3M2YyN=
jM3NWZmNDM3ZmExZTEwOWUxMjgxNGI4Y2I3OTFhYWIyNWNmY2M0NzBiNTJlN2QxMGM3ZjhkMzM0=
MWU2MzViZjFhNzk4NWIyOGU2NTU3YjRiZDM2NjM4MzgzMTc4NGVkNWM0ZDAwNjczOGFjMTA0MzY=
5ZGJjODMyNGU2MDdmMWRkZDllMzcxOTgxM2NlYzA1NmIxNDQyNDlkZGIxMDc5Nzg0M2U3YjgxYT=
c2ZGIwNmE4ZTM2MTQyMjYyZjMzZDc2MGQ2MzQwMTNlMjMxZjYxY2VmYzVjZTRlOTkwOWFhZDg1>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZmE1M2Q0OThkYTViNTc4MmI3YThmODhhZGRmZTVlMDkzMmZiY2Y0YmY=
0Mjg2NTc4Mzc2NDNiYzlkZmU2NWIzOWZjNTRhNTZjZTQwMTA3NDJhYTdjYjYzYWE0ZTZjODQ2Yj=
IwNWRmN2M4NjgzZjNlODQ4MjQ1NjVjYTFiZWVhNTA3MzVmNTAwYzg3NjkxMjBhMjUwNzI4OTU2O=
WEzNDM3ODQ2ZDA5ZjA1OTFmM2ZiZjNiMTAyN2M5NmQ4MmFlNDFiMDNhNjcwNDA2NGU3NTJlYzMw=
NDhmODg5N2U5NDM5YjNlMmFiODQ1ODM0NTliN2IyMDZlODYwMDg2N2FlNDA5YjJkN2ZhNGI3ZDk=
2ZGRiODZkMzkzZWE3M2IzNGFmZWJmOGZjZjUwM2U1NzY1MmM3NjI1NmYxNzUwZjBhYWJlYWU0Zj=
gyZjc3NGYyMjEzMjA2YzJmYmVhOGExZTY3YmEyMzdmZjBjYjc0NjY5N2FlOTI2NWU0OGQyYjYy>

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
<localhost:1333?u=3DMTAyZTNmMTRjZmYxYzAzZjljNGU1MmIzZGM4MDdkMTQ2MTVmYmVmZTN=
hYjc1ZTA4OWQ0ZjQ2Zjc3MzhmOTI5MTJiYzU0YjBmYTlhNWVkMDBlOGI2NmJkZGQ1NjZiMTg0MW=
IxMDA4M2NkMzAwMTRjMzM1NDA1MDM5ODIzNmE3Zjc5ZTdlZmU4MThjYTQxOGM4MDZhYTA4MTEwM=
zk1ZTg4YWI0YjJiOGMwMzU2Yjk0NmY0NTQzN2ExNTdkZWYxYzBhMGM1NzdhM2IwODYzYTlmOTNl=
ZmMzMmUyMWY0NTI0MDBkNTljMTUzM2U2ZDg1ZmQxNmU5NzJlMWE4MmYxNzJlYjFkZmZkYTNmYTB=
mYThlZDRjOTc2ZTUwMmI3NzkxZmVkYjYyOWEwNjY1MDkyZWM1MTQzYWQyNzBjM2U4MGI0N2Y5Nz=
k4NTY0YzM0ZWJmMmE2ODNlMmY1ZDAxMzJjODI4MGE4NjJlYTdhZjBmMDhhZTIxMTZjNzYyN2VlY=
zA1MA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DOTg5M2RmOTBkNmM3YmQ2NWY5ZDE3NDgwYjMzMGZiODk4NzI3NWVhYjZ=
kMjU0YjBkM2FmZDRiMGZiMmJiMzdlOTg1NTkzYjAzNWVjMzI2NjkyY2ZlMWViNGRkYTIyN2UyZj=
ZhZGM1OWE3ZjFkODc0MDRmYTM5NTUyYzNlNzM1YTgzMGU1OWUzYTA4MjlhYjA3ZjNhOTNkYmQzN=
Dk4NGNlMmMzZjkzMzIyMTVkNGM1YmQxNzJjOWRjN2UyYmVlZDljOGNjZTRkNzY1YzFhY2VkZGY3=
MmRkMTA4NDYyY2IwNDFmNjI5ZDA4YjQ0NjQ2MmNmNjQ2NTJlMjk3ZWY2MWQ1NDIyOTE3OTI2Mzl=
jYjNhYThhY2JiNGI0Njk2NTc5ZTBlZTM0NzhhYzdkZGY2ZDZjNGRlMjA3NzQyNDgzMWJlOTNmND=
A2ZmU0ZjZmN2M3NjE1MjFmOWVhZWE2Njk0YmM5MGNjYjA4NTUxZDY1ZjI5ZDM3NDkwZDIyY2Vl>
  [image: Google Play]
<localhost:1333?u=3DMjgxOWQ5NGE3NjcyNGYwN2Y4MTg5MGFhZmQ5NmE0YjZiMTUyYzllODR=
hOTk1NjY0NjA2YWRmMmNmNjQ4ZjBlYzQ1NjU1MTg5ZjFhZDA0ODA0MGM5ZTk1MGRjOTI1ZDZlMT=
MxYzk1YjQ1MGE2Y2JhYzI5YzRlNDg4NTVkYjczNjNhMTlmYzE0OTg5NjhiN2UzNGZlOTQyYmUxZ=
Dk1YjhlYzQ2NjkzZThmMjg2NTFhOTQ1YTk4NDYxMzFmYzEyZDYyZWJiMWFiNzVmNTA1Zjc3NTg4=
YzY1MzcyNWE3YzE2M2M1MDVhOGNiZWNkNTIzZmI4YTMxNzA1OTFiY2Q4YzhlZjIwMWJjNWFjODM=
4NGRiMDEwMTdkYmI5ZjkwYTFkNWUwNWEyODdiOTc5YzRjNDQyZDY3OTE0NWYwYzM0ZGM3MjAzMG=
QzMTE2MmE4NTNmZDljNWMyNzNiZGU1MDE2MGFkZDBlZDM2NTA1MDE5NzYyZjY4OGM5ZmJmNzcx>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNjc4NTAyYTgxYzA1ODQ4ZjM3MjAyZjgyMjBjMzJlZjM2MTQzZDc0ZDJ=
iYWEyMzBlODlmY2FjMWUwMjNiYmRhNzllNTQ5ZjA2YmFjNmQ1NDA2OTc5NTI4ZTY5Mjc2YzJjNj=
IzMGIzYWE4NmEyNjA4NWMyYWY4NmE4YWE2MmE0N2YzZGRjYmYxODBjNjhlYmYwZWUyZTIxZDhjZ=
Tk0M2YyYzkxZTAxZjU4YTJkMTIxOGYwMDE4ZjY3YTg3MWVjMTViNWQ3YzE5OTE4OWQzZjFjMzY0=
N2FjYTRkMjAyMjYwYmNiOWMyNGE3ODMwYjM0YWNhZTczNTc5MjlkMWZhMzkzZTNhZGZmOTM2ODQ=
3ZWI0M2IyMTkwNjc5ODFhZGUxYzAzYzEwYmVmZWU1MWI4N2U3YzIwMGI3ZmQ0NWViYjgxZjhhYj=
Q5MDVhOWY5YWFjODU0ZGQxMjBlNDY1Mzg4ZDExYzA5MjVlYzkxYzcyN2E0OTE0ZjVjM2ViODIzY=
zEyNw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZjA2NWUzMWUyYmRiYTc3NWFjYjlkY2JkNGEzZDE2OTY1ZDAzODM1ZmY=
5YzRkMjBkZmYzMmU0YjdmNzZiNmI4M2E4ODJlNmZmZTEyNjc0YzhlMGJmMzM1ZDNmMTI0MWE5ZW=
QyMDQ2YTQzNWRhOTQ4YzQ5ZDhhOGM1OGY3YmRiYTljYTNkMzBhNTEwODZjYjVhYzRmZTM3M2I4N=
mQxNTAzZDFhMDVkNjFiNzBjNmJkMzVlNTY4YzhhMGY4NTM5N2Y4NDhjOTU1MTcyOTUxNzAwYzk3=
ZGJjZDY2ZTEwNDFkYmJlMDk5ZDMzMzIyNmViZWM2MGUwMzA3NGIyOTQ0N2I3MWFmNDFhMTU1Yjl=
iYTE5NGM0YTM2YjQxNDBlNzBkNzBjYzdlOTg0M2E1ZTk5MWI4MGIxMTM4ZTRjNTNjMjliMzcxZj=
IxNjA1NmViYjQwNTM0ZjUxZDQ0NzQ2MjI0NzkyYTE2ZDEyMDVjNGI2NDg0MDBiNzEzNjc5Yzc4Y=
2Q1Yw=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNWM4ZjVmODU2MTA4YzJlNWVmNmFlNGUwYjUzZjViNzk4YmZmYzNhYzk=
1NzRmMzU5YjExZjEwMGU5YmY5M2JlNDAxYzUzZTUyOTg0ZTljNzU2Y2ZjNGU3MGMzYjkyZDdmZD=
k5MGI0MGZmMzBjZGIwM2I3ZThkMDg0ZDI3OWE3NjMxOGI5YjM5ZGE0NjZhZDNmNmVmM2ZjNGJhZ=
jhjMWEzNTlhNWExMTIyMDE5ZDFhMDI3NjY1NTI3Y2E5M2FlMGZhNDcxNjg0MjQ0NjliODU2MDBl=
YzQ2NjYzODM4MDJmY2JlNzcxYmY0OGRmYmU5M2FkMzFiZGFlZDA0NGM1NDlmZDQyZmQ3ZDk4ZWJ=
lNzBjYzNkZjQ4ZjIzODQ3Y2QyNzVmMTZmM2I1NzVhY2Y0NDZiNDdhYjQyMWVkMmU2ODVlZWQxZm=
NjNmYxZTFhMWEwMGIzODZkZjA0NzM0NWVjZDkwMjE1MjYyMmNhMmJhN2E5MDk0NzdkNTU5MDgwM=
2NiMA=3D=3D>
   About Us
<localhost:1333?u=3DYmE2MmUzMTA2OGIzMDExODA3NjcxOTA5Y2YzODIwN2FlOWRhMzM2MzF=
hM2M2YjcyY2FkYzIyNmRjY2RhOTg1ZDdkZTNhYmRkZTNlNWQyNjk1YjRiOTI0NzlkYzcwZDhjZT=
QwM2ZmOTM2MjhjOTA2ZmRhOGZjMmFlYjQ3NTkzNzE2Y2IzMzFkMWFmZjMyYjhmNWIwMmQ5M2RlY=
jJkMWNlYmI3NzkwMjg4YTVlYzEwOGMzZmU3M2YwODQ5YmNjYjk0ZGNiNjlmNjc5NGRiZTU4MjY2=
YmI1NjVmOWNlYjUwOGYwOWEyMzYzYTk5Y2E2OGJkNmUzYTgyMzRkMDJjMzYwYWIzNTQwY2Q5NWY=
zM2ZhNzlmYTkxZjM4YjZjOWM5ZTk2YzFmOWU3ZWMxMmJhNDE1ZGViYmM0NzM1NmM4OGI0NzM0YT=
c3MzAxYmMzYTIxZThlZTVjMmUyNjlhZTMxM2ZiNjliYWMxYTk3NTVhOTdhMWVlZGMwNmMzN2I4M=
GJiMw=3D=3D>
   Customer Service
<localhost:1333?u=3DMjk5OGZjNjQzMTRjNmM3ZjY3OTg2MDQ4OWE2YjNiMTYzMzQyZTNkNDl=
iODExNDMyMzVjYjE4Y2I2ZmZmZjk0NjYyNjE4MTZiNDc0ODFlYzQ2ZmY4YjA0NTI1ZmI1NDA0OD=
I4Yjg2M2E1MWZkZGJmMzcxZGNmZGVhYTNiYzcxZjY0MjU1N2FmM2EzZTM5NTA1ZTg2N2FiOWZjO=
DY2MzlkMmQ3NTViMWIxNzY2OWQ0MzBlZDUwYzdmOThlYjFlODhhODQ0OTM5OWM3MjhiYzRlNjdh=
MzVlMmI1MmJjNDI4YmI1N2UyNDg2MTg0OTZkOWQ0YmE2MGFhOGY0NWZjOTc4MmQ0N2ZkNzliMDA=
0ZDI3YWNjYzA0MzFjNTNhM2U4Yjk4NTQ3YjMwYjg5Yzk3YmMzMTY2NzViYWQ1NTMzOGM4MTRhMW=
E4YjEyYmE0OTM3ZmJmZDEyYTQ2YjYzMGY1ZTUzYTUzMDAyNGNiY2VmYjBjMzYwOTcwZjkxOTllY=
mQ5Yw=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMmIyZmQxYmQ3MTA5MzI1YmJlYzJhNmIzNjZiODgzNmZhMWFjMTRmMWY=
3Y2IxNDJmZGExYmQ5Y2UzMDA4OWQ5MjM4MzQ3ZTk5ODIxN2FkMjE2MzE0NDM3NTY2ZmM5N2ExZT=
g0N2MyYjllMjEyMjhlMGNjZjY1ODM0YjcxYzYyYzQ1NDRiOGU3NjMyYzBhZDRjNDYwMGJiZDZlN=
jY4Y2RiOWRkYTEyZGM4MjgxZWJkMzE4NmRmNTc4YTY0YTI0MmU3MzAzZjBiMzZmODE5NzIwNmE2=
MWZjOTllZDY4ZWZkZWM1NDBhZGI3MWY0YTBiNTU5OTQxMTUzNWI1NmVlZjY=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMGUzZTM0MGU3MGRjMGFjZGJhZDc5ODNjMjAwMGVhNjhjMjgzNDc0MjA=
2MmFiMjU5NDBiNmQ3MDhiYTU5MjllMGY0OTM1ODI2ZjgzNTJmODEzMzA5MTM1Yjk3NzllYTcxMG=
MwZDQ5MWE3YTlhZDA1OTE0N2MxYjJmOGE5NzY2MTE3ZWY1ZmEzMzM0Nzg1YmZjZTVkMTBhOTQ3M=
2IzZWFhODE4ZDc0ZjRiZDUxYzhkOWM3ZTVmOGQ1ZTQ0Y2Y4YjYwMDc0NDYzYzA1ZTZjYTgyMDgy=
NjRkMDRiZjBlYTE0OWRjMjJlM2U5ODM1OGZmMzRkYjcyOWY1ODRiZWQzNWVkNDBhNmVhM2VkOTF=
jMzk5ZTUzNTU0MTVjZTJjZmIwMzcwM2JlYTI3YWY5ZjNhZTkxZmEyYzI2YWQxNjkzZTFjZDlkOD=
BiNjBlZTlmMjk5MzkxZmQ0NjFhNmQ0NjhlYjA0N2M1NmZkZTQ1NjVlMzQyNDZjODhmMzAzZjMzM=
WFlODNkMzY2NjgyMWUwNDZlMGEzNTMyNGZmMTAwYzY1MDZiMDFhODhkN2YzNTliNWNlZTdhNDNm=
ODlhOTg=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZTVjOGI0N2ZiMTI1YWEy=
YWI5NGQxNzYwYzM3ZmE0YjFiMjRjODljMjNjOTkyMzdlNDZjYjBjMmRhMGY1NTM3MDZjMWMyNDV=
hMDZlMzQxMzcxN2NhMmMwMGFkZjY2YTk2M2U0Y2ZhZGVmODZjOWRiMWMyMjkzMDkzYWFmNzVmN2=
RlYWNmYTI5MmUxYzkzMWYxYmJhMWMyMTllMmM2MmZiZGFkNWUzNTI0OTRiM2RiOGU5NTEzYmVmZ=
GQ1MjE1NWM2ZDA4NTU1YjlmNjIyNjE1OWZmNTYxZDM5MDAyZjc1YjZiNzlmMDk2NmFiNDUzOTYy=
ZDdhMjJmZGI4NzdhYjE1NzMyYzk1MDU5NGZhZDVlNDUxNjg3YzE5NWNmMmU0N2FiMjRlNDllZGI=
3YWQyMDQzMDI4NTVjZGQ0Njg2NTIyMjRiNzY5ODA3OWQ2MTcwZTM0YTU1ODVkNDdlY2ZlY2Y5Mz=
I0YTA0YzQ2MzkxOGJkNDRkY2VlYWYzNTgx" target=3D"_blank">
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
?u=3DY2JlZjQwMzRmZmYxNzIxNWNlN2M2YTZlYTE1Yjk1MjIwZTFmMDdmYjRmNjFhNmJkOGI0M2=
ViNGQ0NzAyOWI4NTM3NzRjNTZiMDJjNTQ0Y2NiZThkNmVhN2M2NWNmZDUwNjk0MjU4NjU5NDFiY=
TJmYmQ0YTZjMjQyZDAzNDJiMzFlMGYwMzg1MGQ3YzJhZjZmMjA3ZmYyY2QzMTFhMGI0NzU3ZmU2=
NDYwOTRkOWE5YjE5MTQyMDhiMWVlNzQxNWExMWI4ODQ3MThmZWZmNThhNWQ3ZWI5Yjc0MWRjMWF=
lY2VhYTg1Y2U3OWMxNmFiYjg2MTNjZGIzMWFlODY3YTg4ZDI5MjI0MGQyYmU4ZDc1MDNmMTkyNW=
NlZjdiZDE0MzE5YTY4NTU2MWJjMDZkNjJjMGY2YWRjNjRkYTE4YTZmN2RkNjk0ZmZhZjgyNGRkZ=
jk2YzFhMDZkZGM1ZTMxNzI5Y2JmOTFjZGEzMTMyZTBmZGUyN2U4MDg1NWYx" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMGUyODUyM=
mVmNzFiOWE2NzA0NTJmNWJjNGUyZTM3OWExNDExMzBjNmMzMzM3MGJmYjY5NGFhNWVmNDM0NTBl=
MzQ2NTk4NTQzZTM4OGE3NGQxNjhhNWViOTViYTFiZDViZWYyNjdmMmNlZDE1MDIyYTEyOTI0ODg=
3NWU0NThkYjc4OWU4YjVmYTMyY2VhYzgwMzkzNzA1OTc2N2ZlZGQ1NjI3NThjMDA0OWM4OTRhNW=
UxZjdjMzFhN2Q4MmY2ZDIzODYyMzgxOWZhYzhiZWIyNGJhMmEwMTliZDNkMjZjMzIwYzJmZjFlM=
2QwMTQ5ZTAxYWZhNmMzNWY3Y2NjNTgyZmMwMzE3MTI5YTVkY2VmNDM1NzYxMTgyZjM2ODMzNzg1=
MGNhYTgzYjllYzhiMThiZGQ2YzdiNzhlNTIwNzVmMDQ0ZTYyNGYwMWIzYzgzYTlkNTViZjBmYmY=
wZWIyZmUzNmRhZWVkNzI5YjUyYWJmMjlkZjE1YzA5NTBh" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DMjMwYjA=
xZDMyNjM5ZmE1ZmZmZmU1OTAwYjNjOTUzMDNiYzk3NTkzOGM3Y2Q0ZTU4MWU5NjUwY2ZmZDJhMD=
gyNWRjY2YxZWQxOGVhZTYwNzEyMGQzNDYyYjBjZDRmOTMwODMxZGM1MTBkNTdhOTc3YTc2ZTY0N=
DExMGUwYjYzNGQ2NzliYjk2MzkwZTM3ZjkzNzhiMThkNzk5ZWZjYjFmNzg1ODg2YjQ4MmM4NWY5=
MzZmMjA1MjcyZGRhZjRiZjNjNTU1MWY2MWMzNWRlZDVkMDQ4ZTgxOTE1N2U5ZjQ4NzlkOTZjNzZ=
hMWFhN2M5YTAxYmVkZWY3NzhlODBkNWViMzM2MDk5NTEyYzI3NTNiY2JlMjlhZDU2YTRhNzNkOD=
g4YmJiNTk2OTI1ZjVjNWI1N2E3MTA4YmNmYTRlN2FhMzc2ZjIzNDczNTMxNTZiMjgzM2ZjNjRhN=
DdlZmY0MDA2OWRiYmJkYjg4YzQ4NmFiZGExYWU3NjA1MDg5" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZmVkNTM3Yjc4=
NTNkMzZmYzViYjg2MjM1ZDdkY2RlMWQ1NTY2MjZkN2E1YWJkMjU3ODc3NjE3YmY1YTIyMTdhN2M=
5ZWE3YTdmNjRmMGQxYTc3OTgwY2MwMGVmMDI0Y2IwY2Y1ZTVmODY5M2FmZGM3YjYxNjY0NmVjNz=
RlMDc5ZTdhNTVjMTUwZGQxMGM3NzQ2ZWZmZDc2ZDU4OTJjMjI4Njc5MmM5MTgzYWQwYjgzNTE3N=
TQwNmMxYzA5YTY0NDIyOWZkZWUyODg4YzkyNjU5ZGZhMTBjNTlmMjE0MDcwZGNjNTViOWRkYmY5=
ZGEyYzhiYWI2MGE4ZTUwNjRlMTFmZmVhODc3YTJhZjVmN2NlZGI1M2ExOWJhMmIxYTNmZDU4ZjN=
hNGRmYjI3MjZlNDI0YzlmMmM3MTg1OWFkMjA5M2YwMTQyMWRjZGRjNzM2NzRlM2JjYzZlMTljMW=
RiZWIzOGRlNTI4NmNhMzY4NjMwZGUxODQ1ODgyYjU3" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMGRiMTY1ZGVlZTcyY=
TEyMjk1MjVlZDNkMDBhMzcyZGZhMDUyZGVhZTFmYTQ3YTcxM2YwYmEyZWFjODUzNjQ5MmQ2Yzg1=
Y2E1Y2IzZTRkYzFjOTFmZmMxMzZjMDViYWUyYTBiOTU1MzM0MmU3ZGFkYmNkNGNmM2FlMTAyYjh=
jMmE5YzMxNTJiNTdhODBlMWE4ZWMyMjc4OWI0YTBhYWFhZDBhMDVmNzZiZGE3M2RiYjJiNzY1Ym=
QwZDU2ZmNkNDU1Mzk1MTlmY2VjNWYyNzcwMWRkYzdjNTgxNGU5OTVlZDcxMGNmZjcwMzkzNzU0Y=
zk0OTZjMWIxZDUwYzU0MWU0ZDdlMzg4MWQ0OWFlMDUxM2ViNGUwNmQ4M2JiZjE4YjAxMmViZDFj=
OTEzYTAyZjhlNmFiYWMzZDExM2YyYTQzMGEzNGMzYTQ5MDVmNDVmY2E0NjA1ZDZmMDA2MjZiYjY=
yNDg0NjgzMDNhOWUzY2YxMzRjN2QzOGQ0ZDAz" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DNTk5NGI2YTEwM=
jRlOGFhZTkzZTIwNThhYTIxNTNiOWZkNTg4NzMzNGUzZGU0OTU0MDk3MDFiNjY5YjcxMjdhYjQw=
NTk5ZDBiMDg1NjVlMGY5ZWE5MWE1NTdlZWVlNmQ3ZTkxNDdmMWM4ZDVhY2ZjYWZlMjRhNTk3ZjQ=
wY2NmZmM0NmFmODRhMDQ0YjJkYTk0MDAzYzRjMDQ0MjBmYjA2Mjc4YmIwOWRmYTg1NjIzZmU3ZT=
IyZjFjZTg0NWU2MjdkNzgwNThmNWNhYzQxMDI1NDBjMDJlNGYwZjZkYTdhMjYxMmQwNmVjOWUxY=
zhkYmE4NzBmYmZlNWRkMzk3OGFhOTMwZTVkY2RhNWM2ZjIxNWRmNjAxYjE2MzkxYzk3MjZhZjAx=
ZDE0ZGUxMTVkYjgwYTBlMTgxMDBiNTUxYjJkMmZlNTFkNmU5Njg0NDY2NmRlNjNhZThiYTBlZGI=
1NGVkMzc5MmE3M2RmMTdkZWQzNjg2YWI0Y2E4MTc3" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNTZjZDg=
5NzZhY2U4Y2ZmMmViNmI0ODVkOTQxMDk0MjU0ZmQ3NDUwMWZkNTBmN2QzMWE0MDQxOTllYWYzMG=
RkZGYzNDQyMDI0YWE1NzliM2UyZTk2ZjBkMjRlMmE4NTZhNGNkMDc0NjM3Mzc1MDk0MTNhYmE4N=
2IwNDA0NDdkYTkyNDJhYmIwYTA0NDA3ZGIzYTgyYTU2NDBkYmM0ZjgxMTBkMjQwNjEwZjlkYTg3=
MzU0MWU0NmVlOGQ5NzczMDBiMWYxOWE4YmExMDBiZmVhYzBkY2U5MWJlMzEzMWUzNjQ3OWUxZGV=
hODczMTczYzc3NDhiMDAwNWE3OGMwYzdlNTMzM2E3N2VlMjRlNzNkYjY1ZTQ3Yzg5YjY2YzNjMj=
NjMmFhMTAzMzJkM2FiYzYyY2E3NTVmM2Y4YjMyMmJmYjA5NjFhNzA0ZjY4Mzc2NDQ5OTJmY2YxM=
mYzYjM1ZmY3MjNmNTg3ZWEwNDNjMDk5OTgxYzM1MzJhOWI2MTFhNQ=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNmI0MDEzYTkyMjBlMTRlOTIwZDBlMj=
VkNWE4MjBjZDE2YjljNjhmOTY4ZjhhZWJjNWIyNTM1ZWNhNjRkNDIzZWVkZGE4N2YxMmM4Y2E4Y=
zdjZTQ5OGMxM2IzZWQ0NTYxZmVjOGI1MWMwMTk4NTk2M2NjM2ViYTIzZDRjMTYwNmM5ZmI1MzA2=
MzY1ODUwMTZkYjg0NWIzOWE1MTNlYThhOTVkZGNmN2U4YzE0M2M3ZTY5NmI4ZWMzMTRmN2I5YWU=
wMTFkMjlmNjRlNDliMWYxOTE1ZDI1NDNkZTBlNDk0OTgwOWVlZmE2MmJjYWJmYTNiMjExNjc4OW=
FhMTc2NWE1ODFlOGZjM2Q5ZjNhOWJiMjc4ODAxOTgyMmI2MjJhN2E3OTI1NjE5NGE3NGMxOGJkY=
jFjNzk0OWFmNWI4ZWY4MTkyMTkyMzAwYzI2NmNkODMyZjhjMTQ3MDhjNThmODgzNWM5N2MyNjYx=
OTljNzRmZmE4MmI2YzQ3ZTNh" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DOWM5NWVkMjJjNGU2ZDg1NmI3MTRkMm=
U4ZWJkY2Q3YzA5ZDc3M2U5YjcxYzgyODM3MjEzMTYzMDU1MDhhMmFjMDA3MDhkMjZlMWM4ODdlY=
jkxY2UyMDE1YjFjMmRmYzdiNjI0MTQxZTY2NzgyN2ZkMTNhOTJjNGY3OGRjYmRkNzNmMzY2YWE4=
NGE0ZGVmM2I5N2U4OTJhZjM4MTE1ZTQwN2M3NDNlMzhhOTZhYzQ5MTdiMjhhMGYyMDE3Njg5OTM=
yMzBjZTRlMDBmYTc0N2UxZTE5NzcwZjEwODVkNjcwY2Y1ZjRiYjAyMGMzODY1NmQwMTBjOGY3N2=
MxMDNhYTM1YTJkMTg0NDVlZGE0YjhkMTM2ZmU3Njk0YzIyNTQyZDg4MTdmMmMyZGY0MzAzZTdmY=
zZhMWY2ZGEzMWZlZGRjZjM4NTNkZWE0MzExM2JmYmE3YmNhYTcwODQ2MmJjZjA3NWM5Y2Y5OWIw=
NjdkMTM3ZDQ0NTVjZThlZTQy" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDZiMjllODM4Nzgy=
NGM4ZWY5Y2Y1MmUxODhkNDQzMDU1OTdmNjZmNDU0YjgwZjA2ZDFhZGJlOTQ1MGQ5M2JkMTc1MjN=
mZjlhYTRhZjU2MjkxZDRmZTc1MGMwNTQ4NTc4OTY0NDYzYTM1MWI2MDE5Nzg1YWFhZTg2ZTA4Nm=
ViMDUwNmRlODg0ZGY0MmZiOGI3MTMxYTA4MGZjYzFkY2VkNWZjZGUxNjgwNDQ5YTk4NzE3ZWE0N=
jBhNWUwNTdhMDZmNDE1Y2E4MmFjNmIyZWIxNjA3YmIzZTZjMjA2ZDA2MzgzNjQzMzg4YTljNGJj=
ZmIyNDA4NzQ4OWE0OTE5MjgzY2JhMmU0ODZhNzVkNTA1YzZjMjE5NzE1ZmY3OWNlZjk3M2E2YWE=
1MGYyNGU2YzFmODRkN2QzYmQ3MTY3MTZiODhiMTg5YjJiNDk4NmQyMzQwY2E1MTYwYTVjMDNmYj=
A3Y2E3OGUxMDU5MDhlMWIxMmRlMjkxZjMzY2QyZDg0YQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzhkMWE5MmJmZjk1=
NjYwYWE4YThkNjRhMWE1Y2I1NjU2MWM3N2M0MDQxYjE2ZGE3MDVhMmViNWZiMDMxNzg1MzEwYTd=
iNmVjNzcxMjZiODVhN2E3Yzc4ZjU2YWIzMjdiMWZjY2I3ODk2NWQ2ZGE0NmMwZjY1Y2ExMjRhMm=
ZmZGExNDYyNzM1NjA4OWYxNWNjMGEwMzdjNWYzMTU1MmU2YjI5ZWNlN2MxZjQ0ZDA0YzBiMzM4Z=
GRiZmM1OTlhYzA4NzA4ZTJmNTViYjA4NzE3YmFlZjU0MmQxNTJmZDQ2ZGNmOTlhZDY0MGJhMTJl=
MjhiY2Q4MjM2MWY1ZWZiOWMxNWNkNDJmNTNjOGU4ZGQwOWJmY2M5ZWRmMmY2N2ZkMzc0NGI2NzR=
jYzYzNjcyOGQxODQ2MjMwYmYzMzRmMTgzYmZlZWZmMjRiN2ZkZTBiOTkzMjM5YjI4ZTdjZGI5OD=
FkYzlkMzZmZTE2Yzk0NTM3ZDI4OTI2ZmEyN2U4MDEyYg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMWQ4OTI1ZWRmNjc2=
YTI0MDY5NmJjNGVhZTc1YzM0YmIyNjU3YmZiNmQ5MDY2MWQ2ZDY2NjdkMmNlNmRiYWJkM2RkMzJ=
iMmI2NDRiNTI3NDBkNDdjYjYzODQ2Yzc3MTUzNTk0NTEwMTFmZWU2MWIyYTRjYTYwNGVhYzBmZj=
dkOTljMTljNGM4ZjBmODY5YTdkYzM1NjlhZmZiNGY1Y2JmZWFhOWRlZDM4NWUyMTY2MTRmZmNmO=
WFhMWExNDU4ZDg3OGUxYWJmOGI1OGQyMjM2NDJlZmI4YTIwMTc2OWY0Nzc0NWYxNjQ2YzhiZGNl=
ZGExYTE4NmI1MjgxMTIwMTVjMTRkNWFlZWJlMjhlZmQ2ZDdlNGJlMDUyZDRjNmYxY2ZmNTBmOGU=
0MjIyMGUxNTY1ZDdlMjY1NDI2MmMzYTc1MjliNTk0ODI5NDljMDVhZTEzZjEzM2FiZjgwM2EwZD=
k4N2UyOGE4ZTUxY2E3ZjdmNGVlZTQ3ZDRjYmM5OGJjMQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMjE0MTQ1NmU5ZmEz=
YWJiZDc2YWI1MmUzNTE0YmE0ZjMwNzUwMjE2Y2U1MzdiNjJkZDIyNGY1ZTM3NWFkZTExYmNhZDM=
yZGI1MTE0ZGEzM2M2M2YxNjEyM2QxNTZjNDRmMTIzMGNiYWEzODYxMjViOTVkODBhYWIyNTA1NT=
Q0NGUwYjJkYTQ5YzJiMWM2MDk3ZTBhZDI1ZWEyOTBhNzJlMGZlN2M3NjE4YjYxNTg5ZDA0NWRhY=
TVkYjExNzdiNjBlMTBjZTJhZGJmMmZmZDQ2YzViZWE4MWIzZjQ1OGZiZWQ3OTFmMTBkODMxOTAx=
NjhmMGZmZmUyNDJkOTdiZjBlODRjNWQ1OWNlNjMwYWFmYTM1YTQ0ZTM4NzRlZDdmNGM2MDg5OWM=
3Y2RlMDlkZDY5OTdmYmZlZjQzYTdiYzZiNzRkNmE5YjNhNmNhZGJkY2JlZWFlM2FiN2FkZTBkZT=
A3YTk4NzU0MzA0YWI3M2I4ZjI1MDlkOTA4Nzg0YTBkYw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZTkxMjUyNGU1Y2NjZj=
QzYWNlYWMwYmRmOWY1NWExYWUwNGU5MDVjYTkxN2Q2MzdhNTcxMmQ2MTBjNDg1NzdiNWM4OGQwN=
DI0ZWZhYTFkNDM2YWE1ZmJmNTkzMzcyZWNjNDgyNDUzYmU1Y2U4MDUzNzhjYzRiNzJkMmFmMDFm=
YzY1MmZiMzZjNTYzYjMzODE1NDcyMzQ3YTg1MzIwOTZjNGRlM2NhNTFhMGRhN2I2MzdhNDRhN2R=
hMjIzODc4OWMyYWVhYmI4NmJmMWU4Yjc0ZmMzYjc5NzFhYzY2MzA4MjVjOTI3NmYxMmYzZDc4NT=
Y0YmY4YTZhZDg5MDZhYWI3ODY0ZDQwODQ1ZGMyN2YyY2IxNWE3Mjc5ZjEzNTczYzFiNzUxY2YwY=
zM0OTFmMGYzNzY0NDU3M2FjYTcyYWJjNmQ4YmZmNTc5NzdiY2IzNjA2MjVlYzllZWJjZGJiNjYw=
M2VmMjhmY2JjMDcxNTFmYjQ2NTM2Y2YxY2ZiNDMxMA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZDRmZmNiYTAzZTM4=
ZmEzYWU4NzBmYWZjZTQxODRhMDA0Y2Y1NzhlYWRhY2ZmODRjZTA5OWQ2ZjU0MWY3YWU3MDIyNmE=
5ZmU1MTRkYmQ2N2JjMjkwYTYwMDQ3OTAxNDdlOTUwOTY5Yjc4NmUyZTczOTE5OTRlYTNhMWMyYj=
I4ODZlMzgxNTgwM2RlMTRmMjRiZThkYzMyNGU4ZjAxNmZkMDk1NGJmNzYyYjJkMjc0NzNlZjFiO=
GY1MjYwZWMyZTQ3MDg5NWNkN2FmM2E4MWFlYzUyMjE3MDg0ZjhlZjNlZTc0YjdhNjc4OWJhZjEw=
MzRkNjBmNGE2YjYxZTQwMWE=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DY2FjZTE3M2VkMjA3NTEyMWVhZGJmNzE3YzUxZ=
WMwNzZjYmMzMjY0MjhlNTViOTBjY2YzZDQ4Y2QwY2IxYmFiMTlhNTExYzI0MTcwZTc3OTdjOTk5=
NzY5OGExZTk1YzQ1MmE3N2U2NzczNTU5YzNiMDFiMGUwYjdhZjJhYmNhN2IzYTUwMTMwMWQwMTk=
xMWRiM2QzOWI1OWY2ZjkxYTc2YTFmMTU1MjMxOTZlOTJmZGZhODQ0YTE2MDYzMzNmZmJkYWFlNz=
M0ZDIyZjczYTUzNTk1YTg3NmM0NDE1NTM5MmUxNDk0OTBiZmFmYzUwYjMzYzE1NWFmODQwMWJjO=
DgwNmI0NTQxZjU5NjliZjdjNGIwNDRhN2IyM2VmMjM0ZDMxYzI0M2ExNWE4ODZmOWMzNjBiN2Mw=
NzQxZGE5ZTY3YjdlMDEzZjIzZWI3ZWNmNGZjN2Q4NThjYmQ0ZTEwYmJmYmViNGNiMjMwNTgwNjd=
iOTIyMTcyN2VhMWZhM2QyZWE5YjA2YTY3YjQ3YzliMjRiMzg4ZTczN2UzYWU2M2EzYmZhZWFlYz=
c2MGNhNTAzODZmNjAyNDQ1ZDk=3D" style=3D"font-size:12px;line-height:134%;font=
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
