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
From: localhost:1333?u=3DYzEwN2Q0YmYxYzkwOWQ1YTAzNDRkOTJiMWQwYzA1YmUyNTc3OW=
ExOTVlZmNiYjJkMjdjNjExOGJlMzZmYTE1NGM3ODQ2ODUxZTNmN2Y3 <mail@eg.expedia.com=
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
<localhost:1333?u=3DMjFiMDZiYWYzMWJiZjg5ZWI2MDlhY2UwNDExYmE5OGZjMDgxYjNkZTY=
5NjU2MGY1NjczNWYxNjM3ZjRlZGYyYWYzZWM3MThhNWQxYzUzZWFkNWY1NDViODMxM2I1YzNhY2=
NkYTlmYjU5M2VjZDMxMTAwODhhNWYzNTEwYzQxMmVjNDU1MWNiNDdiMWY4NWMwZDFmZDRiNDM0Z=
mQ2MDlhYjE1YWY5Y2UzY2VkY2I1ODgxNTU4YzNhZTQ2MzQ0YzQ1YzIxZDZiYzdhNTgzYTVhNGM5=
MDgzMzk2MmViMTAwOGVmMGQxOWYwZWQ5NDc1MjM1ZGZiMmY3Yzk4ZTVhZjM1MDk4NmY4Yzc5ZjA=
3MWI4MmQ5ZDkxNGNlYjliNzg4Y2NhN2VkYjUwZjE5NTY4M2QyMWZjYWY4ODRhYWNmZDVmYTkzND=
ZmNTgyYzZhMGY4NzRlNmNmZTcxYTNiYzhkMTI1Y2ZjOTYwNzBhZTc0MjJjODE2ZjQ2NTYxN2Fl>

