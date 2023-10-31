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
From: localhost:1333?u=3DYmQ5YmNlMWU1ZTQ4NmI0OWQ1MWFmMmIzNjQ4MGE3MDFiYjRhMD=
Q0MzVkYTgwMTBhMGM5MzZiNDQwZTMxMGM1MzZmY2U2MTYwNWExNzZk <mail@eg.expedia.com=
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
<localhost:1333?u=3DZGEzNjE3Zjk4ODg4ZDYxMGIxNDI5MGEzMzAyZTIyOGM3YmEyODQ2YWU=
xYzc2MmRhOGMxYWYwNjU2MGYxMWM1YzdhYjc0OTU1NDBjY2RkZjZlZjMzMmRiNDhjYTYyNjM2ZD=
czMzlmZjZkM2ZjODY3OWU4NGQzZTM4OTRmMmVlNjI1ZGUyYzBiMjg5YzQ1ZWZkZmRkODRjNTExN=
DE5NTg3Y2VhZmU5OWVmOWNhZWQ1M2I0NmNjMjVlYzg4NGM1ZmVmZTc1YTc3YWMyOWNhYzFiNjA1=
YTNhNGMwNjkwYjQxZDQ1OTY2YjZlMzI0YjhkODMxYzVlMTA0OGVmNjZhZDVhZWM2YjMwMjkyZDA=
xYzMzMmMzOGJkM2U5Yjc5YjViYTdhOGM4NTgzZTMzNzVmMTJmNTdmM2JkNWZjM2JlMjU3NDlmZT=
A2NjlmNDgzYjI4MTJjYTc1YjAyYWVjOTU3NTNiZDdjMDk4MmY4MzkyMWQzODNmYzJjNmZmMmYx>

