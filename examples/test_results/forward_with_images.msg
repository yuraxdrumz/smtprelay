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
From: localhost:1333?u=3DOTVkOWNhMDI3NGFkNzBiNzMzNGMwYzkwZGJmMDhjZjM2NjM1ND=
k3ODE4ZmJhNGIyMjNjMWNjZTEzZjA4MDRjMWQ0NGZiNzFiYTU1YjZk <mail@eg.expedia.com=
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
<localhost:1333?u=3DZGIyNmNjNTBjMDMxMmJjODdhN2UzMDVjZjJmZjkyZjQ2M2Q3MzU4ZjI=
0M2RjYWZkMDg1YTU3Yjk3MDZlZTQxMjYzMWRhNmJlNjM1MzhiMmRlMzAwZWViYWY1ZTRkMmExMz=
IxODdmYzU5YzYzMWMwYjU0ZjEyYjI5NjI0OTRkMWQ2MjFjYTcxY2I5Y2Y3ZDNhZGUxOWY4NjIxM=
zNiMzhiYTFjZDg3NGJhZGZhYjNmMTY1NDZhNDBlYThiMWNmY2RlZjI2ZmJkZjUzNTc2ZThjYjU5=
YTE3ZjJiMmFkN2RmNjRhNjlkOTU3YzFhNmMyYmY0Y2FhMjg5OTI0OTQxYmNmMTU3YmVkZDMxYjI=
3ODA5YjEyYmIwYzE4OTNmNGExZDE3NzE0MTkzMDcwNDUyODhhMTY1ZWIwZWVjNzhjMzRhOGJjMm=
JjOWYwNWY5YzAxMDBlMTg4OTBjZTBmMmJhNjc0ZDFhMWJhMDc2NTVjMmQzZDkzOWZjYmUyOWVj>