* The Travel Edit
<localhost:1333?u=3DZWJjNGUzOGIyMDFmNGIzODA4NzE0MDBkNTUzMjViYTI2ODhiOTY0NmF=
iOTM4NzNhMmQ5ZjVmNTA1NjJmNDVkZGEyMWJlNzk5ZTRiMTUxYWJkZTI1NjQ5M2YyMmU3YmEyNz=
I4MzE3NGIyNjE3ZDAyNGUwNzJhNzg2ZWIwYjc0NDJjNjdmZjYxZDJhNjRkOTg3NWZhY2RlZjMxM=
zAzNWRiZThiNzk5ZGMwNjBkNWJlNjkxODk5MjM0M2ZjODEwMDBkOTE2NzFlNDE5ZWVjNjhmY2Ez=
MTVmODlkZDcxNzJmYjgwZDI2YjhhNTQ3ZGY4Y2UzZWY3YjA0NzI4YjQwNjQwOGFkMTU3N2RhYWU=
zMjMxNGI3ODliMjE3N2Q3NDlkOGRhM2NlOTA5MTJiY2I3NWZhMTBhMmZjZGU4YTNlNTVkNzgzMm=
QyZmQ0YTYwZGY2Njk5YWY2MDc4MDBiYTNmMDJlYjNmNTFkNWQ3MjM3NzU0YmE3MWU4MDhkNWZi>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYjc3MTJiNTAzOTI0ZTZhMmJmYzhkNDU4N2EzYmI3ZWNmYTQ2MGJiNzR=
kOTgzZWYxY2FjNjMwMDQ4N2JmMDg4MzA3ZTQxOWNiY2RlZDMyMGM1MjA5YjU2ZmIyZjJhZjFjZT=
YyZmIxMWQ0YWRmZTA4NTliOTBmODQyNjI1MjhjNDY3MjU2MzhiZWViZmEyNDg1MmIxMmRlMmU0M=
jJkOTFkN2I0ZGI1YjczMWI1ZWVmMmZkZDY1NTYyYTY0NTcyZDBmZmE5ODhiMWJkYzE3YTI4YmY5=
MmVjNWZkNTc5ZjQ0MTdmMjNjY2VlYWMwZGM4NWZkN2UzODk5ZTEyYTIzYTA0NjdhNmNmZDRlYWM=
xYmIyY2EyYWQ5ZTRjMTgzZDA1ZDg4ZTAwZjc0ZjBhZDZhNTAxZjEyZGYzMDM3ZDE3NTZiZmY3YT=
VkYzY5ZmNkNjQzZDRjMmIzNGUyYjRjMTJiY2NmNjlhMWE1NjJkZTE2Zjc2OWM0MzUyNjNlZjk1>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYWRiNTk0Yjc5ZWUwZTA5YTE4ZWJiMDczN2M0YmFmMWM0YWQ1NzA2ZGN=
hNTE4NGQ0NGU4YmYzNWZiZTM3YzgzYTE1OGJiNjMwMzMwNzlmYzhlNzRjMzY0NDBmMmRmZmU3OW=
JiNjBjNjVmODgwZmE4ZGY0N2E4MGVjOWMxZjEwYTNhYjAwZWYwMTliNTY3NzA4MzA0ZWM1NmY3Z=
WIxNWY0ZWUzNTQ3MTdkYTA5OTk5YTI3ZjY5YmQwMmMyYmU1MDdhN2RlMjI0MDcwYjZhZTU1NDk3=
ZjI2ZTBiMTU1YjlmNmQyNDQ2ZGNjMDhiM2Q4NzcyZmNlYjkyYjdiMmEwMjBiNDJkN2Y3MzU2YzY=
zNDg3Y2FjYmMxN2UwMTI3OWE1MjE3ZjE4ZjAyMmE0ZGI5ZTg2NTBlYWZhMzA4Njk0MTE0ZGJiMD=
cwOGI1NTc1YjA5ZGUzNGZiMzgwNTA0ZTY5OWY1MWRhMTk4ZGRiYzM1YzE3N2FkMjdmMzM4OTlm>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMTBjNjIxNjNhYmQ3NWQ2OTM1NzA5MjRkNWJkNGZjYTllYjY0MjY4MjE=
wN2ExN2Q4MjgzYzg2ZjYxZTFlMzVhNmI4YmQ0YjQzY2Q1MjdiZjJmYTI4NDg2ZDYyZjFlYTFmOD=
M5MjQyYmQ5NTRkNDE4MWNhZTY3NGZlZjMzMjVhZDMyNjM2NWIwZTkzZjA1NzA4NzBhYmQ0NWEwZ=
DYxMGRlMGQyMWM1NmU3ZDY3Yzg5M2E5YTlmNWM0M2I0ZWE2MDg5OGVhZTBkMzYxNDljNTQ0ZjNl=
Mjc2YTZmNTRmZWRlYjY3NmRhZjljMjg1NzFkYTM5OTRkMDdmYTUyOTgyMWRhMTBmMmM3ODU3OGY=
wOTdiZTdmN2QxMDZhNGE3ZDJkYThiMmFkM2M0M2E4OWEyNDI0NmUzZGY4YzA1N2E1YTJhMmZkOG=
Y2MmE0N2FiZTE3OWUxNjFiMjIwYTVmYTZmZDEwY2I4MzdmZWI2ZTAyNWIxOGVjMTBhZTNjMGZk>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMTNhZGVjNWFhYTk5YjU0NzBhMmVlM2RiYjVhMmU5MTIxNmE4ZDNhN2Z=
lYzc2YzI3MzZjNTVlODIxMjNkYmYzYmFiNWZlOTlhZDkyMTk1MWYyZWU5YzZlNjhjMmUwYzZkND=
llOTlmYTA5OWNiMWZkY2U2MjQwNDZhMDIwYjRlMmU1YTc2YzIxNDhmMmEwZjU5ZGY0YTIwODg0M=
zIxNDcwMDAzYTNhNDYzYzJhMmVlYmQ2ZDk1NWQxNzhmOTZlZjNkMjcyYTFiZGRjMTQ2ZWFlMzA1=
MTcxYmM1NzMzY2FlY2Y5OTQyMjE2YTUxNmVjMjc3MWY4MjdiZTllYTljNTNiOTRmYWZiOWIyOGR=
iOTMxY2Y1MjliYzJjMDMyYzJiZGJjMDUxYzUzZmFkN2RhZjZjOTkxMTU3NzNmZTI4MWQ4YmQ0NW=
Y0N2EzZGE2OGQ4NTY3MDk4OWYwMDg0MmMyNDRjNTQ5ZmRhNGFiMDIzYmM0M2E2ODgwNzdlMDZh>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMTQ5MDcxMWU3YzJhMDE2MWEyNTk4Yjg4YWRjNzI3M2QwZDRkYTgzMjd=
hOTQ5ZmRlOTQwMmQxNGRlZDM4ZDI3NjIzNGZlZjk0ZWQ5YzM1NTA5N2JkNThlNDFiOTgwN2Q4NT=
k4MzM4MWI2NzkxMDhhNjBhZTlmYWNmMzU3MGZhM2ZkMDI2ZDVkNWQxZmNkY2MyNTJlMTczNGU2O=
GVlNDEyZDhlNWM1ZWFmMGQ0ZWFhZjM2NGJlY2NkM2U2MjI0NGY1NmEyZWQ5ZjU0MmRhNGQ3ZjIx=
ZWQ2ZjA1NGI0MTRmODI4MzRmNTFmMzIxNTc0MzMyZTkyOGE5YTEzYzYzNDY3MThlN2I4ZDA4OTA=
zODExYjlhZmFhZTdhM2U1ODMwMmY0ZTZlNzVmMTJlOTA0NzExMGM1OWE4ZmYyM2EwZTcwMjU5Y2=
Q1MTEwZDQ1NDAwM2E0NjU1ZjhhMGYyMTVkMjdmYjlmYjQ5NTU4OTUxMzIxNjVlYzczYzg3YmZi>

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
<localhost:1333?u=3DNTM0ZWI0Nzg3ZjUzNjBjMDM0MjJhZGUyZmY2MjJkMmRiZWYyNDM5OGJ=
kYzM5OGMwZTRjOGFlOGM0NWZjNDk1Zjc2OTc1Y2RhMTc3OGU5ZDI4ZmVjY2Q1OWM4NDRjMDBmZT=
NiODcyODNjY2M0YTg1MjYyYTcxMDdmMjkyMWM1NDljZDIzMWJhNzljODVjYjMzZWFkYzIwZDljN=
Tk4MmY5MGE5NTY5ZTc3ZDkwYzJlY2NlZjVjNDgyMDBhOGU5MWRkNTQwMjAxOGQyNTMzYmY1YjEy=
NDQ2ZmNjMjE1ZGJmYTdmZmQyY2VhMjgzM2QxNTI4YjJlMzQ4ZjliYTZkNzkzMzM5MjRhYzNlZWU=
4YWUzZTM3ZmQwM2IwYTY2NjFmMGQ5OWQ1M2U4NDEzNDNkNThlYmI4MTk3ODMwNmU0MTBkNjA1Nj=
cxZjAyY2IwOTA4NDM2ZTlkY2ZmMDNkZWI3YjQwZjliYWE3OGE3MTRjNGE2YWM4NGI2ZGZmMjRiO=
TI2MQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DYzYyNGZhNGZiMWQ1MmY2ZjE3NjQ1MDA3YzQzOWZiMWY2ODZjMDI1YzY=
0MmQyNzQ4ODBmOTcyZmVkZjczNWU2MTIxYTc0N2QxMWY3ZTVkNjNmNzMyMGRlNjY5ZWU4ZjFiZG=
RkMzg2MDA4YjkxNDlhYWZjMGJkMDcxZDM4MGI2MDYyOWVjMjJkNmM4OTllMjZiZDg3ZjRiMDgwO=
TBjMjFjZDNkNTIyNzhkMWIwMTg3ZThhYWZmMWMyMjMxOWU2ZjliYzMzOWM1YjNlZDg0NWVmZjli=
NzgxYzBhYTJkNjFiYmE5ZmYyNzZjNWE0MjU4OTM0YjlkMmNlNWI3YmRhZDVhZGY1NGUxZjY0MDg=
1ZjNiMTU1YWI2ZDQ5YzI2ZjZlMjkzZWY4NTBjYjZlNWQ1YjI1OTgxNmNkMjg3ZDY1YWYzNTk4Mj=
YxZmE4NWZlZTA5Nzc0MWNiNjIxNmZiMTRhMTNhYmZiMmExYjk5MzMyYzE3OTQ0NzQ5ZmNmYTY0>
  [image: Google Play]
