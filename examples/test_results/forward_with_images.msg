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
From: localhost:1333?u=3DMzA5NGJjYWUyZjNhZWYyMTVmYTlmMmJiZDE2MTA2Y2RkNDNmNT=
M4NTUzMWUzNzU1YzY3YTkzMmYwZTU2YzRlM2I1ODhlM2Q2NjA0M2Jh <mail@eg.expedia.com=
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
<localhost:1333?u=3DMDk3NDUwYWE2MzZjZTY3ZTVlMGVlNjQzYzFlNzkyOGRkYTg5OThmMzE=
3MzM4YTU2ODVkOTdkOWFmZDc2MjU1ZjNmNmYxOTRhMWYxZjQ2ZTZkZWE1NjVlYjBmZjFlZTE4ND=
ZkNDQzNmY3ZjU4M2JhODI1NDRjZmQ1YTNiNTdiZjQ5MDkwYWY0MzJlNzk4Y2QyNjNhN2QzZDk4M=
jdiYTU5YWM5OWE3NzIxYjBmY2FjNDk5MjY2NzZkNjUyZmZhZDEyNmI0N2YyODI2NzFjYmRiYjM5=
NjdiODc5NWI3YjAxOWU0NTkwOWMzYjdiYTFjMGQxYTlmMWI3ZDU4YzVhYzBmZmVhM2NlY2NmMjA=
yZTY3ZDk0Yzk0ZDJiYTQwMzJkNzc3NzU4YjgyMWVjYmUzZjBiZmJkMjUwMWYzMTZmOTYxMGQ0MT=
QxZDU2YmU3YmQ0MTdhNjRiNzllYWU5YmZmYWRmMjI5YWU0MzI5Nzg3NWMyZmI5ODM4NmQ0Mzg0>