* The Travel Edit
<localhost:1333?u=3DOGEwYWUwMDQ1YWYyZDk0ZGQxY2FlOTJjNmYxZTQ2ZGM0OGI5N2I4YTB=
lZTc5OWIyY2IwZDIwZmQ1MmE4MjE1N2ZmMDYxOGYxMTYzNmVhOWFmY2RkNTNlYmJiMWRkYjYwNG=
Q5NzhlNDE1YmFmYzhhYjkzNjc4NTZmZTMzMzg4YWY5NmJkNzE5ZDNlMWEwODRlZjg0MmZkYjIyO=
TllOWU1NzE4MjBmODM2NThjZTAwMzdmYmEzNjdjNzRkZjg3ZTcwZjgyMzA1MzAzMjA1NDE1M2Ew=
YjRjOGZlMzc0MTJlODM1ZGM2NzZmNGVkYzVhOGJiOTI4Y2ViNDk3Y2I1OGE2YmM1YmI4NmM1Yjg=
zODQ5NGQ2OTkzNmZkYzZlMWM4ZjNjNTU5N2YyYzc2MzhhMjNhNmIzZmUxMzljOTcyZWY5YWYwOW=
Y4OTliMGM3ZmY3NWQ5YzlmOWZiZmY1MTViYzU5M2M0OGI0ZjlkNTJkNTk1ZWExZGE5MDM2N2Q5>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYjFlZmRkMWUyOGFiODM2OWZmOGE1ZTRmZmYxMDM4ZWZkNDYzZTg3MGE=
5MWU3YzBhMWJiM2NiYzQ4YWIzNGUyYjJkYzI0Njk4ODdmOTljMjZiM2E4MzBmZGJjYjk1ZTJiZD=
ZlNDI4ZDc4OTdkYWYxODJmNzQyM2NmNTUxZmEyYjllOTA4YWU3MDRkOGY2ZDlmMmE3N2I2ZDhiY=
WRiYjkzYTlhZmQyNzQwZjY4NTc3OTRlM2VlNTExMmM1MDk2MzM5YjZjMTNhZTFjM2M1NzAyZGM5=
Y2NiMjZlNDY5N2IwOWZkZDRhNmVmNjMzYWY0Njk4ZTllNDZhOTBkNTYyNTM5MjI1YWU2ZjdlMjg=
0MzA1ZjA4ZjE4YTIyMTlhMzUwYTQwMzNjMzYxZGRlMzJiNmU2YWU5NTUwZjBkYTYxM2ExMDAwYz=
cyZDkyOWY4ZGQwMjI2Y2E1YjgzYzJkNjNiYzMxMTBiZjY2ZjhhNGFiMzJhNDhjNDNkYmQ2Mzc4>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYTIwMDU5ZTI0MmEyOGJlMzgwMmY3NmNkZjVjZGExZDVkMDgwNzEwYmY=
wZTM0OTY4NTc0MGZiNjRhZmQ5OTljNjY5YjBhMWZjMTAxNTVhNzIyZjE4YmU4ZWZiZjU5MDg4Mj=
cwMjdjODFlYzZlNTNkNDdkMTU5YzY0MWJhZWEwZTBlZWQ2ZmMwNWZjMzM4ZGE5MjMxNTUyZTMxY=
TlhMGQwYmIwNTQyZmZiNzU2ZTkxNjQ5NTk3MmUwNzliOTkxMTQ0NWY5MjA4ZTUxZjA3MTIyNzli=
ZTUwOTVkN2ViYThkZjA4Njc2ODE4NmViMWE1MGEyNDRmYzJjYTdiODIzM2ViNWJiZjhhYWFmZjR=
kOGU1Mzk2YWJjMzdkYmVjNjljYTcxYTE1NWY5YmM3YzU2NWZlMzFhMjk5ZjIzZjhiNjI2YmU1ZT=
QwY2I1MzMwOGViMGE0MmVlYmRkYmE0NTNjMGNiYTJmZjMwMjJiMzlhMjc3MzEwMWRjMTUzMzhi>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DODE1OTcxZDE1MGZjY2Q4ZDc2YjA1ZTdhZTUwZDQ5ODk2ZTJkMzdjODM=
0NmI2ZTgxYzkwNTVlOWU5OTFkMTU5NjljOTQ1OWYyOTBlODZlYmQ0ZWNlZWViNTY1MGE5ZjAzNj=
RjMzVmYjVlNjgwYmU2NGU0MDE4NWFlMDFmOGQyMDUyYjdkNjIzMDQ3NGYzNDZhMTVjZTc2ZjE3M=
ThmMDY5NDNmOGUwODVhODhhYmI2YWE1YWY3NmM5ZjQwNzA5MmUxMDFiZWQ0MjNmMWUxMmMzNGRj=
OTc2ODI2MTIyNTdjM2I1MzRiMDkwZTY1ZTRiNGU4ODc2ODdiNThjOGE3OTBhMTBiZTk2ODc3ZWQ=
3MzdkNGI5NmQwYmE2ZDJiNzE5ZWNjOGY0YjM0MzE5YzRjZWU1ZGE4YWI3ZTM3YWEyNTA0NGExYT=
czYTNmMGY0YjY2ZmExMGY3NzE5OThiM2Y0NmVhNGMzOTNmY2I2MzcyZjk5OTZkNThmYjJmM2Jk>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZmI1MzViYmViMGY1MDcxNzlkZThkZTNlM2ZjNzU5YWUzZWZhM2E4MmZ=
mY2VkY2M4MzNhNzkzOTRkYWMzMzk2ZGY0OTcyZTEwMGZmNjc4YjM1NDM1MTliMzUxNzMwN2QzZj=
AzZjFjOGYwNmJjODA5ZWQzNGI1ZmU2OTZhODhmMjMyN2FmMmFmMjMyNmZiYTNlMDE2YTJmNzU1O=
DYyNmY2Zjc0NDdkMTczMmVjOWQ1MzgwY2RiNWM2ZDMzNzY4NTBiZTNmMTUzMDQwYzMwYTQ1ZDFi=
YmZhN2EwOGRjODdhYWViYzFmNWJmZmIwZjhjZDA1ZDMyZDk5MjEwY2ZiYmMzYWEyM2RiYTU1OGY=
5ZmMyODlhYjY2NGZlMzc2NGExMzA5YzZkMWU3MmZiZGI0Y2IxM2MwMzE0Y2JhMzA0Yjk3NWE4ZW=
IzYjA4M2NjNWYxNzA0MTJhZGYwYzlhMWJmYmJjZTc2MGMzZjg0YzdjNjEwZTJjOGJiYzAxMTNh>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNmQ4N2JhMjVmZWEzMTNkODRmMjUxMjUxZGM1N2RjMmE5ODQ5MjczN2I=
1OTZkMmQ4ZmYzNmFkYjU0NDhlYTJmNmNkZmFjMTA3MzY1YjVmYTRmYWZiZTQ0OWMwNTQ0NTQ0MD=
BjN2ZjMmRkZThmODBiYjk5MmIzNjc4NzVjZjI0MTY0YzI0ZDI1M2Y3YTg5NjhkOGRiODM4YWFhM=
mFhYzZiNTljYzk3Y2MwOTE0OGI5Y2EzNDZkYzBjNzJlNmI1OTAzODYxN2I1YzdkMjYzZWVkNTRh=
NjRiYjgzYTljNDliMzAxMWMyZmYyOTVlZWVjY2U3Mjk2YWM5MzZmYmQzMTlkNDdlOGMzYzk4YmZ=
lMzgwODlmZDc1YjJlOTY2YzA2MDVjNWY5M2E5NTA2MjkwNzIwNTM4NTVlZGQyMGQwNzMxNGJiMT=
Y5Mzc1YjZhZTFjYTA5MjRiZTZhZjkwOTY1NTI0OThmZjk1YTc4Yjg0MDAxNmMzYjQ1NDEzODRh>

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
<localhost:1333?u=3DNDA2NWQzMjEzZDljYmU5NmEyNzlhYmQwNTdkMzI2MmQyOGJkMTQ4NDA=
1M2I4Y2NkMGI4Yjk2ZTg4Yjk4NmQzMzFjNDBjMTFlMjVjNjBiOTM4MzRmZmY0NmY3YjEzODJhNj=
UyYjExMmE2MzlkOWU5Yzg2YjYxOTg1YTY2ZWQzODk0NzkwZjdjMzE1NjljMWQwM2M0NzI3YjcwZ=
TA2MWFiMDhhZmM4NDhhZTViMmZiNjRjZTFkZGFjYzc4Zjc4Mzc2ZmQ3YWYyM2ZhYjIwYWI3ODJi=
ZWJmYTRhNDE3MTljNzkwNmI3OTI3OWQyYzNhM2M4YTMyMDg1Y2NkMDc4NTgyNWQ5ODBhNWUzYjY=
2MjdkNDRjZWM3MDc0OTBmYWY3MzA5NDU3MGU1MmUwZjkwM2NlOTI4MDJhNTM1ZmZlODJhY2Y3YT=
gwNTA1YjhjNzA0MzAyM2I5MDI5ZmVjZGE0NGEyZDMzNWM5YjFhZmM5MDkwMWUwNTM3ZGZmYzNmZ=
GYzNA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DOWJhNzE2MjRhZTA0ZDYxZGE1OWRmODU5ZjZlMjNkYWZhMjA1NjI4ZjQ=
zNDFhM2Y1ZWExZmY2Yzg3NDRmNmRkNzRjOTJmNjg3YmU2ZjFmMzliZTk3YmE3MTZjMzBjNzAyMm=
M2YmZiM2ViZDVlYjE2MzMzYzNlYjU3NWY3NGIwNzNiMTQ0NmI3YTYyNTEzYzM1NDc0ODhhMmIwZ=
jk5OWYzNzUyODMwNWQ0YjljZjBmNzcxMTRiNzg4YzQ3OWJmODc1N2Y5ZjlkNjYwODRkNDA2NGZh=
MGM3ZjI2MWMzZWUyNDQ4NDUzMTM3M2NlMGVjYTdhYmE0ZTEyNTQyOThmOGJmN2E1YTE0ZjZiZWE=
5ODY2N2E2NWFiYTExNmNmNzE1NjIyYWI4ODEwOGFjMjI5MTM0NTk0ZTU1NjczZjBlOWEzMzIzNT=
c2YTMwNzk4ODUwMDJjNTBlYmY5MWMyZjE4NzVmYWZiMDI2MGZjMWVlYmM0YTM3ZTY4ODhhM2Rh>
  [image: Google Play]