* The Travel Edit
<localhost:1333?u=3DNGY1NzYzNmY4YmNmMGQzYmFiN2FjOTg3ZmI1MWM4YTQ2MGNkZDBjZTl=
hMmFiNDBiMzY5NDIzZjRkYzk3MTE1NTU5MGI2Njk4MWI5OTBkNjZkZDhlM2Q5ZmM5OTFlNzNiYm=
I1Mjc3MGU3YjViMmRlNDZhZDFiNmQyOWM0NjVjYjIxZmRjOWUxZmNhMjgzZjMyOGU1MzU3MWU3M=
zE2NGNhODhmMjA4MWZmNzY1MjU4ZGMxYzY5MTlhZDc4NTljMDU4YjlkYTljYjdmOThiODIwZDhh=
MjY1Njc2ZDQ5ODEyZmE0OGYzZTU4YzBjM2U4YzliMTZhZmE0NDQ1ZDc3NGRhOGZlYTFkMmRlZTZ=
mOWNjYjIwODQzMzk1ZThjMjFhNGZmZTMzMzc0NzVkODk3NGY4YTk3YjEwNTMyZTBmZjYxNjIyYT=
k2NDA1YmVlZDVkYjUwNjNhYWEyNTgzNjRlNmNmMWU5M2ZiZGNiOGY1NTJhODQ4N2ZkYjE5ODA4>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODAxNmZjZDczZTBiZTJiZTg5MTI1OTRlYTYwMGVjYWM4YWQ2YWEzNjk=
4NTU2NjgxMjc4MTFkMWE4MzBkODE1MmQxNTdlMDlmNzk5OGYwZGU5NDM4ZmU4YWJiZGViOTI3OD=
RlMmIxNDViOWU0M2IzMGQ0ZjRmMWY2M2E4MGUyZWRmM2MwZmZiZWEwM2U5MDQzZDA3YzMwYTlhZ=
jcwMTA0YTIxYWFmMDk3ZThiYzFhZDI4YTA0ZjY4ODlkMTNhOWI0MDVmMmIwYWFkMmY3Njg0NWI0=
NWY2YTI0YzYzYTZkODNkM2Q3M2FmMTUzOTU4YTMyNDQyOTg5OTVmMzExZGVjZGFiOWM2MTkzZmJ=
mMWRmMjlmYmY2MzkwYWJjYzg4ZGU4NmZlYmYzOTZjNzk5ZTNjYzg5YmFiYjhkZjRjOTBiNTVkYm=
RiM2UxNzQzYTQ2OTE1M2I0NGY3ZjViZTFkNjNmNDRlMTUzNjAxNjRkNTNiNDM2MWU4NjEyYzJk>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNTAyYzQzMDdmZDk1NTNlZDA4MTU0YzQyMmFjMzkzMzEzOWU5NTg1MzR=
kNzk3YTEyZjhiMmExNzNjZjRhMjhmNTc3NTg4Y2ZmZDU3ZTYwZDZiZDc5ZmFlNTQ1Y2I2NzQwOD=
Q0YmJiZTA3NDFhZDUxY2MwYzYwMjliOTBiMmE4ZWVjOWMyZjM2YjM1NWMyZmM1OWUzMWFjM2I5M=
DBiOWU5NGI4NGJhYTM3OWQ2ZTBiNjc5MWQzOWRjODFkZGZiNjdiYjM5ZWQ0MjMwNGNkYWQ1MjE3=
MTg0YmYxMGZhYzMyYzljODAzMmJkMGViZGVhNmJkYTUyMjZkYTNjMTMxNWY4Yjg2OGM4MmIwZjN=
kMWRkODAxNGRjODE2N2IxZGEzNGVlZWRhNDhmMDhlMzMxMTZlZDJkMTQ4MWZhYjQ2MjhmZGY2Zm=
VmNGI0NWZkOWJhY2ViZTAwYmY0NjJlYzE0YmQ2NzRiNWIyNmM4OTAyMTM4NTRhNDUwMDQ2MmIx>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOGNjMTllY2YyNWE0NjQ3NDgzMzFmNzgxNTMyMWI3MDgxY2ZmMWJmOGU=
2MmMzNWMxMmUwYTFmMTQ4MTIwOWFjN2YwMDliYzc3MTUxMDY0OTJmYjgzZjMwY2QwZGNmZGVkMz=
JlMmQ1NDY5MzAzYTUwYTM0MGY3MzA2MzhkYzdhMGU1MzViNzY0NTg3YzYxMWJhN2IxZDAwMmU1N=
DJiYWZjN2UxNDY5ZDg5ZGRkZWJiNzljYzc1MzVjMTU5ODI1YWU2MTY3ODVhM2I0YjU2NWNjNTFm=
MjhlNTQ2ZGUzNWM4YTgwMmY3OWNhMmVkYTE3MDA4Y2U0NjY1ZTVjYzFmMTNlM2E4ZDY1ZWEwNDU=
3ZjBlNzJhNGZlM2U2NWYxOWEwZGI5ZDc3ODRiMzllYWUyOGEwMzMxMWQ4NmRkN2JmODMxZTY4M2=
FiZGIyZDdmMDM3ZTE3YTI5ODk3YjIxMTNhNjU5ZGI1NWMzMjFlMmM0YjNjMjhkMWQwMjBiYjI0>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYTUwODdlYzZhNjc1MjU2Zjk3NGYwMDI3MmUxM2JkODVjZjczMGNlNDB=
mOThiNjljMDE2NTc5ZDdjM2JmZjFmYThmMGE0MDhjNzU4ODY3MjdlYmQ3NzMwODg4OGY5MzM2Nz=
RhYWUzMDU2Zjc2MDM3NGUzMzIxMGFjN2I3MzM3OWY2NmE0MDM2NmQ2YTE1M2ViYmU4ZmI3MjAyY=
WNkZmQ2NGFiZmU4YzA1YmZiZTI0ZjY4OWE1NGNmOGQ0MmJmMzkyZmI1NzhjYzczMjc1NDM2MWYx=
MzlhYTM2OTgyMmM4ODk0MTdhMDNmMTM0NTlkMzZjZjEwNmI4N2M5YzA3NmRmY2I3NTIzNjdlNjE=
1MWEzYmMyZjYwYzI0YmI3NGJlYzljMGRlMTlmZjM4MjhlN2Y1YjE0MWNhZDliMjZlNzMwYmM4ZG=
JjY2JiODQyMzdjZTU1ZmQzMjc4OTAzMmRjY2ExZGNjMTg2OWYyYWQ0MzdmODcwNmQ1NGM5Y2Jj>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZjA2MzdjMDYzZmQwMjgxOWQ1YmMwYWVkOWQzNzcyOWNmYTJiOTI0NmE=
yNzEzMzkxNGRjYmZmNTRmM2E0YjFlNjViNmZjZjY0NzYyNzAyN2Q0NzE5ZWQ0OGNmN2Y4YTBiOT=
gyMDhkNzNlMjA3MjY1YjgzY2ViODJkNGU1NWQ4Y2VlZTE5NGJlMmVjZDQxYTQ3YWIxOTA4YTlmN=
TRiNGNkYTM5NmY3MGE3MjA4ODU2NTdmMzllOTlkZWY2MjNiYTE0ZmY5NTllZDMwOWE2YWVhMGJk=
MDQ2ZWI4NzlkYTAwNzEzZjVmOTdjNjUzY2VmNzYwMTFhZDBhYzA3N2ZmOTliNjA5YWI0NDhlNTE=
0MmZlNWQxOTY2NTVmZGY3ZGJkYjQ4YzM2YTEzNzBhMjAyMWVlYTcwMGYxNzVjYmRlMGUxZTRhOD=
NlOTg4YmEwZDZiYWViNzczMzE5ZDU3NzlhNTU0ODUyMWE1ZmQ0OGFmMjk0MzYzZmRmOWZmZDNm>

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
<localhost:1333?u=3DM2Y4MDlmZTQ2M2JjOTU0MTM4ZmQwNWZiYWYyODk1NjJiOWJmMzA2NGY=
5MmMxNzE4ZTM0ODQ2MWRkZjUwYTU1NDgwN2JkNTdiOTczNjY0N2Q5ZWZhYjhiZDM2MjllYTgwNW=
ZlMzM4NjlmYTNhMGQyMzFiZTk3YjkxNGQ0ZmIzZjM0ZmQ5YWI5YzQ5YjYyZDcxYWExNDhjODMwZ=
WZlNGQ0M2ZjNTk1MWQxMjEzODVmODIwMGYwYmNmODhmZjUzODQxZGFhMTBlMWVjNDhkYzBiNWRj=
MGI2NWVmODA4ZjM5M2UwZjQwY2QxMGY3NGExYmZlZWFkNGYyNTA4MjM1Y2E5MWMzZGU5OWI2MGI=
5NmNiYTc1YzIwOTQ4ZGY2NDA4ODhhNzRhZDUwMWExYzJlYmQ1ZTI4NzI0YTk4NmI0NTEwYzMyMj=
czMTdjZWI1YWIxNjFkN2MwMTMwZWE5OTdjOWJjMGY5Njg0NWIzOTYyZDMxOWNkYzVlNTExZjQ5M=
WRiZA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNjY0ODYzZWU5ZTM2NWM4ZDhmODZlYTc2ZjJkNTRhODVjNDY2ZmYwYmI=
1OTc5YjcxZGM4NzljMzU1NWJlMTI4YTI5ZTFjNGE1OTU3ZGM1NjYyNTRjMWRmZTJiYjgxYjgzYz=
QyNmRiYTc4OGY4OTFiMmJiMDU5MzhhNzgxMDE1MDUxNWJmZjY4ZDc0MDliMTEwZGEzNGI5NTg3M=
WI1ZjlmZWQwNzE0OWZhM2FjMDI2ZGUwNGQ4ZDI1YmQxZjQ2MzBiMTY4N2I3NGMzZGIyOGNkZTNm=
MWNiZTZlYjllZjI0NTIyMjA4MzI1YzE5ZjkwNmZlNTBhYjRiM2Q3NmE0MDg3MTg5YzM3NmM4Zjk=
xMGNhNTM0NjZmODQxZjc5NGU2YmYyNTYzMzkyZGU4ODIxNmI2MDY1YzgzMjM4Y2IzODg4ZGU3MG=
UyZTZjZTdhYjUyZjI0ODQ1Y2M4ZmM4MWM2YWM5ODVlNjlkYjExYTY1NjBiYTM2YjkxYjNhMzU4>
  [image: Google Play]