* The Travel Edit
<localhost:1333?u=3DYzU0Mzc2MjhiNTlmMDUyMjA1OTMyYWY3MzUzYzM0YjFmMmE5NDUwYjU=
2YWM2MWFhZTQwZGI4YzlmNDQ4N2RiMjgxMzQ4YjEyZTc1MjVmOTFmYWU5NTFkMDNiNmU5MjhiNW=
I0NjFkYzY1MzcxNzIwZjUzMWNkMTQ3ODMzNmVjNmY1MTAwYjEwMmQzZWE0OGNiYjNlNTIzMWJlY=
zE2YTNiYzczYmQ2YThkMWQzMDI2ZmJlNzk3MTllZjIxNWY4NmMzNzg1NGZkZjFiMzdkMGNiNDFm=
YjZhM2JiZDNhYzgwOTQ4Y2E0MTQxMzdiOGVmZDU3MmQwZTFjYWJhNDUzN2FhMzNmODViYWExYzc=
3ODAxNWZmMWU5Y2UwNDYxMzEwMjc2M2RjMDM3NDgwM2UzNzIyNzRkNzk0ZTI1MTM2MTM1NDhkNj=
dmNjdhZTg4YjliMjg1NjU2NjhjYzY3NWViZTE5MWQ0NDk3YWFmYjkwMWE5NmM0MTA4OGExZjJj>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNDMwOWU3MjFhMjU2YTViMmI2MDA3ZmYxZDdlODExMWE5NmUzZjc1Mzk=
3OGNkNzg2YzA0M2VjNDNjZGRiM2VmNzExM2ZjZjcxNjVjMTRhYjc2ZTNlMDEyZWYwODhhYzgxMj=
EzZDliYjQ0ODdjNmE4NGQxZjI0OGQ1MzYxZTg0NGQ0YzI1YzMxMmZkZDQ2ZWYyZTY2NWJhYjAwZ=
GM3ZTBkZmU4MmI2NDZlN2Q3ZTYzMWVmZGI1MDZlNDYwNjVlNzgxNmRhN2Y2YjUxMDdkZDViMTJi=
MGNiMzZmMWZjMzcwNDExYjFlOGI4YWViNDgzYzEwN2QzZDdlODQyZGYzNWUzZWQ1MDAyZDIwNjF=
mMGM4M2M2M2Q3ZDc4MTQ2N2FlNTY5NzU3ZDM5NmEyOWRkNDI5ZmFiYjYyOTFjOTEzMGE5MGMzYT=
ZjNmY1YzAwNjhlOTg0NDBhN2YyNmEwMmU1ZWMyNGM0ODYzNjI2ZTQ2OWYzYTQ1MjBmNjZhMTlk>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DN2YxZDQwMjU1YWY0YTE1MzVmMzQ5Y2EzNGZiMTVkZmY3NDUyNDY3Nzd=
jMzg0MzNhNmY3MDJjOTg5Zjc1MjJhNzRhOTdlYjRiNzViY2U4ZTViYjg0MjI0NzdkNTBhNGMxZG=
UyMjI0NGY1ZWZiZDI4NWViODgwNzU4M2I0MDQ3YzdjNDQ1ZDNmMTIxMjJkNzU3MDA0YWQxZTc2O=
TY4YmRjNmE2OTUwNDJkY2MwMjdmNTdlYjYwM2M3NzcxMzVhODM2YmI5MGEyZmRkYjBlYzY4MDQ3=
NGI1NWE2ZDI3NDQyN2I4ZTg4YzQwOWYyZmYyNzM2NTg0ZjFmYzE4ODQyNmJkNmQ5MmE5NTM3MTg=
2MDBlYjQyZDBjMmRkZDM5ZTUxODdlNDE3MzZjMzljZjI4NDY4ZmU0MWQ0ZGE5NTQwYzA5ZGVkYj=
RiOGMyYjBiYTk0NzY5MDMxZWMxYTlmODQ4NmNhNDdjZDRiYWY0OTlkNjdlMDY5MzRmNzA0NzQ5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNDIwMGRkZGQyZmIwNzhmYzMwYzlmZDgwNmI2MmFhMWM4NjExMTM4YTU=
2OWQyMjlkYzhiZjdkNWQ5NzNjMTVlODk2YjM3ZjIwMmNmYmNjYmI0M2E0ZjcyZGIyNGFlNjFjMj=
g2ZGI1OTc2MTdlZDJkNmU0NjI1NTJmNTJmZjhiZjk1NGViZmY0ZjUwZjFhM2VlYTBlZDI2NGExO=
DE1NWM4NjE3NjVmZDcxZDk3Yjk3ZjcyYjAwZTZlYzA1ZGI3ZTUwNjhiYzk0MDQyN2M4MDkyN2Ri=
Zjk3ZmU4NjY4OGZlZTYyNWQyYjU3ZmY3ZTJjZDc2NTBjOGNmNDM5ZGJkZjc3YjVhMTIwMDY1YzU=
yMjE5N2IzZTRjZWRkYWVkYmMyM2M1MDFhMDE5OTg5MjAyNTAyMDBjMjgyMzEyZTJiNGZlMGNlYT=
IwNWRlN2FjOTM5ZWIwYWJhZTA3YmViYWFiZjBhMTk0MDg1NWJlNWRkN2E5MGRkNTA5OTYyNmIw>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNDZmODY1MjFkNDY4MWEyMGRiYmFkMTY0NmI2ZGU5Y2M1ODEwNzA5Yjk=
zMDZlNmQyOTA2YmU5ZjY5ODNlZmY0MjYyOWNiZmEwZDY0MDEzZjE0NzhmMzk3MGZmNmIwZjk0Nj=
liMDMzYzdiYzdiMmEyYTYyMzA3ODVmYTg2ZWVjMGVhOWFmYTlhYmMxYWIxMjc2ODRkNDIyNzAxN=
zJjNTZmZjM3M2NmOTgzNTlhYjhkYTUyOTEzODljOTI3NzRlZjgzZjEzZTAxOGNkYTFmMWI0NTVk=
MWVkNGU0MTU4M2JhYzM1ZGUwMTIyNTM5YzU3YWI5OTcxOWFlZDA0YThjNTMyYzQ5Zjc3NTljNzU=
3ZGFkNTk1MzgxZWM0NjE5MzQ0ZTRjYzFhZmU1ZDJmYTFkNjc4ZDUzOWU1MTJkOWE0YjRmNWFlMj=
k5NjY1YjJhMWFjZWYyOWM3NmM2MjBlY2FkZjE0Zjk0ZDMzYmQ5NjZmMTk3YzJmODJmOTU3YTFk>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DY2IzMzZjMDg5MjgwY2FjMzg1NWI0ODIyYTBkYjhmYzY3NjFjMDlmZGU=
4MGY3MWM5NTg4NGVhZGQ4YjMyNTE4Y2Y5MDM5YjQ1NTRmNDgyMTA5NzQxZmE4OGM2MDdmMDVmMz=
E4NzNhMDBjNzEzZDg5YTRiYjI2ZTE3MmNhOTJmZDMyZWVhMmJjYzcyNzcxYzI1YmQ3MGQ4ZWZkO=
WVhNzI5NGQ0NGI5YjU4YTkyYjY2ZGU5Y2ZkYjU4MGE0NzY3NDAyMzFmZTRmMGMyN2YyZTVlYmU0=
Y2EwZDllMjBlMzZhMWNlMWFhMDQ3NWVlYzQ0NWExOWJiZjJiYTRjY2VlOTVjMGE1OTEzNzRlZDN=
iYTc4NjBlOTE3OTgzMGM1MDExNGNlNzNhZDA2ZWExMjk1MjZkMTkwODljM2Y5OTlhOTkxYmJjYT=
c2ZDRmZTQwNjc0MzZjYjNkZTNlZjgyZWMzNTFmMjg2MGNhZTg2ZWIyZGQ1ZjE3MzYyMWJhOTU2>

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
<localhost:1333?u=3DMWZkOTgxZGJmMzQ5MDVkZjIxYWNiOGQ4NjZlODM4ZWZjYTJjODIzM2Y=
wYzEwODA3MGU0ZWZlYmQyMjRmYzAxYjU0YTcyODU0OTc4Mzg3ODk3ZDI4MTFiMWE2N2I2NDI2ZD=
UyMDA2NDA3ZTkwYjlhYzk0YjNlOWI5ZTEwZWJlMDg2MDA4NGU0NmM5N2Q2ZWNmY2JiNWI0NTVlN=
DE2ZDM3NTgxMGYyN2I1NGZjMTZhYjU3MmVhYTFlNThjNjU0NWYwZjJkMzZlY2EyOTVlNTBmZTU2=
YzkyZWYwZjNiZWNlMzJiYjAzZDFkMTVmMzAxNDkzYzQ4MzUwZWYwNGJiNmI1ZTlmYWEyMWQwYzY=
yYTUwMjk4MDA1OWJmYjJkZjMwYzM0MGMyM2Q1OWQ0ODMwOTA4YWQ1MTJjZDE1MDRlOWI5MTllMG=
Y5NWQwZTIxNDAwZjVkZDBkYTMyZGFjOWI0ZGNjNjdmMzc3ZmRmZTViNDY1NTVkNjY3ODlkMzE5Z=
jI4MA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DMGQxYjYwMjQwZjg0MmM2MmVjMTZhNmE4YjJmMjdmY2M3MjU1MTQ0ZGI=
0OGMyMWVjOGI1MDQxZGMwMzA1MjNhYWQwOWRiZTJhNDJiNDcyMmNmMzZlNjU0NjlkMGRkZTVmNz=
U3ZjNlOTk5MmU3YjlhZDdjNmNjNjM1NmFlODJiYWYzOGM0MzdlOTBiMzg3MDU1ZmU5MjAyZDM5Y=
jQ4ZDk2ZmRhMWZkNjQ3MjAwNjlhZDA3ZDFkNDE2NTMwYjBjZjc4ZWJkYjMwZWMyNTU4MDBlN2Y2=
MWY5NzA2YTExMTU2OTEwYjNiMjhlMjUzOGU2MzYwNTc2NWVkZGZhNWVhMTg5NDI5ZjQ1ZDJiY2V=
hZmRiZGFiOWIwYjRjNDhkMDJmMGFiNTdhMzQ3ZjEwNzk1NzUyMTdjMjcyMThmMTczYWI5Y2UzYz=
BhYmYxNWUwMGQ5MDcxZjQ3Yjg4YWZlZTNkMTUwZmEzMjgzNTRmN2VkODA0OTZlYjQ3YzVhMThj>
  [image: Google Play]