<localhost:1333?u=3DNDkxM2VhZjA2YWFhNjVmNDZhZTUwODVhOTg1NWZkYTMxNzY5OGI1ZDY=
1Y2ZhNDAzMzdhNzJlMTE5MTJkMmQ3ZGRhOGViMTczYmRmODc2MDQwZTM3NDFjN2RhNDFjNGQ4OW=
QxMDJmM2QzMTk4MGJlOGUxNGM2NWY1MWJlODIxOGMzODA0NTg5N2M3Yjg1Mjc2NzFlOWZhMzcwY=
jcyN2MxM2VlOGQ1OTZkNzk0OTkwNTQ4YjQzZWUwNGYwNDVhNzAzOTgwNGE5ODJjMjNlZjZhZDJl=
YWRkYTNkMTJiZDQ3ZjY2MTJhOThmYTIzZGYyYTQ1MzZiMWZkY2U2Y2FhMDI4ZTk4YTYxNzIwODV=
lMTJlZWVlOWJjNTU5N2JmYTJmZDExYTlmNTZhMWZlZDQwYWE4Y2Y5YWY2N2QxODI5Nzg3MjNjM2=
M0OWNiYjdkY2VmMzQ5MWIxN2UxMWViZTVkODQ1OWZkZmE0YjRmMzAxZDQ5ZDZjMmE4ZGFlZWVh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DOTMyNWE5Mjc0OGI2MGY0OWUwZTU1MGU0NTg4YmQ4OTliMjZjZTk5MWE=
wMDNiODA5ZDNiODhhMWNmNjNmYTU3MTNkNTM5YTdjZDVkZDE2NDk2NjEwNmViZTRhOTI4MTlmZW=
M3MGJjM2QyOTI4MzliNDVkZGFkOTE2ODBiY2FiYTA5NmIxNTNmNmU5M2M5YmYzOGE4ZGZmZjY4Y=
TcxOTk4M2IyZWZmMTNkYjQ4MGRhMTk1OTg5ZGI0NDVhN2M1Y2E4ZWY4YmNlNGFkMWE1NjU4NTc4=
YjI4OTZmODJmYmI0ZTlhMDQ2MWM1YmU3YmMwZTI0ZjRiOGZkZDg1MzJmNTk5N2YyODI3NzhlM2E=
4MzNjNzQ1NDA0MzZjNDhjMGFiM2JjYTY2ZmY4MWY3MzQwMGUwNTcxNmJlY2VkMTdmZDQwMDIxMT=
IwODQ4OTA0M2I5NGRkYzFjZGM4NDAyZjM0YjRlYzg3MmQ5YmMzZDg1OWNhZmYwNzY1YWJkNjIzO=
TI0Yg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNmNlNjZhMWFmNDkyNzU3OTIyYTZiYjk1N2ZlOGRlODVlOTQwMWU3NWZ=
iMTVlYTJlMDYzY2U0NGE5NTVkYzQ2ZDliMDVlNmQzYTI1ZTM5YTEwNmM4YzgwMDZjYTcyZGYzMz=
QwMjEyOTU2MGFhZTEwNGIxMzJjNDU5MDhmZDk5M2QxZDM2MTE1NjI2MTExZGYzMGFkNGYzYjk0O=
TVjM2EzOWE1MWEwODg2MDI4YmU3MGI3ZmIxZjAxZWFkNmYzNzcxOWI0YmM4OTY5OGU0NDUyNjNk=
MGMxYWUwM2FhN2U1M2Y0Y2RjNjQ4YzU0NWE2YTY2MjFjM2UzOGNjOGIxZmRhOGY2ODg4OTljMjM=
yNTUzMzUwZjhhYzE3NTUwZjU0MmU0ZDczY2YxN2E3NTk2YmU4YTZlY2IwYjc0OWExMGFlODM0Nz=
gxNjk5ODFmZmJmMzdkODBjZjkxNjY2ZTUxYmIzYjZiNzVjMDA0MTE0YzJiYjdmODZhY2ExNzFiY=
zgxZg=3D=3D>
   Privacy Statement