<localhost:1333?u=3DZTA1OGU1NDQ3OWQ4ZjAyZGU0Yjc2NGY2NDc5ZWQ1MDE3YmI5ODIzNGV=
mODAwZjc4NzgwNjliMDU2Mzc4NzY0YzBkZjRjN2FmM2QwNWM1NWYyNmIyMDE3NzNiZGZiZDNmND=
YzNDNmZGJlYjg5MWQ1ZmViMjRiODU4ZGNkNzRlZTFjNDgxMjdlNmM4MDhkOTM4NTMxOWE4ZWFmY=
mIyMjgxYTYwNzIwOTliNzhlNWIwNWVhMWViNTQxNDNmNTNjODFmOTA2NGMzZTNiOThiM2YyMWYw=
NTIzNWUzNTc2MzEyNWYwNzI3OTlmZThiMDVhYWE0MWU2NWQwODc0NDc0MzQ2YTZmMzZjNDU1NmU=
2ZTNmZDA5MTI3YzY1ZTVjMDJiMTVlZTA3ZDFlNzhjOGZjYWQ5MDJiMDAxZWY4OTRjZjU3NjAzNm=
U0Y2ExOWQyMTg2NGIxNGVlZWM0ZmNmMDlkODVhMjU2MDVmNDA2OGMyMTNkMjJhY2JhZjg0ZGRi>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZDhiZjFlYzcwYzcyMDg2NDFmMmU3NGVlZWQ1NmVjOTJmMzczYWM3NGQ=
3MmNjYzg5OGRlY2ZiYWM0MmRkMWRlZjI2OGU1ZDNjNDQ5N2E5NTUxZjMzM2E1OTAzZGIzMjI5YT=
QyNDJiNDdhNjA5M2JkYzJlNThlYzJkODkzZDY3MWYzOWEzZmFiNWY2ODQ5ZGU5ODc4Y2FhODhlY=
zMxMjBjNWEzMzg5ZDEyZGNhMWJhMTcyZDQ5MzJhMTlmNzUyNjExMzdiOWJlNDAzYWM2NWUwMTU0=
MDFhNDQyZjJiNzdkNmYyMTU2MTRhZjMyY2VjY2M2NDU5ODJiZDlhNjdlNTg1ZjdkMjc1Y2FhNGU=
0MGFiNzRmOGMzYzIzNjAyYTAxMWQyN2ZhYmFjM2I4ZjE2NTFiYWY1NzQzY2YwOTkxNzkyYTM5ZW=
E3YTJjNDI5MzQ2OWQ4MDYxNWM2ZjIzZmVhYmYzYzU3OGVhYzVlNDBmYjg1YTg0YzlkZWU4MzkxO=
GFhZA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNzhmY2JjOWFlNGJiODQ4MjQzMzdmMzg4OTQ4YmI5NGUyZDVhMTNjZDE=
5MGEzNmMwZTAxNTZjOTE4MGI1NDE3ZTU2MzA3NmEyMzhiNzhhYjQyOWYxZThjM2NhYjcwZmZkMz=
A1ODUyN2FjMzFjZWZjMjcyNGFkNmIxZmZjN2EwZjdiNmU0NzNlNmJjYWM1MzUyZTI2ZDdkYTczZ=
DIwYTJjOTllMDA2ODU3ZjEwOGI1Yzg4MTVjNjQ1M2JhYzU0OWNmMTc3YmRkNGQ2YWFkM2I5NzJl=
NTdhMjU1MWYzOTAwMzVhN2YyNTEyNjBmZWEwMjcwODIzODI1ZWNiOWUwNDM0Y2I3Yjc3MmZiOTU=
xYzIwNWFlNzJlYmUwODdmOGRmM2MxOWY4MWU3NjI4NWU2MmY0NjM4MTQ2OTZmZDRiOWQyM2RjMG=
FiNGIyNjY4ODc5NTEzNTViODFjNjQyMWNjYmNkNzQzOGY1ZDU2Y2UyMzVhMDBiYjQ2NTg0N2EwZ=
DE5Yw=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMTE1ZTIzMWQzNjZkMWMyMjAzMWVmOTQ2MmE2MzllMjEwMDg3NDhjN2Y=
3ZDA3ZTA1Y2JhMzdlMGExNDhmNmMxN2QzZTI3ZTFmODAyYmI1MTc3Y2M0OTM4MmRmMWYwZGNiZm=
U2ZDlhMDczZTk0NDQ0ZGUzNDIxZTFmZjU5MTBjYTdkMWJlZTFkZDU0OTlkYThiZTU4NTE3MTNiO=
DkxZjliZTBkZTUwZGNmZTdhYWYxZGQ3MDFiYmIwZDNjOTA3ZDQ4MWMzNDQ3ZTNkOGI0YzE3MTQw=
ZTgyNzU1OTg3NWExNGQwZTMyOTdmYTZiNGUwY2Q5MTE0ZGQ0MjQwZTA5MGZkMTZhOWY0YjYwOGU=
4ZmI0MWZmNzYyM2U3ZmVlOTE2OWNlMTM2NDA0ODZhZjg4MmQyNDk0ZjMwZDM5MTlhYzE2ODIzYj=
BhZDU3MDgyZjFhMTYwZTIxMGI0YWMwNTFmZDcyNmNjNmEwZDU4OGNmYzIyZmZhYjk5MTMwNDZlZ=
Dg2Yg=3D=3D>
   About Us
<localhost:1333?u=3DOTBiNTc1OTRlNzI5NGExYjVkOWIzOWMyMWQzNTViZTk2MWZmYjdkNGV=
kZTJmN2FmOTRjMTQyOTdiOWFiMjNlMmMyYTQzMTYxOTVkYzc3Yzc0YmFmM2VmZDM5NDY1ZjZjMz=
EwMTQ1MmE0NmZmMjYwZGQ2MTlmNzBhMzRhNTY5NmM3Yjk3YWNjMTc4NWQzNDk3NjQ5MTI2ZWU0Y=
zQ4YWM2MmZmMzllYWQ3ZDczZDVmZDk2NGUzZDhiYzQ5MTQ2NjNlNTIyYzRmMjZhY2IyYTMxNWRi=
NDYxZTRlNmNkMTI0YTc1Yjg0YzE1ZmE2OTU1ZTI4YjgyOTlhMWRjYWE3OGEwZTUzZDQ4MWI5MTY=
yMTgzZWEwZGZmMWI3NjY0YzJkOGQzNWQ3MDFlNjE2ZTgzMjUwMjZmZTBjOGZmZWFmNDMzOWYwNG=
JmNzgwNzliYWIwNzk5Yjg1NTQ4MmU2N2Y4ZDUwZGI4MmZjZTVhZjRmMDA1ZjdjMWRlNjJiNGVmN=
DEzNQ=3D=3D>
   Customer Service