<localhost:1333?u=3DODRiODRjZDQ5Njc1ZTIwOTZkYmZjZjNlODRjZTc0ZTYyZGZmZjVjYWE=
yMjJkNTllNzYyNWJmMTA5YTc3OTI3MmJiYjk2ZjY4ODYwNzMxNzExNTk3NzkwMjE0MzdjODJmOG=
MyODQ4NDk2MDU1ZDk5Yjc4ZmVjNDE2YmQ0YzRlOTNjYzQwYmFhNjhhZTdmYWE4ZDk1YjljYTVkN=
zA4ZjA5M2YzYWVhMTY1ZjEzMTA1MjE3Y2ZjZDJkMDc3MWE0MWMxNjI4NmE0ZDFmNjhkYjQxMTY4=
NDRjMzJmNmUxMWFmZjEzYzBiZTU4ZmZlMDIwYWUyNzhkN2RlNDY1NDdhMDJmM2Q3MjU2N2M4ZDc=
3NWY2YTIwOGVlMTZmZmYyMzljZTUwNzJiZWE1ZjIyYjZkMmI5MzdjYWM0ZmE1MTFiNGU3NTY1Mm=
FiYmEwNmM4MjRlMWExNDM1YTc5ZjI3Mzg5MDgzZDM5YTFmMDJiYzczMjNlZmI4ZTY4M2M2NTFh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DY2Q2NjJmYjBkOTRhNzY5MDU3YjAzZTQ3OThmMTMzYWYxYTllYTk0ZTQ=
0NzA5MTIyMzVhMTU4MjVhMDRmYzFiZDhiZmZmMzEwMmRiY2FlMjVlOGQ2MDk2MmE3M2Q1MGM3OG=
M2ODYwYjkzOGQ5YjQ1MWZjYTViNDdiYWVmMzdiODg0YTYxZDdkODgxMjE2NDBlYWQ1OTUxMzA5N=
Dc2NGIxYzhkZTY4YjUzODY2MzJmODUyNTM0NjNlYzFkNTRkZjhjYzU3OGM2YjA1MDViZTM1ZTBm=
MmE0N2M0OTg1MWQ1Yjg1Zjk1MDZkZTFkOTFlOTEyYjQwZDM0YTkxYTM2N2NhNTRkZDM4N2E0MmF=
mZDUxYzEyNDY1ZjRhZTdlOWI2YTVlZjgxOGQwZjZjMWZiNzJiYzVkMGY1NTdlOGFhNmE1MGYyMm=
Y4ODJkNDE2MDI4Yjc1MzdmNGQ2Y2Q1NmI2MWUyNThlNTk5MzRjYTRjNTM3ZmYxYjA3MDgzMzMyZ=
DZiNQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMTFjYzI1MDVjODY3NjIxZTcwMGVkMDYzYmExY2EyZmQyNWRjYjliOTF=
iZmRiZDExN2Y1ZDRkY2U3M2M3ODAzNjY2MjI1MTA5NDI2OTIzMzRkOWVlM2ZhZjI2OGIzYzlkMT=
QxNjY3Mjc0ZGNhMTgwNWU1ZmM2ZGY4Y2JmMjdiMDU3MDAwYzI0MzBmNzk5ZGUyMjgwMWE0YzJhO=
WExYTI0MGE4NTUxOTkwNDJkYjhjYzFlNWYyM2I0NjBkMWI5ZWUyMWYwNzE2MWE3NWUxY2ZhNWE0=
MDI4YWY5ODA5ZjliMGE3NWIzMDc1MTg4MTI5ODMxMmI3OTIzZjEzMWRmN2Q1MWE5NzIxYTNhNjE=
xYTE5YTY0ZTU5NTM0ODM5NTEzOTY5N2IyMDI1MjM3MzM0Njc5YzU1N2FjYTBhODJlNGFiZTYxNz=
dmYTBjMDdhMTk4YWJmOWMzMWZmMDVjZTFhOGQwZmNjNWUxMzZiYjZlZmMzZDQ1NzBkMWVmMzUzY=
mYzMQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DM2RjNGU3ZDhkN2ZhYTY1ZjVlY2UzNTQxMzQ4MTZkYTM0YjE0NDcxZTI=
1YzI0ODhkZjNjMGJmZGJmOWViYjZkMGQzYjk0NWM2NTEzYmIyMDRkOTdiMDdiNjg3MTliYzUzNj=
kzNzEwNDg3MmZmNzAzNzU1M2QwZjc0N2M2NTg5OTdhZDk0MzVjZWMxYTUxZDg5NDc0NzM0NzczM=
WIwYzg1MTJlMGQ4ODI2YTlhYTdmMDgxMGRmNzI3NTdiNmI2NjFmMzgxNzVlZDVkZjRiOGVhZDYz=
MGJkZTBkY2FkM2I1ZmRhMmZhZjA0YTYyNTE3MGE4NDc2MTMwNmQ1MTRiNDYzMGZkNGI2MzVmZGI=
1ZTY2MjM2NTU0ODNmMmE2Y2FjYWIwNjBjMzk0ZDFkMDAyYjliMGFjODY2YjAyYjBkYTgyMjMyYz=
A5OGQ4NjFjMjNiODQ1ZDc4OGUyMDJiMTVlNjI1NWY5ZGYzMDdhODgyMWZhNTdjY2NlYzk4NGEzM=
TFjZg=3D=3D>
   About Us