<localhost:1333?u=3DNDg3MmY2ZjA3ZjI4ZDEzMGIwMTE1MDQyNGZlMDY1ZmUwOGI3MTY2NjB=
kODVjYzRhODYwOTExZDQ0YmU1ZmM1YjJkMWU3YTExZGZhOGIzOWM4YmYwOTUyMGFhNGJkZWFhMT=
VkNGM5YTZiMWMyZjU5N2MzNmE3ZDcwMzVlNDBkOGI4YTEzNmQ5NTU0OGU3ZTk2MWU5ZTdiM2NiY=
Tc4MzM3MTkxNDMzOGFiYmJmZTJkMzQ0ZGQyYWUwNDRiM2FkNDYxZDA2Y2ZlMTNjNTdlODI5NjYx=
ZTIzYjIyNGYzZTE1YWFmZDQ2MGVmMDJlMTEzMjgwMzQxMWEyYTUzZmMzNTM3OWQ5NDBjNzUxNzh=
lM2MwZjliZGJkY2UyMmUxZmNmMmU3MjUyNDI0ZWNkZWQzZGUyYjJiZTIwNDE4NDc2MTgwN2NlYz=
AwZDI1MzZmZTFmZTI1NWMxMDYwM2NkYjkwN2IwMDkyMjgwZTNkYWY1OThiMDNmN2E4YzViODE0>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNzE1OTNmY2Q0MDUxY2E3NTc2ZWM0ZDQ5NzgwNWMwOTI2MWJiMzdiMjU=
4MGZmZjk0YTEzN2QwNDg0Yzg2MmZlYWU4MzA3YjYwMzBhMzEyZDQ2OGI3YTY5ZWY2OTE4OGVkM2=
U1OWIyYmZhYTVlNzdlMGNhMWQwM2U4MzE0YTliYzQ2ODFlOTNmMjA0NjBmZDBiNTUwZjQ0MjI0N=
WExOTgwMDY0NTU5Zjk0YWMxOTRiNWE1MjMwNjg0ZTI3N2Q3YjcxNGE5ODg3NTgzNWE0ODgyZGM3=
MWQ2NGEwYzIwODNiYjg4ODJhNWI4NjM3NTU3ZDAzZDY1ODE3NmE0NTg5Yjg1MTdlY2UyZTBlNzE=
yMWZiZjFiYjhiNDQ2OWNlYWVkNmVjNzBkOTZhM2I4NmVmNTVmM2NmYzk5MjczYjllZTdjZmEyOW=
RhMmY3MGY0MTJiOTFhYzg4NzYwOWIyMzVhMDFjYjFmOTMxNmM2YWVkMjM4Yzg4YWE3ZjdiMGY3Y=
mZlNw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMjRlNzhjMDk2NTZiZjc3ZGI4NDhiYTA0NTgzZjI2ZDAwZjE0ZGQzMTQ=
wNmM1OWU1ZWY0YjgzZDM1YzkwODQyNDllMjk1NjYxN2VkOTBkZmJiMzhmZjQyZWRiZmUyMzEzMj=
Q2YjE1NjA2ZWViZjIyMjkwM2ZiMDI4N2E3YzA5YjQ3NjRlNWI5NGZhMzk0ZDBmZDZiNTI0YWUzN=
GRlNjBiNzE3MmE2ODdlNjdkMWViMTc2MjI1Yjk2OGUzNzc0NDI5ODJhNDJkMTM0ODk3ZjljMGEz=
M2QyNmU4ZjhjMWEyYWYwZmVlYzIxMjU2M2U5YTQyODA1NGZkNDI5OWY4ZTA5MDBiMDQ3OTM4ZmZ=
mNzk3Yzk4ZDlkMzJiMjUwZGNhNTQyMDhiNjY0MmU1Y2RjYzY0Yjk4ZTFmZGVmY2RhOTI3YzM4ZG=
FlNWJlNjhlNTk1Mjk3NDdhMTI3YmY0N2MwNGE2NDQ0ZmFkMWYwYTc2NjY5YzYwYzNlNWJkOTUxN=
DE4Yg=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMDEwYTI2ODQwODhhMDM5MDZkNzMyOGU0ZjZkZjEwNzFlZTViZWQ5ZTB=
kOTVkY2U1ZGYxNDljY2FlNGMzOWFmODk1MzZhMTk3NDg3MTdhZWMzNGM1YzhiNDc0OGVhOTQzNT=
ZiZjNiM2I5NDMzZTVjNDAyMGQ3MzQwM2JjZTEzYWFiN2VhNDI1NmRhZmRmYWJjOWQ1MWViMjBiZ=
jRjYjdlNGI5OTNkN2NhNWVhMTZjZWE3ODAyYWQwOGY4NGMwNTI4YzA0N2IwMzVkOTBlZDU2MmE2=
NGU2NGRiOGQxODFkNzMxY2M4OWZlOTg5NjAwM2Y3ZWU2MjQ4YmUyMDQ3ZmE2ODFhY2Q3MGMzNjJ=
lMjdhYjFhM2NjODJiNDZmNDBkNGJkN2Y1Nzk3ODc1YzRlNzM4MzM2YWM2ZjBmMzUzMWY2N2U2Zj=
dlZTJhNzY0YjEyZjJlMzM0MjA3NDIwMjhhMGFmMzk1MDcwZGZlMzNkZGNkNzQwN2EzYWY5MTYxZ=
DQ0Ng=3D=3D>
   About Us