<localhost:1333?u=3DZDlmMjU0YTdkMjg0Yzc0NWU3YzQ1NDM2NWI3NmNlNzNjY2FmZThkZGE=
2ZDc3MzljMGVmZDM1ZDNiMjA2ZGMwODIzMDU1ZDMwY2QwOTI1NzBkMGJlMDA1Nzc1NDlmNWVkYm=
NlNmFjYzgyNjhmNmQ3NzgwODJhZTlkZWVjYzU4MzFkN2MyM2YwNjc4ODAyZDg1NWE2NjdlNGUwZ=
WQ3M2I1OWE4MmE4OGNkODg0ODc4Zjg1NWNlYzYzNjVkNjdhNTdiYzNmZjY2YTViMmUyOWMwYzM5=
YjM0NDA5MWUwZTlkMjZkZjIwZTBiN2QyYzBjMzM3NTE3YmMzOTRhYjc0MTYyZWQ4ZDlkNTdhNDV=
iY2ZkMmFmNGRhOGIxZDJiMmFjM2YxNTNmMDU4YWFjZmI1MDNkZmRiMmI2N2EyYjA2N2IyOWRmZm=
NlMWJkZmM2OGZkMTVhY2Q2MzFkYjhmMTcyMzc2MDBlMDIxNTkyMzBmYjYyZGFlODUxNmI1YTg0M=
zMxNw=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZGYxMmE5OTYyOGJkMzc1MWRhOGIyMmEwMTdkMzk1MjI5Yzg4ODBlZDI=
yNmY2MmI0OWZiZGMyMTVhNzY0MGFkZWVmODRjOTcyYTc1NGJmMjgwYWUxMTEyMmUwNGIxOGRlZj=
AyNmUyMTY4ODIxMGZlNjM0NWVkMzEzYjU2NTgzM2UyZjg2N2QwYzY0MWJkYWM4NGI0ZGM1ODVlN=
DZkOWNmMTM1NTJmMTViYWFiZWU2MTMwZDEyOGVmZGE5Y2JkN2I3YjI1YjZkMWQzYTQ1ZWQzMGE4=
NDRkMzJkMmFiMmUwMDdkNjJhZTA2ZjIxYWIxODI4ZWQwOTBiODNjNjQwNjY=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNDRhNGUxYzQ0OTU0OTAwNTg4OGMwMDk4ZTQxNTNkNDJhNjg4ZjZhYWQ=
zYjA0ZTk1ZDU5OWNkMmI2ODZhYjBhYmRhZDQ4YzM2NmNmOGY1M2Q2NDY3NmQyMDUxYTE0YzJhZj=
k2ODZkZTRhYzFiYzgzODk5YmNhOGM2NDEwNGU5NzdkYTFmNDQyMjJmMmYxZDYyMDAyMzEzYTYzM=
TdhMjlkMWI4OGRlODVmMGEzNjVmZWQ2MTY4NGE3MjQ2ZjJkNmIxOTY1YTM0ZWZlMmI4YmZmNWM3=
MWZkMjAwYTdjZDJkNTVhMmZmMGM4YWFlOGViMzBjMDZiMjIwOTdkOTIwMTQxMGNhOGU4ZGJjODk=
5Y2E3Njc4N2E5ODUyNGI3NTM2YmI3OTY3OWFlZjY1NTMwOTJjOWE4YzU5OTkwNWMwMjVhN2RlOD=
RmMzc2NzdjMzhmNTk5ZjljN2Y4OWNlNWRhNzI2ZjIxOTIzZmU4YzExMTA1MDg0ODIwMDVhNWQ2N=
jNkZTM5MzdmODgzZjQ0NzQ1ODBhNDMyMjFkOWI3ZjgzODM5OWQ0OTgzY2Q3NGE5ODhlZjc2M2Y2=
YTE3NTI=3D>

EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&EMLDTL=3DDATE2023=
1003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX



--00000000000049ba010606e05d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">localhost:1333?u=3DMDIxM2NhNDQxMjEyY2F=
hYmMxYTg2ZWQzNDRkNDdhNWE0OGY0YTZiOGI0ZTRmNzhjYjc4MGM1OWZmZjM2MjRlNTliZDExZT=
g2MDI4NTYw</strong> <span dir=3D"auto">&lt;<a href=3D"mailto:mail@eg.expedi=
a.com">mail@eg.expedia.com</a>&gt;</span><br>Date: Wed, 4 Oct 2023 at 2:59<=
br>Subject: Made to Travel: Save 15% or more on your fall getaway<br>To:  &=
lt;<a href=3D"mailto:eyal.gr@gmail.com">eyal.gr@gmail.com</a>&gt;<br></div>=
<br><br>

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
&amp;d=3D120017&amp;bmt=3D0" width=3D"1" height=3D"1" alt=3D""><u></u></div=
>
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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZDc0ZWEyMjQwZDQ3YjFk=
YzYyNTk3ZGY4ZmZkMmFjNDFlYmJkOTBjYmY0NWJhN2E4OTc5MDcwZWQ2OGZlN2FmMTQ2NTY5MzM=
3ZjM2YjYxZWVmZTRlNjlmN2I0M2RlNjM0MjRkMDFlYjgxNDgzOWJkODQ4OTRlY2YyZDBiMDJlYj=
c0NjQwOTAwNmJiZjFmMTJiZDg5MzlhY2JhOWEyMzkzNGJhNTYzZTI1MjU3MzUzZWQwNjZiMDA1N=
WE3ZmIxZjBkNzgyNzQ1NWU5YTkzZjYwYTlhYTAxN2VkZWExZmMyNzkzNWY4YzY4NzQxOWNlNmVj=
NTVjYWRlYzYzNWViOTllNmMyZjllZWIzYjYwMGQ3MTdkNDIxNjNmZTAwZmFiNzM3MzYwMTRiYzU=
4ZDA3ZTcwYjhkY2MxNzkyYjgwNTUxNDgxZGI2MGViMjRmNzZkMjk5MjFiNTgzZmU4Nzg4ZGE3Zm=
JiZGY0ZjMyODc0NzM1ZDA1ZGFmOTFjNjNm" target=3D"_blank">
          <img src=3D"https://image.eg.expedia.com/lib/fe3211727364047c7217=