<localhost:1333?u=3DZWNhZjhkMTBiYmU0MWY3YTY1Y2ZhZjlhZjdiMTI5NDk0YmJhZTM5ZjI=
4Y2QzNTFlOWRiMzg1NWZmNjgwMTJkNzFmNDlmMjU2ZWU1ZDg5YzNjNjQwMDQyYmJiODY2YjQwYj=
AwY2ExY2IwODZjYTMwMDRiMmU4NDRkMmE1NTkwYjk3MGVhODgyZGZiMjc3Y2E5OTM3ZTA5MTQ2Z=
jQ2OTRlMzdiMTNjZjIwMWM0YTJhMDZlNzE5YjhiMDY4MzVmMzc1ZmQ5ZGU1MDIxNTU2NDcwZWNh=
MTQ3ODdiNDg1NTM3ZWFmYzg5MWRiMTYxZTBhNmFlNmE5ZGRhZWM5MWZlZGZlZjYxZGJhMWMxNzd=
hNTA4OGMyZGZmNTdkYjljNmJkMjA3MDY1OGNjNDFkMWNiZDkyN2U0ZmUxMjJmZGYyMGVjMzU0Nj=
NmYTk3ZmNiMTJhMGViNzI2MWQwOTdkNDc0MjJmZjczNDMxZmJjZDVkZDFkYmRkNjgwYmFhMDcyN=
WM5Mg=3D=3D>
   About Us
<localhost:1333?u=3DOGM3OTI4ZDgxZGI4YzEzMWIyOGFlYjAzMDFkZTU0Y2RiYzExNjNhNmJ=
iMjEzN2FhODZjODQ2NDBiZTAxNWZkYWM4MDY0YmVlMmJmZDk5YmNlMmMxMjQ0YTgzNWY3ZTkwOT=
EwZjNlMTczYzAzNGZjN2NmODc5OTk3YjAwYjFjYTg1YWRmMzE0ZmRlNjQ5NmY0OGUwOTlmOTk4Y=
WYwN2NmZjQ4ZGI0ZjQ4NjUzODc0MjE3YWFjNTAxZGQ0NzczMzQ1ZGQ5YTYzMGVkZTUxZmU2N2Ey=
YTA3YzBhNGE2YjVkNGYzYWEwNmMwMzhiYWQyY2Y5MzBkMGY3ZjBiZmFkNzExMTA2OGYxZWVhZWU=
2MzRhN2Y2OTRkNjUzYTFhMjg1MTU3MDQyMzA0YjU2OWEyZWYxY2I1OTk0NWJjYWZjNmQ3Zjc0Mz=
A4MzgzMGVlYjM0MDEwZmMzZjFlNDRiZWE3MWJlMTlkYzI1MWM4YWRhODNlNTk1Y2E0MTdjMTU0Y=
TNiYg=3D=3D>
   Customer Service