<localhost:1333?u=3DY2ZkMzI2MTJkZjllNmMxNTVjZGUwOWJkYzJlN2VhOGI1ZjIzYjY3M2Z=
lZjE3YzcyZDc2NTVmMTBkNTdhMGQ0ZmFlYTVmMDhjNjZhNzc0ZWFmM2Y0NTdmMWI1NGZiY2EzYz=
JhZDc0YTVlZTM5M2I5YjgzMDQ1NWM5ZGZlMmJlZGZhMzAzOGUwZjBjMjM1MzYxYmMzZjU4NmVhN=
zI3ZDliMmNkNGM0NTRkODM0Yzk0ZWViNjI1NTk0NmM5NzI4ZGY5NzM5ODRiYzA1MTAwNjMzZjlh=
NjZkYmVjMWNiMTY2Zjk5Y2NiNjlmNTAzMDE4NDBmZTkxOTY0NWZkYjM3OWRjZmQ1NWY0YzMyN2M=
1N2MyNmI1MjFiNWEyN2U4ZDRmMzIxYTIwOWNjMjE0OTM4YTEyN2NkNWNlZWZkODA4Mzc2ZTcwOW=
NiYWNkOGYxMTA4Y2NlYWE4Njk1YmMzZTAxZTg2NWQ0ODM1YjY1MmJiODNhYmY3NTA0ZmMxOGNhZ=
jlhOA=3D=3D>
   Customer Service