75/m/1/expedia_logo_product_dark+blue.png" alt=3D"Expedia" width=3D"150" he=
ight=3D"auto" style=3D"font-family: sans-serif; border: 0px; height: auto; =
line-height: 100%; outline: none; text-decoration: none; display: inline-bl=
ock;">
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
?u=3DZTU0MGI5MGQ0NWFjM2JjZGIyNDkzNmY0Yjg4MTgwNGVjMzg5ZDRlNmQ4ZDk2ZDViMjk0YT=
czYmYzMTVkYWM4ODFjMmJhZGJkNzg3NGY3Yzg2MzcwYzUzYWMzNmVjNDIxYzUzYjA0NjllNjRkZ=
mRmZTkxYTg2NGFjYzM3MDg4YmExMzE0YTM0ZjBhYmU1MDdlOWMxODllODA3MWQ5YmU5YWE3MTAz=
MmE4ZmIzMzkxYzk1NTIxNzQxMzU1NTUxOTQ5MGJkZTY3M2QxMTYyMTA5YTkwZGFlYzdjNWY4OTM=
3ODMxZjMyYmIzYWM1NzhkN2UzZDZiMzEzYmIxNDVkMjI5ZmZjYTZmY2YwYTc3YTA3ZjE1NmZjNW=
QyNGZiMWI3MGQzOGQ2NmQ5NjQ1NTMxMzRhMmRlY2Y4N2E1NmViMmFkNTIyZGU4YzJiODU0NWNiZ=
jE0ZWY3NWIxNzEwNmZhZGQ0YjFkZjgxN2EwNGI4NjFjYTZhMjhjZmY2MTY5" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DOTIzMmEwM=
zJkNzg0NGUwNjIxMWVlYzllODQxODMxOTVjZjJlNTM2MGI5YmVjMjczZDQ4NjUyOWI1NGRlZTY0=
ZmIwNWM5YTY0Y2FkN2E5NmM5ZjU3MTNkNTQzZTgxOGM4ZjI2NzRmYTJmYjQ1NmNkYWQ1ZWUzMTA=
3NWZlMGM4MzQ5YmVkYjNiOGZkYzdkNjc1MTUxYWQ2NmM5YWQ2MzgxYTc4ZjJkMjM4ZjM4ZDQ1Y2=
EyMjUzMDdiNzhlZDRkYmNjZTBmODI0MTU4ZGZkYzUwMjZhZWUyOWJjM2JiYThjZjIwOWIzNDQ3O=
TA3MDYyYTA5OGVhMTBmOTIzZjQzOTJlZmU3YmZkYWEyZGQ5NWQ4NGZlYTY4YWU1YjhlN2Y4NWNh=
NzZiMjAwMjk3NWJhNDA1OTg0NDI2YTRhNTI3NzE2OTk4NTQ0OWE2ZWRmYjJjOWEwMjQ4YzA0NjY=
zOGQzMWRkYjY0ODQxZmNhZWFlN2ZlMjZhZTkwNzYyMjJk" target=3D"_blank" style=3D"f=
ont-family:Helvetica,Arial,sans-serif">
                                      <img width=3D"600" style=3D"display: =
inline-block; width: 100%; max-width: 600px; height: auto; font-family: Hel=
vetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/travel-asset=
s-manager/cread-2248/US-eMail-UMP-D-600x338.jpg" alt=3D"Plan your fall geta=
way and save with Member Prices.">
                                    </a>
                                  </p>
                                 =20
                                  <div style=3D"width:0px;overflow:hidden;f=
loat:left;display:none;height:0px;font-family:Helvetica,Arial,sans-serif" c=
lass=3D"m_1202337279934882522showmob">
                                    <p style=3D"margin:16px 0px;text-align:=
center;font-family:Helvetica,Arial,sans-serif">
                                      <a href=3D"localhost:1333?u=3DMzJiMGU=
xNTFkYmM4ZmE2MzgxYmE1YmQ0N2M2NTdjNWEwMDcwMzZiZTBkNTI5YmI5YWIyNzIwYzdhNTkwZm=
Y3OGZiOTRlY2I2YjY1ZjczNzE0ZGI3NDI4Y2I3NGI1YTBhZTIxM2E4OTNiMzEwOTUxYTAzMDcxM=
mRlZDU5NzNjNzE1ZGFiMDJhMjJjMDhkN2NiZTYwNWI1ODEwNzEyYzk3NjllZmE0YTJkZWYyMzE5=
MWNlOTZkNjllNzgxZDQzMjdkNGQ0NGRkNzNmOWYwYzJmNTVhYjQ3YjE2ZjUzODJmNjJhYTI0NDQ=
zNjJmMWZlNTM4YWYzNTE0MDQ3OGY3YzZlZWM3YTY3NTVjMjQxODdmMzA4ZjEwYTEzYTkyYTM4MT=
MzYzBiNmYyN2E5N2UyMzZhZmNlNjI0NmZmZDg0OWZhZTc3Y2JjZTgzMDc4NmQ3MDUyOGQ2NmY0N=
WY5MDI5ZDBjMjk3MGQ3ZjFkYzhiMWNiYzIxNDc3OGQxYmZm" target=3D"_blank" style=3D=
"font-family:Helvetica,Arial,sans-serif">
                                        <img width=3D"375" alt=3D"Plan your=
 fall getaway and save with Member Prices." style=3D"display: block; font-f=
amily: Helvetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/tr=
avel-assets-manager/cread-2248/US-eMail-UMP-M-375x375.jpg" class=3D"m_12023=
37279934882522max-w-full m_1202337279934882522w100pc">
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DMTVmMzFiZTNi=
MjE0MTQxMjcxMjA3ZGMwYzI2YzM3MjE0OGQ1NjQyOTc4NDUzZmRiN2EzNGE4ZDBlMTg5YTBmNjZ=
kODhmMjc5Mjk2ZTNiZWVjMzc2ZjczNTFkNzY2MmE5MGUwYjNmMzBjZGMwYjBhZTE2MDc1NjFmZj=
czMGU3ZmJhMDBkYWZmYzE2OWIxZGM3NzgwOTI3OWFjMTlhMGFiNDkyN2JlN2NjYjM3NmJlNDhhM=
jc2YjcxZmE1NzVmYjljZGE1NzkwNDQ4YTU3NWYzMmUwOTYzYjg3M2Y5YTFiYzhiN2M0YzBhMTJm=
MmYwZmE3NWQwZGEzNWJhYzJjNDc0ZTRkNDJmNWIwNTVhNzFjOTNjZWE5YTA1M2EyMzNiMjVjNWY=
5ZTIyMmE5ZjE3YjBmYjUwNjU2NjkxNDZiOTcyNzkyNjU0MTg3MzI3YzIxNDJiYzRhMzM0YjY2Nz=
Q0MDI1OGExNzczOGU2NjgyYTI4YWY3YWIzY2MzOTVj" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMjkxMTQ2OTFlMTIwO=
GE4MmI2NTc0MjgzZTJhYWVhYTk0Yjc1ODdiNzBlMGE2YzViYTAyNTdhOWM3OTUwY2M2ZTgwOTE1=
Y2RkY2ZjNzMwNGY4NzUwMzA0ZjQ2YjE2ZDAxOTI5MTA1MGE1MDJkNDUxYzIzNTNkMDMwYTE0MWE=
4YWEyMWM5ZTRiOWJiN2I5NjQwYjQwM2NkYTE4YTllODk2MzQ0NjJhNzQwNjkxZjRiYjU3N2RhZD=
MxOThhMWUxOGY4YWI5YzYzMTZjYmRmMDQ1YzhkZTdhMDRlZDI1NjVhZjJhYTZmOGNhMDY5MzQ5Z=
DQ3MGYzMzMzODA3ZTk3ZWIzOGE2YmNlZDgzZmI4YmExODJjNTIyNWE2ZjIzMTRlNDM2NWMwNDA2=
ZjNkMzAyODA5ZjM0MjhkYjYyZWNiZGVmODkyY2E4NWQxMDliNWFmOGQ0MzBjYzc1NzU4ZTZhYjA=
xMmUxNzJiNTRjMmM1NGVmMWUzNzViOGE4OTk3" target=3D"_blank" style=3D"font-fami=
ly:Helvetica,Arial,sans-serif">
                                <img width=3D"536" style=3D"display: inline=