<localhost:1333?u=3DNTc5NDc2NzE0Mjk5MGNkNzMyOGZlZjJmYjY5Nzc5Yzk0ZjUzNDhhYzY=
0Y2IwNzk3ODRhZTU3MGIyZTAwZTk5Mzg0MWM2ZTQ0MzUyMWUwMzhjNzliNzUyMWU3NGUyZTFmND=
Q0ZTY0MTMyNzIwYTkyNzNlZTE0NmE5NWNmZDQ2NmI2M2RhY2FkMzZmNmU2YWM0ODc4Y2RhODIwN=
WM2MjhkMjQ3YTViZDZmNjYxYWViNzU1OTg4MjA1NDI4MWQ1OGQxZTc4M2ExZmIyY2ViZDUwODhl=
NzBhMjk4NDdjMTM1MmQ0Y2U1MzAwOWM3MGNlM2FkZmVlZmRkZTRiZmE1NWU1MTQ4OGI0MGYzZWZ=
iNTkzOTZiN2E1ZGU2MGUxODAyNjFjNDFjOTYxYjAzYTU2NjVmMWJlZGU3NDcyYjZlM2I4OTY4ZD=
MzOWVkMWNiZDA5ZmZhYjVkNmMxYjBlNjQxOTczMDMxYjY4Njk5NmZjZjA1YTk2MWFlMzU4ZTMxN=
jNlNw=3D=3D>
   Customer Service