<localhost:1333?u=3DZjhlYjQ1ODY0N2M5OGNmZTEyMjliNTM2YWM2NjFhNDhiNzVjYjUzYTR=
hZjAxY2VhODM5NGY3YThjOGYwZjYyMmM0MzBlNDNiMThkMWM2YzQ4ZDM2NmY0ZjkwZGRjYTc1ZW=
Y5Y2Y1YmQzMzNiMGRiZjJmYmRjMjU5Mjc2ZjA4OThmYzgxOGRjNzkzMWEwNDE3ZWRiNDA4MWQ0Y=
Tg5NDY2MTMyM2RmZjY2NzU5MmY2MmM5YTkyNmFiMDhhODk3YzMyNjdmMWQzNjA4ZDBjMWJhYzli=
YWIwNDQxNjdhMGJiMzI1MjE5OTY3M2YyMjRiZmRhMTA2M2NlMWU5ZDEzZTkyMzVlYjFjNGFmYjR=
kMDk0MTAxYjdkMTJjNTIzY2I5NjA3OGM0YjMzZjE1OTlhNTYwN2NiYzdlOGU1ZWZiZTUzYzg1Mz=
dlM2QxNzU1OGExODJhZTYxNTcxNzNkMzdhYzI2NjE4ZDY3YjQ1Y2I0ODdlMzVmOTAwZDJhMTM5Z=
DQ1Zg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZWE1NzFkYmY1YzgzNzlhYTA3ZTM5Y2Y3MzRkMTcxMjFkYzVlMmNkNjU=
yNDhmMWRkNDRlOGRmZWE3NjE1ZDI1NGI3MWNkMzZjMjg0YTMzMzM1NDQwMzhkMDRkOGM1YjczMj=
k4NTY3MjExNGE5NGJkOWZhMWNiYjNmNWQ0M2EwOTUzY2E2ODg0OTdlNmQ3OGVjOWFhMmM1NDczN=
DZkZTEzYzE1ODY3YjA2ZDljMjE2NzRkOGY0ZTFmZTlkODBkZWI5NmEyZmIyMGQxODg2ZGQ4MzE5=
YjExYWYxOWRlNDViNWVhNDQzNDQ2MDg1NzJjNjYxYTdhZTk3MDc4NmFhMjg=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYjg2MWQ2ODk5NjkzNzFkNWNhYTlhOGZhNGJkOTNmYjA1ZDUyNzA5NTU=
zMDQyMzFlYWQzYjEzZjgyZjgwMjAzMjNhNTM3ZGQ1OWNhMTJjZGNjNWI4NjQ4NTNiMzAxNjBhYj=
UwMDkxNTAzYTFkNDY1Mzg5NjFkMTYyOTk5ZTdjNDFjMjRmYTNjMzU2NzU3MWQ4MWQyZWY1Yjk2M=
jU2NWEzOTFiZGZjNzJiODQ3ZjMzYmE3OTYxYWVjNzZlYmY3MTE3ZTRjZWM2MTcyODQ3ZDMzNWM4=
ODk2NWE5NzhkMWE1ZTlhYTk4ZjcyMjczYTk4MGQ4MzQxMjUwNTMxZjI3MjgxYzQxNjgzZmI3NzZ=
mZGJjNGNkMjM1ZmQyODdjZjIyZjc2ZmUzNzUwNzBjODJhYTdiNjZkMGRhNjlkODQ1MTM5YTA5MW=
I5N2JkODhkZjU4NjBjZjhkZjdjNDc4ZDVkZGEwMjg0MDY5NWQyNWUxZjc2MjczM2FlNzIyM2JhO=
DU3ZmIyMWFmYzliM2IzYTBhM2EwYmRlMjY2ODI0MjY1ZGM0ZWZlM2Q4NjU5MGU2OTlkMmFmN2Q2=
OWMzMDM=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DN2M0NmVlYzM5NjZiMDFm=
YzhmZTdhOTA3MmQ2MWQ4MmUwYTU3Y2VkYjUwYmJhODJiZGJmODA5YTExMTZmMjQ5NjY4NTY1MWF=
iOTc4NjQzYTdkODJlNGZlMWQ3ZWI0NTJjYjMwYzNmNWU3NDdmNzkxOTk2M2JiMGRhZTg3ZmUzMz=
VmMDI0MGQ1MWM5ODJkNzRmODUwNzM5MzUxYjYwZTE2ZTYyMTM5ZWI4NTU0MzIxNDU5ZjY1ZDIyN=
GYzM2QyMzkzNTQ5M2Q4MTRkM2U0MWQxOGM0Njg3OTFmNTczOGU3N2U2NzEzMWE0OGViNjIwZjA2=
ZGFjMjdmYzZjYzBjNGRkZjViMzQ2NGRhZTM3M2VlYzJkMWQ4ZTMxZDBkZjcwYzc0OTM0OGMxZjB=
mNGMyMzdjMmVhNTM3Y2JmOGI0ZWY3ZjAwYzdlNjAyYWI3OTY1OWNjODUxOGIyNGM4M2Q4ZjBhYz=
Y1MWViYWViOTYxMjA4MjJjNGEwNmNkZWM1" target=3D"_blank">
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
?u=3DYzYwZTM2NDMzNGNhYTc5NDc3MWUxNWU3MWMwMWI1NjBkYjAwNmUzZjExNmRhYTI3M2IzYj=
FhZTkzNDk5YTMwZmExNDM4ZmYzYjViODg0ODE5MGNhM2U5Mzg5NWIzMzhjNTQ0MGMzZDM1Nzc4Y=
TYyZGQ0MTkxMGUwYWMwNzI5NWQ0YzE1Yzc5ZTJjZmRjZjQ2NzUxMzMwMWE1MWEyYTFkY2Q0OTU4=
ODQzNDk2MzUyM2E3YjUwZGQ0OTBmNDM4MWIxODRjYTMzNzRjNzRlYTYwY2NlZmZhNTNlNGRiMjI=
2NTA5ODhlOGEwZjhkYTFlNDQzMWEzZDkyYmI3MzU0YmQzNWQ5NWM2YTdhYTM4YWY3YzY1YmUyNj=
FhNTBhMTg3NDc0YjczN2U0OWU2MTg1MGViNmQyYmQyYmE2YWQ0YTkxNmQ0YWU3NDcxZjFiZWI5N=
zU3YjkzZTRhMDZmYWQxY2Q0Y2I2ZDQyZjYzZGVlMDA0OTBlMGE0YjgyMWVi" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMTY4MzE2Z=
mYxZjY2MjYyMWI4NzMxZjk0YmQ4NjkzNDcyMGEzN2Q3YTYxMTcxMTQyYTJmMjRhNWU4Zjc4YWM3=
NDgxY2VmYmQyNjliZjg4MjE1OGJiZGVjOWZkOWZjNDI3YjQ3YjhjOTdlMDcyZTEzY2YwODE4Mzh=
kMWI4MDEyNTE1M2RmZTMxMjUzNzE5YTIwZWEzZDdlYmE4MGI3NjZiODUyMzY3YWU5YTNkNGQyZm=
EzMjI2NTdjM2IzZjU3ZWIyYTM1NzA1NGZlMWYxNjc5NGViYjAzNGI1MTBkMTYyMjlmNDUxM2EyY=
jM0N2ExMWU4NDEwOWIzODI0YjNiZGIwNmRmN2EyMDQ1NWFmYjE3ZWU1Y2ZhZjUxY2M1YTAzYzI3=
MGFhODlmZjFiNmFjNDU2NDhjZTZkZmUwYTdjZGJkNjYzM2IwMmNiZGVkZTU5OTQ4ZWE3NjY5ZWE=
1ZmRiYWM1ODdiY2U2NTUzM2Q2OWQ4OTZjNzk2YmE5YTkz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZjA3NGN=
lOTUwMjRkYzU3ODBkODQwODFiZDI4ZDBjOTk0MWFhMTc0OGUxZmUwNTFkYThhOTM4ODc2MmY2Nz=
Y4YzVjMzAwZjdiZjgzMDc5NjQ1YTc2YzE4YjQzYmJlMmFkZmRlOGMwM2M3NjNhNGM3YzJhYjE1Z=
mNmOGJiMzNlMTMwYWQ4OGU0MTc5OGVlYmI5NjZiM2RhZjJmOGUxYjc5YWNkMWY2YjBlMzk5ZTEz=
YTk5N2ZjNjk2OTc0OWVmYWNhZjQwZGVjYmI1YTYyOGVlZjVkMDllNzZkMDdjYjlkZTdhNmZmNTA=
4ZTc0YTM4NmFmNGM1MWQ4YzBjNTFiNjM1MTI1Y2IzNmFiNDJiOTU0OTI3ODgxYzdhNjAzZjEyYz=
RiN2YwOGEzMmEyM2YzYTE0YTA4ODM2NjZjYzZjNmM4MDRiMjRhZDYzYmE2OWUwMmFkNGY3OTkzZ=
mZiYWNiNTIzNzBhNzg5ZDVjYmU3ZjRkNDMzMDgyZGVlNDYx" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DMzViYzgwNzE1=
OTQ5ODkxODNiNzhlMTQyZjllYjk4MDMwMDNlMmUzNWRkMTZhNDcwMjI5NDIzOTJjOTY4NDgxMjl=
iYWMwNzgwMTFlMmU0ODc3YWI5NzVjOTBhOWMxYzkxYjVhYmVlYjkxZWI0NmQzOTMyN2JkZDg3OD=
cxNmQ0OTllMDIwNzY4M2NhYzEwZGYzYzFmOWIwMTQzMTIwNGQwYjMyMGQ3YjdmZWFmYTUyZjJmM=
DI5Y2RiY2IyYTY1N2M0ZGNmMjhkMzhiZjA4ZTg3N2NiMjc5YTI1NGY2NDcwYzhlOWNhOWI1NDdl=
YzBmNDZmMjczYzRjYTEzN2U4OWE3Yzk0ZjM1YmZmZmVmNDc0ZDZiNGViOGJmN2Q2ZTk1NjY4M2V=
mZGJjOWY1OTVkMDI2Y2Q5YzRlMzljYjU2ZWUwZmMxMmI2ZjcyYzFmN2VkMWU3ZWQ4ZjczYjEzMz=
U5YmNjZTRjMTEyOTc3NGM0YmNiODFmM2FkMjNiZDI5" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMTdjMDBhOWQyODg3O=
DdmMGUwYzM2NTUyNDA4YjZmYzFlZDU0NWRmOTdkYzg2YjhiYjJkODVmNWEwNmRkMzgxNjhjZGEx=
ZjZkNGM2MmU4YjFjOTYwZDNmZGE5ZWZmODBkMjRmYjNkOTExNTliZDdhODU4NDBiM2ZjMTYyZTE=
zNjNjYzY1YzcxNDNjOTVmM2E1YmFlMzY5NTZhMmQzYTE2OWRkMDMyYmZmMWU5NGYzYjZmNTgwYT=
EyZTQ5ZjY5OTJlM2ExODYwYjNmYjQ1MmQ0NDgzNjUxNGUyMTI3NzhkNjFhNTA3ZGRlZTU3ZTJjO=
TYyNjZmYjVkMjk2NmIxNzYzZGE3YTFmYTIyZmJhMTkyMGY1MTE3MGM4Yjg4ZTYwOGY1ZmYyMTNj=
MjczYjc4NmYxNDMxZGJjMTE3ZmU5NGRhNTZlODZmZjUzMGM0YTEzZjE2Yzk2MjY5NWE2YjljYTB=
hYTIwZGJlNWU1ZDIzNzI0MDM0MjRlMzVmNWY5" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DYmQ4OGJjNDU1O=
GIwNjU1OWIzYTU3ODJmZDA5NTgxM2M4MGQyNDJmNTc4MGE0OGUwNDZhOTYyNmVkM2YxYWE5NzVl=
MzUwNTM1MmJlNjM3OGM4ZGEyODk1OWQyNTA0MTg3YmFlMDgxZGE2ZDk2MGM4N2ExNjI0YzY2YWF=
kZTU5YzFiYTNkN2YzZjdmM2M3ZmMxMzdlMDMwNWQ5MjJiMzEzZDkyNzZlN2Y5YjU0ZTExOTYwMD=
YzYjhjY2IxM2JiNDQ3OTg0MmQ1ZDdlODgyZDc0Mjk1NzdlMjUzNTJkYmFkYzgyZGFiMzM3NDhiN=
GRmZjc4ZDk4MTkwYzY3MzRjNGM3ZTU0OTZiZjY4MjE5NGIwMTZmNjIwM2E4ZTI2MTNiOGE2NjNl=
NWVmY2Q0ZTNhODIyODU2OTRlYjM4NjFjYTRhNzFhY2YzY2Q2NmU3YjUwNTE2MTBhYjU2YjVmYzY=
yOGY3MTdhMTg5YTMxMThhMWVjMDhkODZiOTRmYzg4" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DOGY3YTN=
iYTQxNTBiYWNmOTc5MDhhMmQ0NjAxMTI3Nzk2NGY3N2Q3M2Y1Nzg4MGEwNGMzMTFiNjNhZDk2Yz=
czMDE4NmNjYzkxZmNiNjAwMDFlNDE1YTAxMTc1MDM5ZWFjYjQ3NTMyOWFhZTE3ZmY1YTY5OGYxO=
TU3OWI2NTUyYjE0YzBkM2FhNWNhMWVmZjYzMWFlNDFhOWUwOTBlYWZmYzFlMGRlMTM1ZDllNjA5=
YjcwMWYwMWFmYTg1YTY3MDk1MzlkMzU3ZDdlNjBmOGE3ZjMwNzYzNGQzNWY1NTlkN2VhNmQ1MWI=
yNDI0NzJjNGNjNTRlMDE1OGEzYmE5MWFkNDA4ZGVmMDFmOWU5NTA4OGVmNmI0MzcxMDQxZTY1Yj=
Y0ZWFmNzI2OTVhOGFhODg5YjVmM2QyZjk0ZjdkMDkyYzc5MDViNDZjZmY1MWM5YmVhY2QyYTY5M=
WIzMDk1OTk1MGQ4MGE4N2JkYjMxYzU1MDdhMTgzMjgxZWViODAxNg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMzZjYWY3NmE3OTNhZWVlMDA4OGJhM2=
FmMmMwY2RiODA4ZDE1MDUwYzY0MTdhZTUyMDhjZTkxZGY1M2E0N2UyN2U4ZmMyNzQzMDFmYWIzZ=
TgzM2ZjMjExMzdjNTcxNDBhNGQwMzY3MmI0ODdkYjIzMGRhN2U5MmFjZmY4OTRjZWIxYjdkOTI0=
ZjJhMTIyODljYTM4YTA2MzFlYTllMWRlNzIzZDAzODU3ODFhYWM4YmFmZjVkZmI3YWJmZGUyZjM=
zNzZmOTk1ZGE3Nzg5M2ZlMzkzMjY0MDA1ZGZhNjM2MDJiMGZkZGU2ZTYyOTVhOGY3ZGY3ZmIzOD=
VlM2VjZDA2M2FjODg4MzE2M2M3M2NiNjkwY2I2Y2FjMGYwNTVmNDA4YTkxMDg4YjVjNWYzYjgxM=
TQ0MDIwYTQyZmQ1NTJhMGU0N2RmZjE5ODMyNDVmMTAyODY1YTI3YjE5MzY4NDdmNDMzYzYyMDcx=
ZjNiYmZjMzVkZTI0Y2IwMzg4" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMjZhZDFiYWFhOWVjZGJhYzczNzQ0Nj=
JjYzA3ODJmNDhmY2RhOTVlMzE5NTNmOTJmODYwNjZhYjY4ZjcyYTQxZTk0Y2E0Y2UwOWVlY2E1M=
jNlZjVmYjE1ZjIyNTQwMzUzZGY5ZjhjODcxN2I5MjVkNTU0NDlkMzg5NDU4YjFmZDAyNzkyOGY4=
OGMwMDk3OTRkZWJmNDM1MTg1ZDM0MDlhMmQ2NDI5MzAwMDVjMjk1M2ZmOGVkNDdiNTMzZDFjNmI=
3N2QzM2MyYzY1NWYyY2NlMWM1YWI1YmY4ZDg3MDU1M2Q1Y2YzNTZhOWQ2NWI2YjQ1YzhkMThmZD=
QxYWU4NzYwNWUwMmI5NjAxZWQ3N2ExOWYxOTliM2EwNzdhNGU5ZTI5MWQyNTQ1OGRkMzE2ODllO=
WM1YWY0OWI3ZmVlZDRmYzQwYjdkNDMxYmQxMzQ4NDc0ZjU0MGRjMzE0NWNkMzE1ZWQ2N2IyNWJj=
ODUzYzQyN2Y4N2M3YTdjMmVj" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOWYzZWU1NjcwZmQy=
ODEzNzgzNTRiNDhmZjEzMWY2ODkxZDJkOTZkOTg4OGEwZjQ1MzMwZjZkOTZhOWYwYmZkNjAxMWU=
3NTI0OWE4ZDg3NGEwMDczYjBlZTVmMTAwY2ZlYTBkN2I1OTMyZTEwMmJjYmJiNmQ2NjA5Zjk3NT=
I1MzM2NTA4YWNmYjhmMGQzYzVmZjVhZjE5ZTA1MzhhZTBlOGRhNDgzNTMyOWMyODIzY2U5Njk2N=
TZiMTE1YjA3MjUxNDk4MGM3YTY5M2FhZjI4MDQ3MTNmNjMxZGU5ZjgxNzNhYTZlMTlmNWE3NDM4=
ZjIzM2VmY2ZkODA2MTkxZGMwYTAzYjY2MjhiMTUxYzJhMzgwMjlmYjgzNjNjYTI1NGE3Nzc3MDg=
yNzUxODI4YTU3MWM3ODFlYTg3ZWViODQ5NzY5M2NiMjI1N2JkODk3OTI3NWJjMDM3OTI3YmVkZD=
RkNWRiNTgyZjUxYWQxM2Q1NTc0OGExMjdlMmJmYTk4MQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DY2NmYWQwMDY0MDIz=
NWM3NWM1MGVmNmI0Zjk4ZWY2ZGZjZTQ2OTRhZTA0NzExOTc0OWI1ODA2OWMxZWU4NGY5YjA1YzE=
2ZWU5OGViMWM1ZWZiODAwODI2YTFmMTNjOTViYTMxMTU0YTRmN2VjNDJjMzYzMjVjZGNhMGYzYT=
VlNWVkNzQzMjA2M2M3ZjNkYzYxZGY0MGFlNmM2MDg2MWRiM2Y0MDQzZTQzMWExZDU0ODU2YzRlN=
TBkNWE1NmY1ZDA5MjNhYWYwZjM2ZmIzZGVmZmYwMDY3NDZjM2ViMWFmNTZmMWM2OTg3MGQ3ZDk0=
MWE2ZDU3ZmMyMWFlMDgyYjY4Mzc3OGJhZmI4MDhiMzlmOWQ5YjQ3ZTM1Y2NjZDBlNDUwMWJkNzh=
hNjEzMmFlMTU3NzNlZWYzMTM5YjE3NDU4NWY0NWVlMDYzYTQ0ZGQ5ZDIxOTg1MThjZjczMjk5YT=
NlZDk1YTc2MGMyZTFhZGRmYjVmOTgzNjJlNzljOTQ2Mg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTM1OTkyZjg2ZjI1=
NWZmN2I3M2YzNDY3YjU2NmZiZTI3NjdhN2Y4YzRjMGVmZTRkZmViNzM1MWY0NmM2ODU0MTIzZDc=
4MThhMzQ1YzFlMzUxYjdiNzdjMTk2NDBjM2I4OWUxYWU4OTk2OTcxMGY1M2U5ODFkMGQ2MTIxOG=
RlMDc2YjgxM2QzMTU5YWM5MmY1N2M5NmQ5NDhiZmVlYjA0ZDRlZjIzZDJjMWU3MmUyY2ZmNjUzN=
DZkZDU1Zjg1OGVhNmRhNTBkZWVlNWQ4YzMyMmQzZmZkODYyODQ2ZWQzYzYwNDU4M2ZjYWEwYTc1=
NzVkNmE4OGU2YWMxYzFjZDg2NDk3NDg3NTM5ZDM4ZjhkNTIwZTNkOTNlZjQxMDY2NzRmMDQxMGN=
lY2I3ODRjNjNmMGY2OWU0NGVlMDc4M2I2YTFmMzM1OTk4MjM2MjViZTI4Zjk3OGQ2NTM2YzA2MG=
FkZWEyNDI3MjAyMTEzNDk2Mzg2ZjM4N2EwOTVmODU1Nw=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTIxNWI1MjgyYzQ2=
MjU1NWVkZDE0MDA4NTMxNTYzMDQzNmM1NTk5Y2Q1MDZiY2M1M2VmZDU0NmRiM2MzYWI3NmEzNGI=
4ZWZiMDk5YjQ3N2I3OTlkMDg5YzYwNDYzNTE0MTRiNzQ4YmFkNjY1NDczMTNlOWMzOGZkMTFmNG=
VkYjBkNzkzZDk1M2QyODc2NGEwZWM1MzRkZThmOTliMjgzNDgxNjZkYjhjY2Y4MmFmMzBlMDU0Y=
ThiN2YwYWJiODY2OWI5NzljMmU4NjY2NWVjOGRkNmI3MDRiNDQzMzZjYTNlMTQ3ZDFjNjQ0NDFl=
NTMwNzFlNjQ0MmNiNzEyYWIwNjlkNzc2M2E4MDBjYTE2N2JkNmQ0OWEwOTIxMWYyMmM2YjBmOTQ=
1ZWNkNmJhZTg4ODE5Y2RjYWIyY2U2OTNmNTRiNjg1ZGYwNmY3MjUyYzY0NDNjOWVkYmRiNTI4Zm=
MyMjM3NzM4ZjdiMTdlMGE2ZjFjZDEwNWE1OWUwZDU2MA=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODIxNTBmZWRkMGZmM2=
Y3MmQzNWQyZWNhYjhhMjk4ZGFlZTU4MDcxMmM3ZjY0ODc4MmJjZDBjY2ExMjk0ZjZhZWY0ZjllY=
zhkY2U4NDUyMjZkZjEwMzU4MjY4OTZlYzllZmNkMTFiNzI3MTJmNGQzYzE4NmFjN2Y5Nzg1MmJi=
MmJhNjYzM2E5NWYzMDk1OWFmOGU4MDFiMjJiZWFhMTRiMGE3OGE5M2JiZjhjMTZkMDM4NDdhZWZ=
jNjJiMDFhMTM0NTg5ODIyZjY4ZGI0ZDdiOTkyYzI5ZjI2YzU5MGI2N2Q1YzQ5MDJmMGY5ZjUxZj=
lhMGFiNzdhYjZmMmZlODgzNWNjNTk1ZGNlZjQ2MjUwYzE2NjliMmJmMjMyZDdhMTUyMjllNjFjY=
jY3MjMwOGEzOWJmNjYxOTE3Mjg2MTE3ZDMzMjRjMzYyYTc1NzAyYmQwNTAzNTEzMGM5NzA1MDE4=
NGE0MTY1YmEwMjk2ZWE4YTcyNjQyZTc2Y2M1ODVjYg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNTk0YTBhY2JiMjM5=
YWVhNGU4NjYzMmM5MDRiZmZhNDMwOWUzNDFmZTE3YTE2NzcxZDZlZDIxZjNhNjAxMGM0ODU0NjE=
zYzA0MmI5OGIwMTA5MmJhYWUxNTg3ZGUzYWE5YTU1ZTQxOWI1ZTIzNDlkMmIzYTVhZDA5NDlhND=
czOTAyZTM4YWE2YWRhOGQyMzE5OWI5Yjk1MGUyODY0MzMzNzg5Mjc1MzkzM2IzYTcwNjAxMDQ1M=
TczOWY1M2ZjYmYxNTA5ZWJlZWEwNmY4MWY3YjI2MzI4MTVjNzJhOTM5NWI3ZjE1ZjkwZjgxMWIz=
ZmQ5OTQ1M2M3YzE4OGJmNWU=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DM2Y0NTRmOTg0ZjBjNjhjOWMyOWMwMmRjYTc2Y=
2IxMWExMWUxODExN2Q2ODIzMzkxZmJlMmYwM2VlN2I1OTY3YjJlNjdmYjdhZTVkMmQ4ODk1ZTJm=
YWRmZTA4MDEwMWM1YTQ3OGNhOWEyYzBlZTBjNDNhNDFmNDU5N2JkMzYxMzU0NzhlODNkNjFlZTQ=
5MTQ4ZmNlZWU2MDY2Njc0OTQ3ZWM2OTU4OWQwMmRlZTZlNTVhZDBmZTAzNzA2Mjk5ZTE0MGYyYW=
M5MmZjN2UzYjI1YmIxMzdjZjk0M2NmZTE5ZjUyYjg5NTU4ZTc2ZjA2NDQ1MWZhNWYyMjMwNThlN=
TNkYjZhYmU4NWQxYzMxZWE0NTkzNWU3YzM0MTgxNzBlN2JhM2QzNDM1YzA4ZTE2ZjRlMzlhOTE1=
MjJmMjQwMGY1ODUzODFhNzYyNTBlNWY3NjZiOTljM2RiMDEyZGE5ZDNmNjk4NjY3YTY1MTYwMTR=
hODc4OTI1OWFhNzhkNWVkMTA0MDdlN2U5MzY4MTMxNDY1MGU2NGQ5NjUwYWQyM2RmNDAxMDg5Zj=
c0YzdiY2E1MDI1MmEzZThhODU=3D" style=3D"font-size:12px;line-height:134%;font=
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