-block; border-radius: 0px 0px 16px 16px; width: 100%; max-width: 536px; he=
ight: auto; font-family: Helvetica, Arial, sans-serif;" src=3D"https://a.tr=
avel-assets.com/travel-assets-manager/ceorg-3741/WestMauiToReopen-eMail-Sec=
ondary-D-536x230.jpg" alt=3D"Plan a visit to West Maui when it reopens for =
travel Oct 8">
                            </a>
                        </p>
                       =20
                        <div style=3D"width:0px;overflow:hidden;float:left;=
display:none;height:0px;font-family:Helvetica,Arial,sans-serif" class=3D"m_=
1202337279934882522showmob">
                            <p style=3D"margin:0px 0px 16px;text-align:cent=
er;font-family:Helvetica,Arial,sans-serif">
                                <a href=3D"localhost:1333?u=3DZTMyYzJjNjE4Z=
DUyMjU2YjhhYWYyNDNhY2VmZDQ5ZjViZjE3ZTVkMGRjMjQ2YjVmMTNmZWFkNDM4NjkwZTBiYTY3=
YWNhNzE5YjNhZTA5NzI1NTI4OGJkOGQzOTU5ZjYyNTBjZGRmNWZjNDcwNmY3YjAyMmRkNjAxNGF=
iZmFiNDBmYjIyMWQ4YjE2MzkyZGRkMTM4NDBkYzIyNjMzNTQ2ZmNiODcwY2RjYWZiODQ2ZWU2Y2=
JmYzQyODU0ZjRjYjRlNDBhNDE1YWRhYjc2YTc3OTZkNjU0OWE0MWFkNDgwZjkzNDJjZWQ0OGY3N=
GEzMDM3YWIyZTNmMGIxOWQ2MWRlZGI5ODAyMmQzZWU3MTBlYjYxNzEwNzRiYWE1YzJmMmJjYTNl=
ZGUyMWVmNDMyMTdjZDViOGI2ZGU1MTk3ZWM1ZGIwY2Y5ZDMwMDFlMmQ0NWNjMTA3N2QwODUxNmJ=
kNDk1ZDc2MGQ1MWRkNzYzMDQyYWFmMDRjZDU0MzVl" target=3D"_blank" style=3D"font-=
family:Helvetica,Arial,sans-serif">
                                    <img width=3D"311" alt=3D"Plan a visit =
to West Maui when it reopens for travel Oct 8" style=3D"display: block; bor=
der-radius: 0px 0px 16px 16px; font-family: Helvetica, Arial, sans-serif;" =
src=3D"https://a.travel-assets.com/travel-assets-manager/ceorg-3741/WestMau=
iToReopen-eMail-Secondary-M-311x311.jpg" class=3D"m_1202337279934882522max-=
w-full m_1202337279934882522w100pc">
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
<br><br>
Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s residents.
                                    </p>
                                 =20
                                    <p style=3D"font-size:14px;line-height:=
130%;font-weight:normal;margin:0px 0px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(22,104,227)">
                                      <a href=3D"localhost:1333?u=3DMjc1MWU=
4Yzk2YjJiZmVkMWQ4OWYxZjhlMzJlZWUxZThiMmFhMmM5ZWFmNDM2OTkwOGU0NzBjMTE3MzJmOD=
AzOGM1N2EwNThhZDYyNjc1NzUxMGZmNjUxODliMTA4YzJjMWI3NDMxN2M0MjMwZThmODdiZDcyN=
jQ4YWUxMjhiNzJmOWQxZDk0NmRiMGUwZjU5ZmE2ZjlkYjVhMzE1ZTEzZWYwYWYzMmY5OGE4MjE4=
MGViYzE4MGMzOWZkMDgxOTlhNmNkNTFjNTc2NzdlMGZkZjQxMGQ1MDdkMTBhNzE1OGZmMjQ5MTJ=
hODVhOTU5NDUzMzBjYTkyNzExMmE2ZDA0ZjBlZjI5ZGRhZjBkMzE1NWM3NWIzMTI3ZTRlNmZhND=
U2MzlkMjY4ZDE4MDA3YzczYzAzNjQ0NDUyN2ZmN2IxODQ4ZjAwZWM0NjJjZTZiYzc4OWU2MTEzO=
WYzYjI3MGZjZTZhNDE4MzAzZmM1MjIzZjFmMjY0MGNlYjliY2E4YQ=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZjdiYTljYjQ0MGYyMzA0N2JjNGU5Nz=
I3OTkzYWY1MDM5Y2JhMzQ4MGNjZjg0MTAzYzBmMjVjMzhkMzJlODkxZTY0NDk4ZThmNDIyNWYzY=
jU0YzRhYjhlYmRkODVkMTUxZDEyMGYzNTY2NWY0Yzk4NjcyZmZhN2Q5MTc0NjgxODEwNDdkYzM0=
Y2FkOWY2MmZmZTJhYWZkMDYwNTIwZjYzOTkwMjVmZjM2MmMxOWMwZDg1MTBkZGU3YjEwYjQ5ZDY=
zYWVkODViMTQwMDk4YWM0YmE4NTZjNTczN2Q2NDAyOGM5M2UyYWEwZmViNWU5YzY4NGNlOTFkYm=
RkYTgzYmQ3N2IyMDA2YzNjYzRjM2FlMzBhZDdhNTcyZGU2YjFlODViM2E5ZmQyY2JjZmYwYmI5Z=
TEzYTUwYjQxMjhkYmZiNTc5YTMwZGQ1NjE3MGRkYzFlODM4MjZlMGFhYTg0MTJkMjE2Y2M1MjVh=
NjBlNmI0YWIzMjc3NWUwMWQ3" target=3D"_blank">=20
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_iOS.png" alt=3D"App Store" width=3D"auto" height=3D=
"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: none; =
text-decoration: none; width: auto; font-family: Helvetica, Arial, sans-ser=
if;">
                    </a>
                  </td>
                  <td width=3D"14" style=3D"font-family:Helvetica,Arial,san=