<localhost:1333?u=3DYThlMzU1NzY5MGNmNjU5MmFhYTY1YzE4Y2JhMjAzMGU4ZTI1YWMzNjl=
jNmUyZWYyYjUzOWI3YmY5YmM1ZDQ3NmEzMTRjZGU2MGMzOTY0MDEzYTY3MGIwMDU4OTY3NDEzZG=
FiYmI5MTRjYzAwNTAzM2E5ZGZlMjA4YmY5ZmJmZjA4MGE5ZTMxYmY0NDZmZjJiN2NhNjMwNmIyY=
zZmZTliOTQ0MzJmOTRjYjlkMjY0MDY2OTA3ZGVlNmEwMjJlYTdhOTA0MmIxZDU5ZmE2ZTU3ZjEz=
Nzc1MWZkMzhjMWQzYTQxNDc5MjNjYTdjNGRkZGM5MDc4OWVkY2ZiMGIzMmIzNTQxNDcyNThmZDc=
2ZTAyOWZlYTViMmM3ZDk3NjRjYzUwOGFkNjZkMjhhY2Y0NjdhNTRmMzM5OTNkZjQxNzVhM2I0YW=
ZjZTE3OTU5YzUwMjUyZDJjMTBmOTJmMTk5YzE1OWJhMmE5MWM4YzZmYjc5NDJjNzNiOGRhMDJhN=
2YzYg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNDc1ODA4Zjg3ZmY1ZjdmYmU0MDNlYTIwZjMxZWZiYmM4YzY1OTAxM2U=
zM2UwMjdlOGNiNzQ3YWFmNzllNjU1NmRjZTNlNGI3ZDYwNDlhOTg5ZGUyOTdlNzM2MWVjNWYwY2=
E1ZGYzNWI3MWQzYjJlY2FkZDU5YjhhYTQ4ODhiMjcxN2UxODcwMDUwZmJhNDA3YTkwZDJlM2FmZ=
mY1YjIyZWY0M2EzYTVlYzc1Mjk0MzgxY2EwYTI1YzExMTJkN2E4YTEwOGZlYjQ5YzRmZjRiZDQz=
N2Y3NTE5NmNlNTJmMWY3MjYxYWE1YTRkMzk5MjcyNGQwMDRiY2M3NmY1Nzc=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYmNjNTM0ZWI2OGI5MDIwY2YxODRiZmNiNDIyM2NhNzg1NDVmMzNjY2U=
0NDNjYTljNTBhNzgxODMzMzAyZmMwZWQwNDkwNmZjMGRiMDI4MmQ3NmFjOTExMjJkNGQwODMxMz=
M3NWRlYzkzOWY2ZDkzMDA1Y2UyZDNkNGJhZjBmZWNmMmVlNzU2NDVlMDQzYTM5OWI2YTc5YjEzN=
Tc4Y2VhZmUzYzdlMDk1ZDZiMjliMDk0ODg3NDc5ZmZlZTc1ZWM0ZTU0MmQ3YTEwMzIzZTNjYTc4=
NGE0ZDU2Njc5NTJjZTk5NmZlMDUxYjgxNDcwODBiZGZkODNkMzkzOGU2MDRiYWUzZGEwZWJiODd=
lMDFhOWRmZWQ1ZmFhNTM3MGIwZTE0ZmQ2YjBjZjg2ZjlmMmZhOGUxYjc3YjNjYjhhODY5ZDU2Yj=
UyZGY0N2U2ZGY1OWNjNjMzMjQ3MDZmZTdhMDRmNWM1MTkyN2Y5M2E4Yjg5OGI3Y2QyMjViYmVjM=
GI1MjUyMzA5YjkyMWZkYjhhZDJiNDhjNjQwMGViNDU0MTMxZDRkNzQ1MzJhNGE4MWUxZTYxODVi=
ZDIwYjg=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYjVlZjJjZWUyNWViYTNj=
MzdiOTk4YWE3MzEyM2ZhODllMjllMzNlZTA2NWUwMWY4NjlkN2Q4YTNlNjMyNWRjNDY1ZDZiMTA=
yMGU3MDc1NGFhODUyNzQ2MjVlODIxZjUyZDNiNTA0OTVmOTM4MzdkZjgwZmVhNDkzZTYwYjRhOG=
MwNDNlNWQ3Nzg0N2FjNjQ5NmFjYTA1NzY2ZDFkMWQ1Njk2MDZlYTlhYjJiOGY1ZGE5OTFiMWFjN=
DBlYWIyNDA1YTc2ZGQ4YWZjMTBjNzEzNzdlMmJkMGFlZTdhZjhlNzY5MWYyMzY3MDM4M2Q5YTNi=
OWYwZDIwZTUzNWI4OTc0ZjQxZjE2MGI5MDczNmYzNTViMTgwYjRmOWNhY2Q5ZGY4OTk3MWMzMTY=
wN2FmZGZiZWE2MGU3ZWFjMjMxZWZlMTk3ZDdkY2EwNTcyMzQwOGMxZjdiMjAyZTAxNDk0MDRjMG=
Q3MGY2MzRhZTU1NGI3YWM4MThhYTU5M2Ez" target=3D"_blank">
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
?u=3DZTY1NjY1OTJlY2ZjNDFkMzNlYjQyOTY1OTAzNWUyZGI3YTM2ZDI0YmQ3MTA1MWRjZGM1MT=
U1ODAzMjdhMzY1NjAxNTg1NmYyNzBkNDU5NjI3NmM0MmMyYzEwYzc3MTlhOTJjZjQ4NzE5N2ZmN=
DhhN2FlZjEwYWZmM2M0YTNhMmEwM2RhZTk0ZWFiZWI3ZWIwZmY3NjI2MDU5YjQ5ZDQwODQ2YjRm=
ZTEzOWQyZjc0Y2UxOWU0MDI3YzNkNDAyN2Q2ZTFlNTBlMzhlM2RkYmY5M2UzNTljYjEyMWU1OWQ=
wMTg4YWM5N2ExMGMzYjgzMWUyZmNhNThkZDA5NjM4MmVhZjEyMzVhOGMzNjk2ZGYyOGFmMjYyMz=
ZhNzk5ZTE5OGI0ZTIxMjFmOGM5ZDhlY2RjZGViZjc3ZDgwMmMyMTgxYzlhMmQ2OTg3NGIyMDE2Z=
WMyOTcwYWE1N2NiMzZjODg2MjJhMDg3NmJiZDgyZjg5NTczNTU2NzRiZjY3" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DYzNkZTAxN=
TE0MGJiODc2NGFjNzZjMTgyYmJjMTg5NWI1YmM4NmIyOTlkY2Q1NmI5YzIwNjZjMjE1OWRhMGI4=
Yjk5ZmI3OTViNTYwM2FhNzg2ZjAwN2ZlOTk1YjBhYjM1MDljOTQxOTg4MDU0ODU4NjNlMTFhOTU=
4NjU4YzVlM2Y4OWNmY2U4MjkxZDg1MDhmODMzZmY5NzA4OWVkZjQ1OTZhM2I2MTE2MGZlYjgzNW=
UwODQ0ZjczNDAwN2ZmMTkzNTZmNWY5NDU3YjA3NWI2MGZhM2FkNWQxMDdjYzI5YWMzZTc5Mjk1M=
jA4NDUyMmIzNjJhMjE5YmJiMWQxODlkMzYzM2VkZWYyZjBlZTI4MDkyNDUxYjI1ZDM1NjBiY2Iw=
NzJlMzU2NmRjNTE0Y2Q3YzRlZjIyZTkwNjUwZjYyMzI1ZDU2NTVhYzcxZWQxMzllOTRlOWIzNmJ=
iNWIwMzBjNGJhYTY0ODgxN2VlYjRiOGQ5Y2IzODgxNjgz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNTQ1NDE=
wMjg0NjhkOGFmYTliMzcxM2EwNjc2MWIyYzk3MmMwODc1YWJlN2RmYWQxMzBjYzY5YjkxMGUzMT=
JhZDU4NzU1MTdjMDcwOWIzODM4YmU0OTkzMjJlZGFhMDY0MzVjZWFjMTUxYmZhZjFmZjZjYmMwY=
WRjYmRhMWJmMzRlMDllYTBiNWIwMDI4MjM4NDg0ZjIyODMwODNhMzY4YmM4NGMzMDhhNzJlMDAy=
MmJkZTIxNTI0ZTE5Zjg0NjEwNDU3MjBhZWFhYWMwZmQzZTEwMGNiYjA5NTViMzgzZDcxMWI1M2Z=
lNDUyNzMzZDU2ZjM1MmU3MmMxZWNlOWYyYWRmNTk1NTE3MGM5ODVmYmNiZDY2M2M4ODJhZjU0YT=
Y2MTJhMmQwODk1NThjODQ5ZGJmNzQ2YmI5Y2I3ZDE0YTg2YTU0NjhhZTJjMTQ4MTQxODI4NTlkY=
zZhZDU4Y2ZiMmY3OGZlNmVhZGVjYWU0YTljYTc3NmI1ZjE5" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOTg3Y2ZiNWNi=
NGFmNjRlMjZkMWFkM2JjMzE4MWVlOTY1M2E2OWFkYzA4ZDBkMmJjOGQzMjFlOGU2Y2JlYTM3MDM=
1ODU2ODIzYTBlZWM3ODQzYjIzMWNmZjdhMGNhNTgyYjFhYzcxYjFiNGIzZDQ0ZGNhMTY5YWQ2NW=
Y5NzY5MjU2MGVmY2ZlOTI4OGZjYjQ4MTAzNDczMmMxYzc1NjRkNDMwNWFiODFiZGJiNmUxNDViY=
2RlZWQ3ZWQ5Y2E0YmUyZjlhOWNkMjcwNzQ5M2E5ZWEzYThjNTg0OGFkOGJiZTBiZDhlZjEwNzUw=
ZjQ0OWJmN2M1ODk5NDNjZTJiNTQ2MzA2N2VlNzcyYmFhNWIxMGM1MGM0ZGJkYWMzNDBhNzllNmN=
jNWJkMDE4OGIyNjU4YzcyZDQ5ZmNjMzFjM2YxZmU3MTg4ZjQ1NzQyZDMyN2EzYzNjMDY3Y2VlN2=
JjMDU3NWY3YTQ2MDQzNTkyZDc5ZWM5OGM0MjgzZWMz" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DNGE1NjhiZTc1ZTU0N=
ThhNjViMzcxODliNTdjNjJjNDRiZDRkYmJiMWM2MzEzZDk3YmVhYmQyNzc0YjdmNjY3ZmU5ODNl=
MDE0NTU0ODM5Y2VkMWExNGY1MWRkODliNDMzY2EzZDNlOGEyMDY5ZDRiYTQxZDk0NGYxYzBkMzY=
5MjM5YTE5MzQ4MDRkYWQ3NjViZmQwNTY0YzIyNzhiOGRhOWUwNzliZDNmYTljZTBkZmQ0MDk1ZT=
E0Yjc2YmRmZDNiYjdkZGI5MjAzZWU1YTg5NzUwMmI4ZGJlMThmYjQyYTFmYjgyMDFmYWYwYWRjM=
GY0YzZiNTkwZGNmMjJkMzlkMmM3MmUzODU3ODQzYjI2MWQ3ZTZjNzM4NjRmMjA4MzAyMmJiNmIx=
ZTg4Nzg2MzQ1ZTlhOGIyMTlhYzc3NGJjYWFiMWQ3MGE1YzEwNjBlNjZhNWQwNTRlZjA3NmMxMWQ=
3YzZiNTQyMzlmZjhjZTk2NDY2NjY4YWZjNzMw" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMjg0OGI5Y2MzY=
zI0OWJlNGI0MTNkNmVmYWZlODRhODY4NDU5NjhmNmVhOTlkYTQ1Yzc2Yjc1ZWU5N2JjYzgwMDFm=
NWE0MGVkYTg4NjhmZGNhODc2ZjlkZjdiZDliMGEzNjVhYmQwNDRiOGIwOGEyYzkxN2RkOWM3ZGQ=
xYmZmY2MwOGViYzAwZmFlNDRhYmU1N2RmMTUwZWFkZDkwYTI2NDQ0YTZlZjI3ZGU3MzQ4MTM4ZD=
Y3MjlmMjBhMDE3N2EzZWY3NzI4ZGFiZjA2NTUyNjk2OGMwZGI1YjlmNjg5MzEyNmE1NWI5NzJlM=
GJjNTgzOWI0YjMzYjNjMDgzNTAyZTcxMTZlNmU0N2M2MzQ3MWVjNDNjYWRjODEyMWE0Zjk4MDA0=
OTNlYjQ4MGJiYTA1ZWQwYzUwNmVjM2I5N2U2OTFmNmIzMjUxZTExMjUwOGM0ZGE5ZGUwYzdmYjd=
lZGVjY2M0MzUzYTM4NzMyZTA0NDAwMmE2ODFkNDhl" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DODk4NzI=
xYjQ5ODhlMWY2MGQxMjA5MjI3OTU1YjM2ODJjNjVjMmVlZGQwNjcwOTkyZTViMGQyM2ZjN2EwMT=
c2OTEzMDhiYTE3Zjc2ZDdhOGEzNGExYTgwMTZkMzYxZDgxOWJkMzQ0NDVjYWI2MmM0Mzc1N2JlY=
WI1YWY4NDAyZDVmMmUxMDE0ZWRhNGNmZmE4YzMzYzNiZGU1YTM5MTZmM2I1YWZkNzA4ODMzMzIw=
NDQzZmYyZGJhNzRkNzVlMGQzNzA2MjE3ZjcyYTYxZGY0MTYyZTNhMjNmYTRmY2EyNThjOGI3YjB=
mYzE0ZWJmMzQ1ZDE5ZDNjYjUxYTFiMDkxNDA5Y2JiY2Y0MTAzYjAxZTg2Y2I4ZTRhY2FkNWMwZj=
gxMDBhZTY1OWNmYjhhZjFhOGQzNmEzZjcyYmMzOGM5ZDliZjUzNzVmYTA5MWIyMDUyMGJlOGMxY=
WY2NWFkYmY4ODdmNWNlMDBkYWI1ZTllMjJiZWUyZjIzYWViMzMyZA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZjE2ODM5ZTBhNjNkY2JjMDNmZjczOG=
Q3ODFhNDJhZjIxNjIyMGI1M2JlYjZmMmZhYzM2NjJiYjIwMWQ2OTYwODE5MmQ1YWEyMGZmNjc5Y=
TcxOWQ4MmIwMjk2NTcwMmEyNTJhM2U4MDQ5ZDI0Yzk0YTdjZGIyOTAxZmU2YzRlZWFjNzA0ZDli=
MDRlMjNhYjg0MzAzODc3NGZmZThjYmJjZTJjYTBjMjdiYjg4Y2I4ZjY4Zjk2YzMyOWU0YTg5ODI=
2ZmI5ZDFhMTVmMzY4YmUzZjE3NThhNzI5ZjZmYzhlZDUyZWM4MmQzMzFkODkzNzNlYjg2MTllNj=
M2NDhkZjZiNTI1OTgwMjA0NTE4NDE2NTEyYjNjYjU4NGRhMTM0Y2MwMjc4ZmNhNzBmY2I0OGEzZ=
GVjNjRlNzhjZTg3ZDM0ZWMzOWIxMDkyNDY4ZjdhZTdmODhmMWQ4NDE3MTQxN2VhOWI3NzgyYjgy=
MTMyZGFkYTY1MjU1NmRiYWVk" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DOTRjODcyZjIyMTBmODJmMTcxMmJjMT=
VjZGVjY2M2NmE3NDUxZjRmZWRhN2ExMGEwYjU4OTlmMjM0MzRjZDM2ZTVjN2EzZDI5MDUyNDJkY=
TUxMzUyMTBmNTNlYzE2MTI3MTU3YWQyNGUzZjY0OGY2OWRkMmFkYTgxNjYwMzQ0YmFiYjQ1Y2Qx=
ZjQ0ZjMxM2YwNzA2OTEzNWNiZWI0OWI1OTVlMWQ2Y2UxODljMmY1ZmRjOWYyZTg2NzZiNjg4MWZ=
hMzc3OGNmODBlOWNlNzgyZGM4OWQzMmNkOTYwNzQ2M2I5NDM4MmNkNWJjOWUxNTVhNzUyODgwYz=
djM2NhMGMyNzg2OTRlMzhhMWMzZjc4NTM1OWE2NjRhZTA1NmZlN2YxYWQ2OGE5MjhkYTIyNjUzZ=
jRkOTUyNjZkZjNhYTc4N2YyZWU3YmVmZmQxMGMyZWQ2MjBkZTQ2NzJlNDY4MWRhMmIzNDlmM2U2=
ZWM3ZGM4Yjc0MGQ4YWUxZDI4" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDE2ZmVkZGE3ZWU0=
ZjczYTQzMjVmZmM5MTZiYTcwYzE0OGQwM2I1Y2JkMGJmNmU0MTc3ODJkMzE5MDE0MTg4MmJmYmF=
hODA5NDI3MTVlNzU0MDNkYzIyODRmZTc4OThlOTEzZTAxYTExMmU2NjBiNjdmYjI1YzFkZGZlND=
ZhOTk5OGI4ZWEwMWY1MDMzNzA5ODA5ODdlYzJiY2Q4MzI1YTUyMmJmY2RkYjE3YmEwNTQwNTNlY=
mYzNmJlYzg3MzhiYTliNzRjM2I2NjA5ZjBkODViN2U4NDI0YThhYmIxNDFkNGJjMjdjYTVkYjcx=
YzM0ZWQwOWFkNWYzZmM1NjM3ODFmMTQzN2Y2MjA5NzUwMTAwM2Y4YTUxZDNiZGViMzExNWVmY2J=
mMWRiNjFjODBmMTBhNDM2M2IzOWZhNTBjMjljZTRjMDI3YzNiMDVmNTI4YzY3MWQxOGU5MmFjOW=
I4YzE0ZTY0MzE3NGE2MGZlMmQyMDAyNjMzMDJjNmE3Ng=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNjAwMTlhNjVjMTQw=
MDlmN2I0M2FjNWMxOTkzNWZiOTliMTdiMjU1OGZiMWMwYTRjODZkM2NhM2E4ZTAyN2RmN2EzNTl=
mOWUxMzcyMzRiYjFmOTBkMjBiYmY3OWI5MDUzNTQzMmRmNWExMDhiNmM3OTcxMzA5NjBlOTI4Yj=
AxM2VjYmY3ZDQ0ZDFiOTc0OTQ5ZjhkMGNmNTQ1NTYyYjVkOWMyYjU3NWU5YmU2NzE5YTI5OWEzZ=
DNlNmJhZTI4ZjRiODRiMGY0ZDM1MDk3MjczMDAyYTkyOTUzOGJkNGY2ODI1NTA3NDYxNGU3MjFh=
MGYwNjQ5OTY2MDI4YTNmMWIzY2E3MjY2ZmQ3YjcxYjc4OWEyZTNlOWEzY2NjZjNhZmI4ZDE1YmE=
zYTgwYzNjZTI4Y2M0OWVmNzI4Y2RjODMwZGZiNGFmMGJhNzliNmFmYjk5YjRjZjAwNzc0MmE4Mz=
ZjZGIyYjQ5MGVhY2E4MTg0OTc5MTdkNzIwZTk4ZjgzYw=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmUxNjM0NWM5MTAw=
ZGVjMGE4Y2Y2ODlhYmFjMDU3ZTE0NTVlMTMyMGE0Zjk1MjgyMzg1N2JmM2MyODM4NTIxM2FjNzU=
yODNhODlmNDUzMGUwMDczMDdkMDAxYzVhYjBkNTM5M2U0YWZmYzRjY2IwNzA2YzZlNWVlNGY5Yz=
dlZjFkNDdlMGQyNjc1NTYxMGZiMTkzM2U3NzA1OTdiOWNjYzY1NzJiNmE2MDA4N2E1ZTczOWZmN=
jMxYmFlMDgxMjAxYjBiOGJkZTgxNDc2NDYwMTQ1Y2VhNjk5NDE1Y2JlOTYwYTI3OWExMmFlMDg0=
ZjM4ZjM5ZWE5MmUxMzgwMmU1NzhiNmRmNWRmZThhYmE4Njg4Y2IyYWExNjIxZmYwZjRmNTJmYWF=
iZWY0MDVkY2NkNDkyZjU5ZTE0ZjMxYWVlNTk3YThhNzFjOTZkNzAwZDI4NzIwZWQ2ZDRjNDgxZG=
FjZTVkZThmZTE4MWM3ZDg1NmJiMzJjY2UyY2RiNDI4Ng=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzgxMjhmYjEyYjZi=
Mjc2MzkyOTEyNDU2YmI5NDE5OWFiZmUyODBlZjQzMWIwMDNiNzViNjlhZDVlMWRhMTU2NTQzZDN=
kYTE3ZDExOGQ2MTNmMzI4NDZiNTI2ZGUzZDc3ZGFhZDNjNjY5ZTgwYjFmYzc0NWI2ZWZhMmVmND=
c0ZGI1ZTBhYjRlZGIwN2JmNjU3MzZlMGU2MTNhNmMwMDA0ZTBmMmNiY2MxNWM0MDc0MGE3ZDRmM=
TBiYzBmYTNhOWY3MzUxOTBmMWUwYzFhZDAwZTYyZDY0MDU0OWM3N2VjNmVjM2Y3MjcwMDk5YTk5=
NWJjN2Q4MTk1MjBjYTA4YWJjMjgzMWI0YzczZWI0NmMxYmNkODU1MDY4NWQ5MTNmM2RmYjM5MmJ=
iNTRlZjYwMDQ1MzI5MTg5YTI1ZTM1MzIwYjRmMjA0M2QzYWUyNzUyNDllOTg2MTg2ZGFkYjIxOG=
FiZjkzZGJkMDY5NzVlOGQxOTg0Y2FlYjk5NDk0ZDhkNg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNTA2NjI2MmM4YzhkYm=
U5MWM2YjJkNzcxMDUxMjY5NWJkYjA1ODRmMTQwZWU0Yzk5OWUzZTdlMjAzNmNjODAzOTExMDBhZ=
TdlOGExYTJhZjEwZmY2NDAxOTRkZGVjMDcyZDIwN2QyZTM2YTk0ZTA5ODJhODIwMGVhNmVlOWU0=
MzI3YTExZjdkMTU0NjY3YzlhNTcwN2YxOTgyN2I4Mzg3ZTE0MDI1ZjE5NDU1YWRiN2NkMzg3YTQ=
yMmU5N2ZhZWI4NmZhZGJjY2JkNzcyY2E1ZDU5NGZjOGUxMTdhMGNiOTZlMTE1NGQyNzU1YzU4M2=
MwYTc2NWRkMDYzNmQ1NTQyMDZhY2Y5ODBmZmIyOTU5N2VhNjcyNjk2ZTMzZWJhNjM2MjBmNWVhO=
DIxOTk2MDgwYzNjY2ZjMDUyOGFlMzUxMzljMjBjZmJlNWFkODA4MDQ4MTM0MjU1NGJlNWIyZDU0=
ZmEyOGFiMTU3YzU2MzAzNjllZWZhYzQzOGFkMmFhNg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZGYzNTkzMTVkZjM0=
ZTQ0Y2E5Y2VkODQ3Zjg0YmQ1ZGM5NDgxOTNiYmJlMmMzZWVjMDFkZjU0ZTU1MGE0ODZjMWNmZmM=
1MGVhNzdlMzAzMmQwNzhmMDAwN2IyZDMyOGY5ODBlZjdmMzQ0YmY3OTkxYjMxZDZhZjg4NGIwNT=
E0MWY3M2NiZjExY2VhNzhjOTg0YjJlYWY3ZjA4ZGJmMTc1NGQ1MzNlNTVhNzMyOTE0M2YyNjI3Y=
jY5Zjk5M2FkN2FmODkwYjA4YTI3Y2Y2Y2FlMGE1ZmUwOTZlYjdlMTEwN2JhY2IwYzQ2OTg5M2M1=
ZWVhOThiMDM0Zjc1ZWRlNmQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DNTEyMGZiYmZiOTBiZDJmMWFmNWQ2MmI4ZDljM=
jMzYmJjYjAzODAxZWY4ZDQzMDEzOTBhMzE2YTkyMTAxMTM1NGM5MmVmZThmZDMyYjJmYTg4MjI4=
MTIxNTQ2YTcxODM0MmRkZmQyMmQ3ZDI2MzEzMTE3ZWI2ODAxYjgxMGNiYWM0ZTdhYTc1N2E1ODh=
kMDg2MjI0MGI3MWQ4MGY3NzEzOTI5MGE5YWNiZjVhNzlkMDM5Mzk1NWRiNzM2NWYxMDc4OTYxOG=
RkZjg0ZWY3NjZkNGQ1MjVkZjYwYjBjN2QzMzJkMWZiYzFlMWJiMjJiNTgzYmQxMGVmYjU1ZjY2O=
WNlMDYyMDUxNjlhODRjYjJmYjg4NDRkMTQ3MzFhYzllZjQ2ODQ4MTliN2Y3NzY0MzIwNzMxYWNj=
ODg0NjYwNzhiN2FhZjU0ZWNlMmU2NmRkYzUyODUzZmM1YTQ2YWM4ZmFiZWY4ODA4OTUyMmY1YjV=
jZTk1Nzg2NzQzMDAyODNjY2ZkMzYzYjQxZDUyYTIyZTcxNTdkYTc3NmFhMTc0M2IzN2Q2MWM1NW=
E2MjBkZDI2Y2NjMzNmNTM4Zjg=3D" style=3D"font-size:12px;line-height:134%;font=
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