<localhost:1333?u=3DYWM5OGNjMjRlMmQzYTQxM2E5MThmYjEzN2U3MzAwNGZmYmQxYjgyNTN=
iZTA2ODJlNDM2NmJlYWQyOTc0ZDBhODAyMjcyYzQwYWU3ZTFiMzA3YmU5ZjVkZjk5MTEwODg0OW=
M2NTcyMzdjODUzYjI2MTcyZTAyOThjMjk4ODc2ZWI0ZmY3MTI5ZWIwZGQ5OTU0NWVhMmZhYjJiN=
GE0ZjZkYWQ3MDc4MjQ5NTY1NTZhNjg1YjU2YWFkNGJmOGRiM2ZkNjliZTY2YmUwM2FlNjk5ZTg5=
MzNjNjZhZmE0NTgxNjMzZDdiMGYxOWVkNGU2MmM0YzhkNmJhMWQ4YmJkOGI2ODI4ODM5M2I1NjY=
3ZTJiZDhkYjEwODA2NDhmODdkM2EyNzFkNDBiMWZjMjE4MDc3N2MzYzlkOGQzMWIzMWY1Nzg4MT=
Q5MTVkOTU1Yzk4MTBiZDBiMTM5YTZkMmMxY2YxOTNkYmVkZTk1NmZkNDQ5ODA5NWM5ODgzNGVmY=
jFiMQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMTM2ZjE1ZDg4OGZjODRmODhhOWI2YTgzYzY2NmYxNDgwYjM5OTU3Mjk=
4YThiZWRhNTUxZmE5MTNiOTMzNmMwZGMzMWQzNzJiNjA1ODFkMDAzZjNiZGQzOWYyMGE3NzkwYT=
FhMmMwYjQ4MGU3NjE2MzJkZjc4ZWI3Y2FkMjIwNGU0OWVmNzJlYjA0OGFkOTgxNmY1NzU3ZDgxO=
DBmNzMzNTM2Yjg0M2M5MzE4YzYyMzRjODM5MjFlMjhhMjFiMjk5MTNjNmQ1NTRhMDZmZmE0MDQz=
ZDdhYWVlOTMzMzg0MjhkMDYzZjUxMDNmZGZhYzM1OTNkZDFlYWMxZmYxNjI=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DZGRiNzU2MjJhZTNmMTFmM2Y5NmUzZTEyNDEzZTNlMTVhMTZhODU4OGZ=
kZTM4NDk3NTI1Nzc0NWQ0ZjZkMjRkOTdiZTg1MjliNWE3NDRjZmJhOTdjOTc3YTAwZmUxOWQ5MD=
dhNjUwOTc2OWEwZWI4NmEzZGM4YjUwMjlkNDhmMTViNWNkZTc2OGIwZGM4OGQyMGM5MGZiYjkyM=
DhmNmFkNjBiMWI5ODEyMGRlODdiYjg4NWQ1NTNmNTE3MGI5ZGI4OGI5MjY0Mzg4Y2ZiNzNjYzUy=
NzQ5ZjU5YWUxYWFlMjQ4ZjM0YmNlODU1YzA0NjdiNTM3YTZlYjA5ZDIzNWI5OTc1ZmExZTUyZGU=
5NTU2ZmFlNGI3MmY1YjE0YmYzYjFhM2Y2NTNkZWVjYmIzZDQ5MjliMzc0MjRiM2UxNmZjMmEyNj=
gwYjk1ZmMxY2ZjZmVkZWQ0YThkZTY1MTU3N2Y3NGRmNmI1OTAzODgxNGNjZTY3ZjQ3OTI4OWZlN=
mNkZTkxODE1MmQ3ZDIxZjcyZjJkNjMxOWZlNGIzZDZkM2Q3MjVjMDIxMzIwNTBkZmFmZWU2NDBm=
ZmZlMTk=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZGM2MjMzODM3ZTljZGNh=
MGI2YTA2MTJmN2JmODBhZGU2MGQzYTVmM2IwYmZkYWY4NTAxYTVhYTJlMDE3MmE2MTM0NjgyZjA=
0YWE5ZDNlYWNiZjk0NWE2NGE5YmMwYzBlMjgyMjNmOTg5NjAwN2MzYTUzYTFlNzI4NzczNDc4MT=
U1MjY2YzYxMjUzM2JjYjE1NWViZTIxYzJhNzU2MzIyYmQ4YzdjMjAyMTM3NjA1MjBhNjc4OTZiO=
GRhMzQxOGI5YTJhYTlkZDc5ZDlkMDA2NWYyZmMzYmE5YTAwMjU3NjRkOTUzZDliZjc4ZWI5OGUz=
M2I5YjIxMDJlMWEwNzBiYmNjZjQzOTMyNGJmM2M5NWMwMTZhNDZkNmJiN2UwOWZhYWM1MWZkOTZ=
mNWRhYmRkNmUzZjIyMmNmYjhjOWJlMDkwNzRlYjU1NDQxNzBlYzk2MTVlZmNlMzMxM2EyOTgxMT=
gyNGRjNzY2NDU0Yjc2NGExMzJiZTMzZmI2" target=3D"_blank">
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
?u=3DNDMxZGFkYmY2YTU1ZTY3N2Q2ZmQ3MmI1YmI1MmU5ZDhlMGRkMDM0ZjNiNDM0NzVmMWRmYT=
ZhYmFkOTIwMDczN2RhY2Q3NGIxMDc4YmFmMGExZTJmMTExZmZkZTkzNjEzZWZhMGRkY2M5ZTRjN=
DViM2JjYWY5YTVhMDZkYTkyODFhM2Q1YTg3MDcxMTUxYWJhNGFiZDBlMjNmNWE5OTZmM2IxMjc0=
NTNiYzc2MzBmNGNmOTMxNjA1MThjZjk3ZDA1OWY0MTE5NWRkNDI1ZjczZjA3NmFlZTQxZTkyMTh=
mZDVhOGJjMjUzODQ5OWIyNzM4NTQyMDMyZmU1NjE5MzQyNTk1Y2ZkYmFjNmUwMTliYTAyOTUyNG=
NjM2EzNDhjMWY5MWJjZmNmZDM5MDU2NGQ0NmZhZDU3ODQ3M2E4Mjc2MDI5MDBiMDM4ZWJlNWFhN=
TVlYTZjMDdlZjZkZjMyNTgzYWQzZDFhZGI4ZGJlYzBlZGQyZjc0NjEyZWFj" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DNzc4MTk2Y=
WRmZTZhNDNiODc0OGYxMzU4ZDA5YzFkMmQ5NDc5ZWRhYTIyYjkwNzk2YmU2ZmNmYzAzZTJiNzFk=
MjE4OWQ4YWVlNDEzMTgzMmQ3OGU2NzRhNDM1ZTE0MmZiZGIyOTliYmEzMmY2NjRjOWI4ZTFmYTk=
xNDFjM2Y2NjEwOWFlYjFlNzkxZmQxMzgwNGI3YzVjNzQ0YTk1ZDZhZTc3NGRkY2NmYjY5ZGVkMz=
E0YmM1NGEwMTVlZTcyMWIzMzM1ZGRjMjY2ODkxY2ZiNjJjNDg3ZWZkY2Q4NzAyNTQ1NmYxYTg5Z=
GM3ZmI0ZDdkZmQxNmRlNDkwOTM0YzExZjNlMThjMzJiNTNjZGJhOWZlYjYxZjQ1ZTRiZDAwZmIx=
ODM2Njc5Nzc1ZjkyNTFhMWFjMjBkMjRhNWVjNzNiOGVlZmNiZGEzM2E4OTZhNzVmZWJmYjA4MDQ=
wZjE5MjM5MzY2NjcwZjQ3MDY1NGZhMzI4ZDZmNzQ0NGUz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DYzM4YTU=
3MDEwYmY3NjE5YzljNDEzMTQ0YjUwNzA2NThlMWFiZDVjZDNkMjYxNzAyZjhjOWM0MjI2ZjUzZD=
llNTZjYzdlOWNkZjk5MGM3Zjk3YWI3ZTk1NTc1OTI0NjYwMjc5M2YwNDM2ZTlmYjNkM2M0NjUyZ=
TFmOTk2OGRjYmEwNGRiYWE3NGQ0MTBkMWE0YzJmZmQ4YjQzZTg5MTlmMGEwNTEyZDVlODI4MDc4=
MDI1MmNmM2QyYzczZmMzOWExNzEzOTRhMWVkYTAyZWExMTI2YzZhOTg1YThkNzdhMzE3MjAwNGN=
jZWJhOWRkY2U4OTE3OGU0NDk2MGIyZjk3MjNhNzI1MzIzNzljNmVlY2U2M2RmYzMwNGU2NzU2OT=
BmM2FmYzAyMzEyZmVkYjY0NDIxZDg2NDk2NDllZjA4M2I2OTQxNjk0MWE1NTI0NDVkYjEyNjU3Z=
jFkODgwOGE0OWEyYjhjMWU0MmQxZWNiODQ2NWNmZmM0ZTEy" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNDRjMzhlOTE1=
NjM5OWRiNGRhMjE2YjBmYTAyZjY2YWI4MmY1YWFlYTFjMmM3MmYwODc4NDI3MzM0OTQ5OTI1MWV=
hOWIzNzgyMWQ4ZmY4ZGE4ZWNjNDY1ZmY1MjE4MTY1NjE5ZjY0YTA5ZGVlOTM0ZWVmMDcxNWQ0ND=
UwNDMzNzcxNTA5NDEwZTUxYWNhYmQ1N2Y0MmJkOGNlY2ZlYTE5MDNmMDE5NWRiMTcyODNjZmVlN=
GM1ZTNlZTFhMWUxM2ZmMmIzYWJhNjFjYWU4MjI2YmVjMjgwNTBiMzM0NmY3ZDNiNTQ4MzUyOThm=
NDY2YTE1ZGU2MWY4NTI4YjJiNzU5ZjIzMGM3Zjc0ZjgzZDAwYTU5OGFmZWZhODk3N2I0MDllM2Y=
3OTE1MWQzNzQ2NGRmNzFkZTkzNDBkZWU3NmM3NmU5N2Y4YjM0ZDM4N2Q3MjM4ODkwYTcyMzZlZm=
VlNmY5YmJlNDRjMTAxYjBkOTU2OTUyMGM0MDgyYjNk" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DNjU5OTBhYzk0OWQzZ=
WY0ZGI5NTdjZTZkYTM0NTU2ZGZkODJiMGYyNTRkYjgzYzMyMzdiMGRjOTQ2YTk0NDc0NTQyYTZm=
MmE4ZDAyMTQ2OTE1YjJhN2NiMmNiY2ZjMGNhMDg2NWYyN2Y2ZTNkZDNlYjU3OWUwN2VmZjQ2YTB=
lYjljOWYwODhkYjQyZjQ1NDgzZDk2NDQyMGM5ZGZmNWVhNWQ3ZGI2NjQ5NGZhZGRjOWNmYzQ0OW=
I2NmYzNzdmZWY0ZDBjYzllNmM2YTZmYzNiM2YyNjM4MjM5OWRiZDJlMmVhNTJjNzE3OGYyMDM1N=
WU3ZDIwNmM1OGMwNGJiMjk0ODU2OWM1MmRjOGZhMWI3ZjBmMDkxZDBkODZjYzI3N2IyYWNjOTY1=
NGVmOTM5NTM4M2YzMzhkZjZiNThiYzA5NGQ3MGNiN2ZiZWY4YjE2OTE2NGYwMWYzZDFhMTk5ZjQ=
wOTkzMjEyOTUxMTcwMzEyMjliMzgzMjIwNThh" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DN2QwYjA4YWVmO=
DY3ZGY1YmVlY2Y2YjI2OWNkMDYwMjg3ZTNiZWJmZGFiMGQ1ZTIyOTg2NmEwOTAzMzFiNzVmNGQ1=
NzVmYzgwMDIxODY3ODRhMWYxNjZkNjM1OTdjYmQ1MTU4NDZlMDJlODA3ZjUyODFkMjJhODk2NmQ=
1ZWViYWNjNTJiMTBjMTY4NWI1OWZkNjdmMmI5YWQ2M2E1MTc3Zjc5ZmU5NTU5YjU0N2JmNzQ3Zm=
FkMWNkZGZiNmUyMThhZGE0YWE1OTA5NDc2MGEyZDUxY2M0ZWU3YjIyN2JjODE1ZWY0MmM2YmViM=
jI2NmVmNmJjMDcxZWMyZTVmYWU4NDdjNWJkOTViMjdmOGEzMmY5ZjE5NGUxYTJjMTA4Y2Y5MTAz=
NmUxM2Y2NzY1YTU2MzA1MjJhOTk4NzI3MTA0ZmNkN2Y2YzZlMzkwMWZiMjA5YjAxZGJmOTkxNDE=
4NDczMzY2ZDk0OWE0YjQxMzBhMWRjZTBlYWRiYWFi" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNjM2ZDc=
5M2U2YWRmZGYzMWNkNjQxYTE3NTgxYjg1ZDBiMjQzYjMzNzdjM2RlMmFjMDg3MDllYTI1OGU3NT=
YwYWRmY2U5ZGIzMzlhZjBhYWYyMWJmMmZhMWNhZjBiNzEyNjdhYTMxMzJkN2E5MWQ4MzU3ZjNhY=
jVlZDMxMWY0M2MxN2VmZmY3N2RkOTBlOGQ4MmNjNDNkYjQ1OTM0Y2ZiMmJjZWFlZTA5NjFjZmU3=
ZTIyZWMxOWNmN2Y5NTVjNzc4NzZlYzczZTNlZmY2MmQ1NDRlMzJkZGVhODUzZDUwMWViMWM3N2I=
xNjVmMmZmNDUyMzI5MzJiZmIzM2JlYmEyNDk3NWRhZThjNmY1ZWY4MmJkM2ZjYjVhZjExN2Y4Zm=
ZhZmRlNGQwZTE5Njk4MzVmZTJkOGE5NDgzNDg2MjA5OTBlYWU4OWIzYTBkNjk5ZjBmODM0YzA4M=
zA3ZTcwNTYwNWNiZDQ0NTBiZDYyOWVjOTJkM2I0NDU2NDYxYmMyYg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZmY3ODgyZWFiZTYwYTQ4Y2JmMjVmZD=
AwYWNkYTdlYzBjYjE5OWJjZTliZmQ5YTcyMjFkYjg5NmI2OTdmMTcxZTEzMGFmYTk2ZTc1ODg1Z=
WUzZWE4Y2Q2ZmIzZWM5Y2YxMmU0YTk0ZmVlYWE1ZmY2YTQ1NmY4YzQ5OTYzNWI5MjEwMjY5Yzli=
MDg2ZjU2MDFmMDIzMDZmNjA5ODgxOTUzN2JlMWI3ZGQ0NGJhZjdiN2RlNjRjZWEwNTljNjlmNGV=
mYTlhZjQ1ZTJkMmE4MTJhNmFlNjk4YzI1YzM4MmQxOWJhODlkNmNlNDhjYjY2NGI0NzIzZWJmMj=
U3NjdlMDg3NTAwYWRmMzY3ODc1YTYyMGJkYmE1NGMzM2JkZWJlYTQ0NzU2MzU5MzA4MDYyMmUwM=
Tc4MTRlZThmMThjMjMzZDM5YjE1ZTBlZTkwMzYzZjVmZjM1ZDgwZGY4OWFiODk0MWU0OThmNDk4=
Y2I5NmI0NmRlYWUxZTQzNzFi" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DYzU0NzY4MDRkMWU1NzU0MDk3M2Q2N2=
NmOGQ1NzI3NDc3NTUzZmUzN2YyZjliZTNmYzYxYWIyMTkwNThjYTY3YTNhMGZkYjQxNzQ0NTdkZ=
GEzMzY2YzdjZWM5NjIwMGQ3M2ZlN2ViYjJhNzVhYzU2YWQ5MGMxZmNjYTNkMzEzM2NiMmUzMWNm=
MmVkZDkzM2I5N2EwODUwODE4YzZjMTNmN2NjY2UxMjMxYjMzYmVmM2QxYWQyY2M0OTE3ODE0ZjM=
4OGVmMmU3MTc5OGQyNGUzNDM1MGE1ZTJkOWEzNzU5OGZkMzhjMWZjOTcwZGQ0YTU1ZTJmODgyNz=
NkZjAxOThmYzVlYWQyNTEwNjU0ZjYzZGJjNTYyZDZiNjc1ZDg4YmQ5NDdlNDRhZDUxOTViYWY3N=
WJhODgyZTlmN2I4NmM3Yjg3OTkxZTAyYjQ4NTEzNzMxZGM0ODZiOThkNjAwZDQ0YTk5NTllZjJh=
ZGViYTJjOWE0NTMzZjIwY2Q3" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDI2YzQ4NjQ4YWYw=
M2E3NTZmNTc3NGYxMzAzMGM0NTg4OTM1MTgyY2UyOTY0NTE1YzIzN2M0YzkwNmIxOTgxM2RmMGM=
2MGI4OWQ2ZTliMzg2OTI4Zjc0ZmMwY2I2NmQ1NmExZGNjYjZkNzllMDAwNTk0ZGZkNzc5N2UxNG=
JlYjM2NDZlODRhYmQ5ZWJiYzM0NDIyZjY5OGRiYzMwOTc4MWE1NTAzZWVhZjhjZWFkYTFhNGZmO=
GM5OGQ2ZmZkMmIyNGQwYzU3YzRhY2Y1ZTIzMDMxMGJhMGIxOGRmZjQ4YTNhMzlkODI5N2JiMTRi=
NGZlY2M5NjZiOGNhYTNlOGYzZWU1NTMyZDVmZjczMTI0MGZmZmJiMTU1MTFjZjZlOGQwYmI2OWI=
xNmU2NWFmYTA1YzQ3ODdkYmYzYjc0ODE2Y2YxZWZiZjNmOWRmYTkwMDNiNTUxODY4MGMxNmQzOD=
JkYjM5NjdjODQ0ODExNzRiNjFkMDQ3MjAyZWYyNTk1ZQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNTViYTY5MTBmM2Uz=
ZGZkMDMyYzQ3NGE0MmZkM2M0ZDRiZjJmY2MyMzZkOTdkOWQzMWYxYjI5NTM5ODU0NTU1OGMzMjl=
iZDZiNTlhYTU3OTRlMWVmZDhhMTMwZWQxODg3MTdiYjg1NDM2NDY1ODA3NWQ2OTliY2Q5ZjQ2Yz=
U5OGI5M2IwZThmMDVjN2FhZjIzMzg0NTYwODRkYWZjNTk5MWEzMjJmMzE1MGZkODczMWI1Yzg3M=
zQyYzA2MTc1ZTZhNTIzYjU1MjFkYzQ3NzEzNTg5NDcwNDMyNGI2YWY3N2M2MjFiMmNiOGRjNTZj=
ZDYxNWEzZDBkM2NmZDQ3NTBmNTAzM2YwZWNlMTExYTNkMjY0MWQwMDVlYTg3ZGMwYzQyZGEwZDY=
1NzRjZDU2YjkxM2U3YjYzMGQ5MDA4YjUyZjQ5OWNiYmRhMDQ3ZjczOGJjZDdjNmQ3ZmNiNjkyYj=
Y0M2NkMzY2YmFmY2I0NTc4ODM5MjMzN2U1NTVmMjkyNQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYWUzYTRkOTBhYzJl=
Y2Q4OTU0YjQwZmQ2MmQ4MTE0MjI4NjMwYjk1MTg1N2Q3YjlmMzc3OGFjYmIxMjIwYmM0ZjFjOTA=
wZDQzNzk5ZTk5MzQ1NjQxYjAwZTAxYWI5YTI0MWQ2ZTdkYjcxMDZmNTlkYTg1ODQwNjIxMzg2MD=
M0MmY3NjJlYjBiM2FjMjgyMjZhZGMyNTA2ZjBmMGM1OTJmODM3NDc0MzdlODk2Yjc4Y2IzNDM2Y=
jlkYjQ0YjhiNDIyYjcxMWNjNDg5NWQ2MGI1MWI4NzY4MTUwNWE1OWZiNzJiZDNjYzE5MWQ2MWVi=
OGFhODAyNzM4NWJiOTYzZmE2MjU4NDE2ZWM0NTljNWE0M2U3MDJmNmJlOGJiMmQyY2I3N2YyMzE=
yNzZiZmNhNWM1NTI1ZWU4ZGFkYWNlZjEwODNjMTgwYWUzYWM0MWRkN2Y0MGRmZGI0MDAzOTU5Ym=
U4MTQ4NGNiYmVkZTAxOGJkMjVmNGFiMWRhNjNhZThkMQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzE4N2U1MWJjYzhm=
OWQ1M2MxZWNkNTJkODAwZGRhNTBjMzBhMmIwYTBiMjRiYTdmNGZiOTQyMTcxMTI3NzhlMGQ5NGR=
kNGM3Njk1NjQ2YTMwODQ2YzQyZjI2MDBjMjNjZmUxMzBiNzBjMmYxNjM1N2M1MmU5YzA3Y2QyZG=
MwMGYyOGQxY2VhYmJkNDk1ZTgxNjExYTIyZjI1YzljN2ZlMDgwOGRiZGJhODI3YWE5N2Y0ZDNhZ=
WJlOGQzODQ2YTc0YTI0ODZmMjhhMzUyOGIzODhhM2I3ZjI0ZDI3OWViMGQyZTJjYzM1NmI0Y2Y5=
NmZiYzk0Njc5OTVhNzA3OWUwNjg5MDNjMTM5NzA4YWQ0YjI5M2Y2ZDM2MWI4OWRmODEzZTM5Yjd=
hYzhiYjk1ZTMxMDFiYjE0N2ViZDcxMTgyOGFlMTUyNWI0NTM5ZTFlYmM0ZDhiOTNjNDllMTcyMW=
JjZGQ4YjE4NDFhOTExZjAwMzgxMDMzNWZhMDViOGNhNQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDdiNGU3MDcxMjZjZm=
QwOGY5YTcyMTQyNTQ5MDlmZGVjZTUwY2ZiOGJjNjQ4MDBlODViMTNkNDBmZTAwMDg5MzkzNWUyM=
2MxNzI1NGQxZTFiOWQxZmFlNTQ2ZGJiODgzZGY5OWQzNDhiZmJhMzgyYWVhOTcyMTcxMGUzYTJk=
ODE4MzI5NGRkM2FmMGU1NzE1NDNiNTM1MDI1ZGE2Zjk5NDUyZTVmNjQwN2JjNzQ3NmU0YzliNTc=
3ZGRlMTE1ZjZkNDU3MzA5ODVlOGY5MjBkMWFmMzE1NTY1MmRjYjMzYjQ1YzE1YjdjZjgxNTM1OG=
E4NzcwYWY3MjRkNjcwNzA1OTBiYTllYWQwYjE5NjY2OGIxMWM1MzA2MzA5MDI2ZTgyNWUyYjBhM=
2ZmN2RhOGY2NmE5YWZlYmRlMmM2OGI3YTBmODJjY2Y3ZWY2ZmJiOGZjZjg4YTc2OTMzMWFiOTdm=
NDJjOGU0MzU4NGVkYTljZGIzNzExYmY0ZTk1YjdiMw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMDM4MjUwYzhjNDhh=
Yzc5YTY5MzllZDg1YTE0NGFhMmYwYmZmOGRjYTU5NDU5MzE5NmNjNDk0YTJjYzM2NGU1NzU0MTM=
wM2Y2MDA4YjY4NjFiMzY0MjI4OGYzMzE5MjNhYmY1YTZjOTg0MmQ0NDdjZjQyNDkwZDQ1YWUxZG=
ZhMjM4NTgyMGMxOWJkYTUwMWMxN2Y5MjNiNGYwMTMwYTE0ZDNiZmQ4OWE2YjEwMGY1NTlmMjg5N=
zk5NDYzNzljN2I4NGI4OTdjNWQ2YTI2NjlhYmJmZjlkYmMzMTQ4ZjNmNmI1MTI2NGQxMzRiZGQ2=
NjdiYmQ2OWEwODhlYWQzZGU=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DMjkzOTVkMTIyNjNjZWZkOWYyYTQ3ZTM5NWZlM=
DUwNDExZjIyMDAzNzcwMTc3OGIyOWE1MTBlMjg5MDMwNzRiM2FiNmM3OWQ1NjA3YWQ3YTgxYzIw=
MjNmMGE3OWM0NjZmZjJjYjMzYzQ5ODk5NmVmYzczYzk0OGZjYzYyMDBlNmMzNThlYzU0YzU3OTY=
5ZmEyNGM2MTYyMTNkMDc0YjFlOTgzMzk0M2U3N2Q2ZGNhNGM1NmFmMzA0MjhlZjgyYjZmZTY0N2=
Q3ZGIwMWQ0OTM1N2E1MmE0ZjI1ZTVjMzE1MzM2ODJiOWZjZDQwMTA1NGI5NGExOTZmNWZiYjIyZ=
DZmYWE3NGQ4YmVmMTg1N2Q0ZTM1ZTJjY2Y4N2YyYjM4MDRiNDkyN2ZmNmY3YjZlOWIzNDEwOTNk=
NTA4NTM4Y2QyYjU1NDYxMGFiNWFkNDVhZTI0ZWViY2U1MTkxNTkwMDQzMTk0N2FhYWI3M2I0OTI=
2MmUwZjNkMDk5MDRiYjliNWQ2N2VjZWU4YWUyMjRmMWE3NTkxYjA0ZGE1MTEyYTY0ODZhYTcyNT=
VlNjc1NGE3NzNhYTM2YjI0MWM=3D" style=3D"font-size:12px;line-height:134%;font=
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