s-serif">=C2=A0</td>
                 =20
                  <td style=3D"text-align:left;font-family:Helvetica,Arial,=
sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DZTQ0Y2IwNTVjYzAyNmJhMWE2NjI3OD=
c1ODQ1M2E0NTI0ZjAzOTgwMzBhYjBjNDY0MDU2MDNiMGFjYTY3ODdjNTEyMjA3NzEzY2E2NTI0N=
GEwMTdhNzI1MTAxM2I0NGIzNmViYTk2ODdiMjA0ZDk1YWVjMzRhYWM5MTFlY2M2M2UwZjg0ZGFj=
MzcwYWMzZDJiYmE0Zjc4MTY4ODcyOTFjZGZlMjU3YjZkZGFlYmVjNmViYjRmNjdkMjIyODlkMmZ=
kOGE1ZmY1MGQ4NDM0NDBiZWE3MzYyZGIzNmJlMzFmZjA2OTk0MjhkZWVmNzdiZTY5YWZiMmM5OT=
gwNmY5OGI2YzVhMDk1OGE5Y2IwNTI1Mjk1MzlkZTUyMzlhY2Y2YTdmMTMwZGUxMjFlYzBjMDA4Y=
WI3YzQ5Y2Y5NzUwNzk4M2Q5NGY2NTBiMDY0ZDA4MzUyMDlkNDhiYmI4MmM2ODc1MDVkNzY4ZDc4=
Yzc2ZTNhNjcxMjY4NTU4YmE1" target=3D"_blank">
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_Android.png" alt=3D"Google Play" width=3D"auto" hei=
ght=3D"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: =
none; text-decoration: none; width: auto; font-family: Helvetica, Arial, sa=
ns-serif;">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDQzMGY2YWRmYWYz=
NDE5MDFiZWM1MzY2ODQ2NDk2NjIyNjViOGRjYzEyMTM2NjAyOTA5NmY3ZWQ4OWMzNWM4OWY1NmR=
lMjQzYmI3M2FhYTEyZGU4ZDVjMzM1ZDg1ZGYwOGMxNGFlNzQxZWJkZWFlZTVhY2M0ZmRiNDZiOW=
U5ODMwOTY4ZWM0ZTcyYjc1NGQ4ZDc1MDE5MzdiMWZjNzg0NjQ3ZThmNmFmYjM4ZTIxY2U4YmY1O=
GI5ZDk5NmViYzhjNGNjYjNiYmM2N2E1YTMzNDY2MjIwMjdlZThmNDZjMDJmZjU3M2M5YjJmYTA5=
YmVkODA4ZDhiMTVmZjEzMmYyZTUzOWI5NDRmOWFkZWZhZDI4ZmFlMzA2YTE3NTA2ZWY2YjNlZTE=
2YzAwZGE2ODk5MTZkM2ExMjBmYjU1YTI2ZDNkZjZiOTM2NDcwMzY0ZDI1YWI4ZTM0NDQxZTQyZT=
I0ZTMyZGNiZGQ3YWZjY2JkMmZmYmUyZTVjMjA0MmYzZA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMzM4OGFhNDFiMjdj=
NGZlYzE2NmU2MTYzZjAyMDQ5YTIyOWM5ZTA5YWI0MGMwMmFkYjdjMTgzZDAyNzlhYjkzMjU3ZGR=
hNjI5ZGI1ZTkzM2QwNjgxODEwNzI0MTMxZjAyMjVkZTFiM2FjODQyZGRjZTA2YTU3NmQwODJmMz=
U2MzNmYTk4YzkzYWIwNjliZThhNTIwOTBkODg1NWU5YThlMDM2OTY0OWI4NGQ1YWQzMWEyMjkwZ=
DJhZmUyY2JkNzM5YWY1ZTFlM2E4NTY5MTc4MWE2OTMwM2I3OTFmYzgxODkxOWY2MmViMjJlODVj=
OTNhNGQxNmRhYzI2NTg2OWYyY2NiNGI3YTBlNWRhYTg2YzAyOWI1NWNkMzg5ZDQ4NzFiNzQwMzZ=
iZjliMzU4ZWUwNjA3ZjA5NDJiMDgwOWY3ZTAyOWJlYjlmZWRhMTNkYTQ2M2RhOWQ0Y2RiYTI1ZW=
FlNzllNWM4YmE3NjUzZGFhY2U5MmNjOThiMDdjNWVjMA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNWIzZTU0MjkwYjAw=
OTAzY2ZkNzQ2NzBjNTY0YjQzYjhlZGY1MGM4MDYwOTliMzgxYTMzODhiYTZlN2VlNzhmYWY5NDc=
wODE0YzMyMmI1NDBjNDk1MzFmZmIxNzk4NjEzOGY3MWFkYjVmOTMzY2Q2MDJkNjhhMzkyZWVmZD=
c4MDcyY2FkYmJhM2YzMGRjZjZkMjVlZmFkNjdjNGMwMTlkZDY4NDA3MTY3Zjk5ZmMxNDMzYTc1M=
Dk0MzIzZmQyNmVkYzBmNDMwOTVmMTY1Njk0MzMxZDhlNzY5Yjc5MWE4ZDI1MzkzZTM3NzRlNDJj=
ZWMwMWUxNzYyOTc0M2Q2OWY5YWM5Yzc3OWFkYzNhMGU2Y2NjODA1MmU1NTQ5OWRmNWRhNWZjYzU=
xMmU2NmM5YzZlNzc1MzVlZGMyNGUwYzgwNDA3Yjc3ZGU4Y2RiYmViMjhhOTlkMTlkNDVjYmFjNz=
BmYTUwNzMwMjA0ZjY2Y2Y0NmJhNmJmMWM3OGEyYzg4MA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODUyOWQ1NDQxN2Yx=
MmM0NTlmOTExY2I2MDQ5ZjQ2MWQ4MzUxMTZjNmNmMmJlMDRhYmQ3MzA2YTg2Mzg0YjQxYWZiODB=
lOTE3OWI2ZTRhYzRkMTUxNTUyN2FhMzcyYTQ2MjJiNGJmZDIxOTczYTU0OTM1MTI2ZTViYjk4Mz=
c2MjYwZmYyMzRiZmJkMzM3MjA3YzVlZmYyNTQxNDdhZjAwNmMzNjgwZDdiYjg5YzIwYWYyNTZhZ=
jBmMzlkYjg0YzI4YjQ4MThkYWU1ZjFkYWI2NTYyMmE1ODM5Y2Q0NTBmY2M2Mjk4N2Y1YjdhN2Y1=
YjNlYWUwYWMxMTI5NDkyMTAzNjRkZjMwMDljNjE4ODRhM2FhYzE1MGViOWIyZGI3NGFhM2JjNGZ=
jMGE2M2YzNzYwNDM1YTI2NmFmYjkyYTcxOGM2OGQyMTk4MjdhOTRjMzNjMWQ1YzNlM2E3MzI0YW=
M1ZGZhNWExNjBiY2UxNjZmODQ5NTVjNGExYWJiMzAzYg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTVjYTM0ZWE3ZDMwYT=
ZlM2M1NDcyNTIyMDRlMjIxZjMzN2E0NWMwZmJiZDE1ZWQzOGRiZjFiZGMyNzIyZjMyNGE5ZWIxY=
TZkZGFmODUyMzEwODc0NDlmODM1Mzk2NDQ1ODUwYTdiMDQxNGVjNDZkYjkzNTQ2MTc0YjkxZGZk=
OWJiMzA4MjViNWI2NjQ5OTc2MjEyMjA1NjJhOTJhNzZjNzY1NWE4ZmI3OGRlODNhYWM2MWMwY2V=
lNzVmMDM0MTVmODViYmYzYzEzNTgyOGY3Y2Q5NzRkNTdiYTNkZTA3ZWFiNTY1YmM4NDMzMjIxZT=
A2NzY3NzA1ZGE3MjQxYmEwZjZlOGJkYTM1NWQ1ZjJmYmJmZmZjOGY3MTkzNjlkYWQ0ZDlhZDVjN=
zhlNWE4NTUxZjI3YmM0MDZlNjk4NDdjZDhiZWRlMjYxZDVmZjM5M2NiYTA3Nzk1MjFlN2JlNGVj=
MjBiZDM1NTljZjY5YTg2ODFiODQ4NTYyNDI2ZTZjOQ=3D=3D" target=3D"_blank">Custome=
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
 only forward to people you trust.<br><br>You are receiving this email beca=
use you are eligible to receive promotional emails from Expedia.
         <br>
         <br>
   =20
       =20
    =20

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMzBhMGNlYjM2Njk5=
Mzg4ODA4ZTU2ZjNjNzg1NGY1MzYwNDY1ODYxOThkYzQyNjA2MDg0NDkzZjI0M2MwOGJmNDlhMzY=
5ZjBiNWVhNGVlZTg0OWYxNzEyNmNmNTJhZmQ3MmQwYjg1ODFkYzkyNmE0NzgwMzI5MzRiOGYxZm=
ZkNjRkMDBkOTE5NjIxYTRiNjg5ZjgzYWFjOGVjZjlkNTg3MDM2NjQxOWY4OTQ1NGM2NDgyMzY3O=
DQxMjNhZTYzZDBkYTQ0YzIzZGUxYTYyZTFmN2VmMWY0YmJjYTVkNTdmM2FhOTM3YzNjOTY1MTU5=
NmZkNDVmODkxMzY5NzViYzI0ODY0YWY4Mw=3D=3D" style=3D"font-family:Helvetica,Ar=
ial,sans-serif">1111 Expedia Group Way W., Seattle WA 98119</a>.=20
          <br>
          <br>
       =20
       =20
         =20

          <strong style=3D"font-family:Helvetica,Arial,sans-serif"><a role=
=3D"presentation" style=3D"font-family:Helvetica,Arial,sans-serif;text-deco=
ration:none!important;color:inherit">CST# 2029030-50</a></strong>
          <br>
          <br>
       =20
       =20
         =20

          =C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights r=
eserved. Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks =
or registered trademarks of Expedia, Inc.
          <br>
          <br>
       =20
       =20
   =20
        <a href=3D"localhost:1333?u=3DODljN2RjZGRjYjMzOGNmOGMwMDZjZjY4NzgzM=
WI5YzhjMGQxYmQ4NjNjNjhiMDNjNzdiZTFmNTcyODhjMmQxNDY0ODk5NWFiMGUzYWI0YmEyYjRk=
ODMyM2IwNWYwODUyYmM2NzJhOTExZGEzZGU4NmQ0NDM0ODA5MTlhNjA1OTliNDJhN2Y3MDNhMmU=
wYzhiMWEzN2IxNTUwMWI5YjY1YTFjYjFjODE4MmI5Y2M2OGEzOWUxOGQxZjBlYTQzZWUwZWZlOT=
hjZDI5OGJmNDZmZDQ3ODc0NmM1YzEyNmY1OWI0NjM5NTFhOTYxYmFiNTFmZDI4M2YzMzM0OTFlZ=
WE4YmY4Y2ZlNWI2MDQxMWZiM2IzMTIwN2I2MGU3ZWJmMDlkNzExZTIxNDAwYjVkZmZhNzA5ODIy=
NzI4NGRjN2U1ZDY3MjY3OWMxZjJmZjU5NmVjM2YzNTM2ZDg0NDJmZTQ1NWZkZjBmNGFjMGEwNmE=
3YjViMGEyN2QxNzFhNzlkYWNmODRkMGQzNmUyZThjZjNmZmIwNDFlN2NhOThlOTIzZDUxYjg5Ym=
I0ODE1NGQ4ZDcwM2E1ZDg5NTk=3D" style=3D"font-size:12px;line-height:134%;font=
-weight:normal;margin:0px;text-decoration:underline;font-family:Helvetica,A=
rial,sans-serif;color:rgb(22,104,227)" target=3D"_blank">View online</a>
          <br>
          <br>
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
