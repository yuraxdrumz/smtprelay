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
From: localhost:1333?u=3DOWMyNmNmMDYwOTYyNDNlYmY2ZTI0NzI5N2E3MWNhY2E3Y2ZjZT=
ZjMmI1YWNjOTUxYWVlY2ZiM2Y0YTRmZWVmYzczMGI4YmY0ZjY3ZmQ2 <mail@eg.expedia.com=
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
<localhost:1333?u=3DYzk4ODYwZDllMjllYThmYzZmMjQ1NGIzN2I2MjRiNGY5M2EyZjc3YTF=
lZWMxMGY5ZjhhMTdkMTFmYWVlMzU3NjJkMTIwMGMxMjdjZjg5YWI4OWU2ZDIwNmJjNDg0OTYwZD=
JkMDEyNGU5YWZjOGE5NjMxMmZhYzY3ZDE0NWUxMjc4MmRjM2UzYjI3Mjc2MjhhMjBiMzQ0ZGQ2N=
DI2ZWViYTk1ZWJkNmFjNDQwYjdmMTRjMDVlMzFhZTE5MGVhOGRjNWZlZjc4YTVmN2Y5NDdlMDI4=
ZjczZTExOGE3NmEyY2U4MmI0ZjFkNGZjMzM0ZGVjMzUzMWY3MmQ3MDZlMDA4MmU3M2I4YmQyMDN=
kNDUyYWYwNGUwYWMzMmVhZDU4ZDU3ZTM2ZjExNTBkODg1MWE0NDU1ZGI5NjE3ZTk3MzkzNGE1MD=
Q5MTAxNzhjZjBhYzcyMTg3MTVhMjE3OTQyYjNkOGIxZGIzNTY3NTcyODI0NDAyN2M4OTllNjk0>

* The Travel Edit
<localhost:1333?u=3DMDJiMjViNmMxZjY1ZmFmMDQxYmMyN2UyNGZmMWQxYzZiMTQ5Y2UyMTB=
hNTUxOTQyOTRlZTNjZjRlOWJhM2U4ZDJkNTNhNmVmYzQzMmZkMmYxYjdhODEwMDAzZmY0NWVkZj=
c2ZmE2OTc0MmYyOTg5MjFkMzRhYTFmYmE3OTBhNWRmNGQ2MmY2OWFlNGMyYzJkOTdiN2Q5YjllY=
2NiMDljYjFjMjYyMGJkOGM1MGFjMjUxMTFhMjhmZGQ2OTg1MzQ3N2I3MTk0ODdlZWJjNDViYTM1=
ZjAzZWQ3ZTgyNTNlNTA0N2Q0OTNmOWQ3MGJjZDZmNGRiNDgwYTBiNjMyODNiMDM2MjczNWY5OGR=
lODRjYjA1ZjFjZGUxYzQ3ZjBiMDNkNjc2NDNjMjhjNzkyZDJkNGZkOWZiY2JiNzI2OWRlZTQ0NT=
M1YzhiYzI4MzgwYjU2OTJlMWJjMGI4N2Y5ZDIzNTJjZDhlM2FkYTY4MzNmOTFmNTNlMzY2M2E4>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZDA3Y2RlY2FiNGU1MGFkMTk5NzZiZDM4YTY0MTRmZTkxODg0NWM0NzF=
mNDRkZTZlNzUzMjBjYmQxYTQwNTU5ZjIzOTI3NGYwOTEyYTE2MmFlNDYwZDdjNzBiZjdkODU3Mj=
VmNTk3NDAwNTIzZDY3OWZjZWE3NmQ4ODZjMmQ1NGI3Y2MxNWI2MzgyOTFiNmUyNjVkZDYxNDY2Z=
DM1YzFlMzgxYzZkZjgwYzA5MzEwMDIxZWQyMjdiYTAzZTQ3OTcxMDcyODUzNmQ4MGM2Y2IwMWMz=
Y2I3YTBjODRlN2M1NjlmNjBlYTZlMjI1ZjcxYTRlYzMwNmUwMTNmYjY3MDA0OTY0NjI0ZTg1Y2F=
kZTNkMTFkNjkxYzIxMjA0MzVmOTFlMWFlMTdjNzNjYzhlNTkzOWNjNzA3NjdjY2YwODQ2MjM4Zm=
Y4OGFmOTgwODE5NDUyNjUyNzRhZmUzYjkzZWQzMTE5NzE0MWY2MWE1NTllMzM3NzMzYjIzOWRi>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMDA5NjQ2M2I2NGMxNGQyNjQ1ODg2MWEyNjYzMWExMjMyZGFhODdhM2N=
kMGM5MDQxMWM4ZDZjMDNjNDc4NTk1NDdiNGRjNWRjOTJhNzAyZDBhODhiNmMyNWQ0MjBlYjZlYm=
I1NGM3NjcwMzNiNmI4NTk2ZGE2YWYxNDVhNTkyMTI0YjBkMzJkMGY2ODk1ZDEyZDM1YTc3OTM0N=
TliYzc2YzcyZGM3NDBkOTEzMWNlNTU5ZDcxYjE4NWQ0NzIyZGU0MDQ3NzVkM2ZhZGIxZjY4Nzdl=
YmFlNWVlNmJjZDMwNzJhMTU2NGU5YzEzMTljMGUyYTg2N2E0MDQ3NDRlOTg0MTkxNjQwNzcyYmV=
hZTMzNTc1OGIxZTA2MDNkN2Q5MGM3OWYzMzE4MTVlMzlhY2ExNTE3NGQyNzI0NDkxMWEyN2M3Y2=
MwNjQ2YTkyN2VjMDFlNDkzZjI2OTQ2Y2FiOTg1YWI4ZmNkODZkYTIwZTMyNzNhZDk1YmUxYTc5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOWIwOTBmYTI5YzM1Yjk1OTQzZmExNzFhNjAyNzJhZGQ5YWRmN2RlNzR=
hMGM3YzdjZGM3N2ZhYjFmM2I2Y2JiMWYwNGVmZWY0NzExM2Q4ZmIwODk0NGE5ZTRjOWI1YWE3ZG=
MwYmE5ZTk1N2RmYTI1ZjNhY2U3MGY5YTNjMzlmMzAzMjNjY2FkMTc2ZWQyZDg0MDQ5NDM5ZjAwN=
jJiMDAxNDQyMzg4NjhmNzM4NGU5NGY4OGMwZjU4NzAyNjgwNjI0OTJlODllNDQxMjk5MWJmNDMy=
NGI5ZjcwMTM3MTQ2NWU3NjM0YzYwYTA4N2NjZTVhY2I1OGFmMTJmZDZmZTU2YTBlNDM2NmI2NDE=
4ZDcwNThkMjFiNDg0NWZhNTRmMTNmMDdhM2Q2ZjQ4MzE1YTE4M2Q1NTMzNTJlNTM3NDcyN2M4Ym=
M4NjdhZmZlMDFkMmE4NWIyNWJjNTQ3YTYwMjUyYzllMGI1MTc4MjVkN2JhYzBkNzQwZTU0YjM5>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNWJmMWQ4NGI1MjAxNzcyMjZkNjNiNGEyYTMyMmRhMzhkM2QyY2I1MGM=
5ZjQzYTE0YjQ1NDJkNGQ3MTI2ZmU2NGNjYTUwYmQ2MWNkYzc4ZmZhMGJmNGFiNmEyMDQxODRmMT=
ViNDVmZDY2ZDkwMDI1MzdmZTY2NmUyOWFjZWE1YmFmZDA5YzVmOGM2MTY4YmNlZWQyZGMxZjI5N=
TdjMTkyZTExYzc3N2QwNmM1ODI2NGRjMWViZjA0YTY0NTMwNjhjNWRkN2ZmZjY5NzZkOTg0NWNl=
ZDFiNjgyMjEzZmFlMDYzOTA1NzZhYjA2YTgyN2Q4NzFiMzMzYmNmMWY3Mjk4ZTA2M2JkMTg3ZTM=
zNGI1MmNlYTA3MThiNGU0NGE3NjJmYTg3MDJlYjkzMDJhNzc5M2E3ZGIzYTA5YWE4MWMxYjA2NT=
RjYzJiYTI5YzEwZGNhN2UxMDYyMGQ4MzZkM2ZiMGVlZmZlMGZlOTkzYzQ2MDZkODEzOGYyYmZh>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZTNlNjA3N2QzMTMxOTNkM2RiNmYxMzk1OGZkZTRkNjI1NzVjYjI2Yjc=
5NTZhYmViMzNlYWVjMGI3MTUxNGFiNDdiZGE2ZWNlY2Q2M2MwNmM1NTcxYmE4NDgxMWViNTk5Yj=
EzNTViZGYxOTA5NTlhZjQyMjQ0YjZmNmE2OGRkMTQ5MWU3MDdiYWQyNzZlMjllMTQ3YjAwZjg5Y=
2JkNDk5ZWY5MGE3MmFkZDU3NTk4ZWEwYjMwMDc4NmYyYTA5NjM0ZTZhYjZlMjA2OTIxOTIxN2Ni=
YTVlZjRjM2ZkZTNhNmIyM2RiMjQwYjFlYTA2OTJiYjkyMGJlNzA5NWQyNjI2MzJmMDcwM2FkOGU=
2OWYzOWEwNzE3MTQ1MDE4MzY4NGIwNTRlMDllMjJmYWM0Y2RhYmUzMzI0YzI0NGM4NGEyNjQwYj=
g2NjA1ZTUzZjg4MzZkMTI1MzU2Nzc1ZjgwODc2YjY4NDI1MDY5OWRiNjU0ZjUxZjU0MWMwNTU0>

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
<localhost:1333?u=3DYTRiYzdiZmZlZTRlZjRmNmNjMjY3MTdkMWFlMTRlYzAyMzdlYjlmYzJ=
hMzIzY2ZkYzZiZmJhM2EzNjU0NDg3NzBmNjM5YzBhNDg5OWM0YzA1MTlhNTQ0NWJkZDAxMjRlMD=
Q5ZjY0NTA1YTM5MTNiYzVlZTI2MWFhNmQxZGZjZTU4OWMzY2QzOWI0ZDQ2MTdhNjJmYmExMTBhO=
GU0YzE2MmI2YTNmOGE2ODRkMDI1N2EyZTkyMzY4ZjFlNzU2YWUxY2YyYjZmMjQ1YmZhYjUzNzQ3=
ZTFhOGQ5MGJhODAwZWRmMmYyMzZjYTdiODkyMjU2ODRiNWMyMjcyNzRjYTI2N2ZhYTI4N2VjNzl=
iZTk4Y2UxMDY4YmRhMGU0YjNhNDcwZGQ3OGQzMjA0MjdlNDY2OWFjYjJlZjhjNWVmYTQ0MWVkOT=
k3NmY2ZTdjNWNjMDQwNjdiYzJmNDdlMDc2NTZjMGVjODdkZDE0MWUwNDIxM2ZiYjY1MGQ5YjFiO=
WJmMA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNDMyN2JmMmYyYWQ0YjU2NjYzY2ZiNWQzMDM4NzY3MWZiYzM2OGI1MGU=
4YzE1YmNiMGFmY2RhNzEwMjg0NDc5MjI3M2MwMTM2NzNkZGQ2ZTFmZmE1OTMxNjY2MzU0NzdkNj=
M4NmQwMDM4YTNjODIwMGY5ZDM2YjUzNzJlMzRhMjMyOTRlZjNiMTQwNGU5ZjljNTIxM2EyOWU0Y=
Tk3Zjc5ZjAyYjM1MWJlMzMzMTRjNzZlM2NhZGJjZDVhNThmZTdmMWJjZjgyN2QyMmQ0ZjNlZTJm=
NDUzNDU4OWQ4M2M3YzRlZDg0Y2YyNmRhMWUzN2Y0ZmU3ZDczY2E5NDUyZWQwMDRmMDE1YjZiMmE=
wOGQzNTBlZTA4MGZhMTUyM2Q4ZTY1NjZhZDg5YjFkOWJjYmJjNjdjYjYwNjc0YjY0NmYwOTJjZW=
Q0MTUzMGUzYzQ4ZjRlNGZmMzExMzc3MjYyZDI5NGJhYTM5YWQxNjAxZjRkODZkMDU0ZmE0ZThl>
  [image: Google Play]
<localhost:1333?u=3DYjkzZjcyMjk4MWM4YmVmNTQxMmM0NzVmMzNkODZhNzhkZDFiYTNjZDA=
4YWQ1M2RiZmJkNzU3MDk5N2NlMDlhYTUyZDhhYWRmNGZhOTc1NDFhNDVhYTkxOTczZjJlZWQyOT=
hiMDg1OTEzMmFlN2VlYTRiOTRhOGRjYjE5MjBhYzMzYjRiZWZhYjA0OWVjYjVlNWIzNDBlNGQ2N=
Tk3ZjA5NzEzNzc0ODAwNzgzODQ5MzVjZTE4NmFmMmNlNTU3ZGI0ODA2YWVlMjZjY2JiZWE4ZGUz=
ZGU0OGIyZDkyM2ZhYTMyOTI3ZDZmODE4NDhhZGE3MmZmYTFmMTlmOWQzYzU0YjM1ZTAwYzBlNzY=
4ZDBkMTIwNzJiZDc5ZTg1MDRmZTcwNTNhOWFlNmJlMGQyNTUwYmU0MTI1ZDk4ZDAxM2U5ZmI1Yz=
g4NGQ2YmU3NmEyM2RlMjY0Yzc2YTVlN2U3ZjM2ZDg5OTcyYTRjMzI5OTI3MjY1ODcwNDJlYjY5>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DY2QzMGNlOThhNzE4ZDE1MGZhNDNjNDdiNGU4ZDVmMmIyYWYwODE4NGZ=
hOTY0YzJjOWMyYTkzZTc0YTVlMzUxZDRmY2E4MmEyNjExY2Q3M2QwN2U0MzY1YTE2MWRhYzJiND=
VhZTk3MGRiZDQzYzNmMDA4Zjg0OGVmY2QxZGU1OTk3N2I0MjUxNTQ4NDBhNzg4YjdlMjNhMGJiN=
DVjMGZiYzcyNjMyMGNlZjA0MGJhZDM1OGRhMjRlNWNjZTQ5ZjllM2Q2ZWVlZDAzZDYyMzI4OWM5=
MTg1MGZmYzAzYjkzNjNkMjYwODY4YmEzOGUwYmJhYzU2ZjVlZDRiNDg0M2MwOTNkYmQwZjQzNTc=
0OGIxZmQxMmIwYWJkMTlkYWE5YTU4MTI1ZDQ0ZDZjZjBmMDZmMmZlMzNhYjNhMmEzMzViNGI5Mj=
A5NTUwZDkwYTAwMjk0ODcxYjQ5NDA5OTlhNjkxYWVmZDk4NmRkZmI1MGRjMWI4MmFjNjg1Njc2N=
jZhNw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMThjZmFmY2I1Y2MxY2E4MzFmMzk1NTJjMjEzY2ZiYjQ2ZGVmZDkyODh=
kNzMyMGUxMjEyOGI4NzhmMWRlNDA5Y2VmYTQzM2Y4ZWQ2ZWVjY2Q1NDUxM2IyYTUyZTJjZjRlMW=
YyNTJhOWVlMmZjNjJjMzQ2ZWI2YTU5M2Y3OGRkNDRkYzUzZGJjMjE0OTBlZDY4N2I2YThkYjhhY=
TUwM2FjNGI3NDRkMjMwYzFiN2YxNTgzOGY1OWJjZTI0NWM0Zjk4ZjExMDYwZTFjYjk3OThlMGFh=
Yjc4OTAxNjkzMWIwZTQ3ZWNlNWMwNjJhMGRmMGI0NjYyZTJjOGFlYTBlZTI0Y2IyZTY0NzljNTM=
wMDkxNDcyNjI5ZWE2NDMyNmNlOTE0MTcyZTA4YzMyYTFlOGEwOTBhMGViNjYxODVjYzNiM2FjZG=
E2OTIxMmIzNjUzNjdlZDEzNmU0NDZmYTQ2Njg2MDgyYmFmMzM1Yjk2MTFjZjc2NjdjZDVkOTdiM=
WFjMg=3D=3D>
   Privacy Statement
<localhost:1333?u=3DZDFlOGJkYjU0NGQ0Njk4MTU0NDA2MDdjYWI4MzI3ZTgzODA4NDUyYWJ=
lNzM3YzIyNDk4MTcxNWQzZWJjM2JlZmNlNDFhNDAzNWU4MTJlMWY5MjBjN2JlMjFjZDY3ZWUwYT=
lmZWRlYjZmYzk1MWQ2NzViMmYzODExYWY1MDVhNThmMzk2ZjFhZmEwNjY4NjEyMGMxNGMzMzk4N=
TU1NTlhMGUzYTU2N2NiZGNhMDcyN2FjMzkzZjg3NjdiOGE0NDhhOTVmNGFlY2M3ZDA2Nzc4ODFj=
NjdjYzZmMGUyNjEwZmYyZTcxNWE3YzdlNjMyZTNlZGY0NDBiODE0ODE2ZmNkM2I2MjM4OGMzYzJ=
hNWRkYWQ2MTEwZWY1ZmQ5YjM0Mzc5Y2U5NjdlNDM0MzkxMzg4ZjZhY2UzYjQxNmQwMzQ0NjQ1Nj=
kwNmVmY2ZhOTIxOGY5OWQ4ZWFhNzM3MjdjYmZjNTYwYmU1MWY1ZWU0MzE5YjczOGQ0NGExMzgzZ=
TYyYw=3D=3D>
   About Us
<localhost:1333?u=3DNGQ1ZWNlYTRmYmM4MGU4MWY1NWE0ZTI5MGQ4MmY5NjJmYzUwMzAyY2M=
wMjdlNTg0Y2JmZDZjMzViNmE2YzNjYTUwMGRmYTRkNzE4MWY0NjFjNzYyY2NlY2QzMTkxNDQyZm=
M2ZDAwMDhmODA5ZjY1M2JhMTcwMWQxNjA2NTRhZTIxMGQ5ODNkZjc0YjE0MzIxZjhkNzIwOTI1N=
zVmNWVhNDIwYzU4ZGRlNDUwOTVlZWYyMzJkMmFjNTQzMmYwYzY2NWI3ZDY0OGFlMDYyZGU5MzIy=
NGU1YTA3YTRlYmM1OTVjODczMjQ1ODA3MzA0ZmY0MzA2ZGRhMDllMzFjZTVkNDYyOWVhMTQzNjg=
wMDRhNWUwOGNkYTcwODdhMmRjZWQ0NjYxNTNmZDQyZTAwM2RjN2ViMDgyYjUxZTNmZGUwMjc4ZD=
g5YjhjZjcwNTVkZjgxZjc0NzJiZDY4MTZmMDhhMjhmYWM2YWFiM2I1M2MxMjNjZjkwMjExYjM5Z=
WQ5Zg=3D=3D>
   Customer Service
<localhost:1333?u=3DMzYzMjEwMWY5YzEyY2ZiNTFkZmRiN2MyMmQ0ZGM3NjgzYWE3Yjg1NDE=
wNzA3MDg1OWRlOWJhYmM1MTJkZDA0Y2VhNjEyNzg0YTA4ZjA2ODRhNWM0NzEzMTk3OTM5MmMzZT=
U4OGJlOGZkODM4YTZjOTJhNWMwZTY5NThkYTYzODY5MmE2M2IyNWQ2YmVjNmEyMDEzNGUxZWFjY=
TMzOWYxOWIxODVkMjViMjM1ZTk0ZjE1ZTA5ZjJiYTUzNDA1M2M5NDcxYjIwYWI3ODc4NjdhY2U3=
ODM2ODljNmQ4YjNhMWQxOGUxMWFjNTkyOGViNjMwMDA3ZDBhYjllOTgzN2Q2Mjg3YzE4MDQ1ZGU=
1YWEyYjc4NTc0MjhkNTg5Y2EzYjdkZWJkOTNjY2ZhZDNmYzczMzE2MmRmMDdiODViMjRkZTFmMz=
JkNzliMGVlOGViNmZkODk0MjU0MWU2NWEzYjFkYjI1MDE2ZmQ5ZWY4MDhlNDI4NGI0NTk4MWZiM=
jQ4OA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DYzU0Mjg5OWFiNzdkZDY0MmJjZDIyNjI0NDgwMDQ3OTEwYTk0ZGY5MDQ=
wOTM3Yzg3NDBjMjI2N2Q3NGM1NTFkZWQ3YWEwYTlmMDNmMzZhMThmOTQ5YWQxYzI2MTNmZjVhZD=
hmMjY2ZTE5MmFkZDU4YmUxOTg0NzViMGU1NjMxNjAyYjA3Nzk1MjNhNzAxMmMwZWQ0NmZjMmE2N=
TI0N2Y4NTYxODkzNDBhMmVjODNiYTljMzhmNjlhN2FmZjBmYjBjNzY4ZWUzNDM1YjliNDRjZTVk=
MDQ0MTc1YTcwM2M0ZjIyOTRmZWIxOTczMjNhYWM5MjViNGFmMWFiNzJjYTM=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNzU3MDE4N2E1ZWExYjE4NTk0MTFjYzRhODE2ZjEwODkxNDA3NDhlYzU=
xN2EwZjRjMDA5ZjkyY2FjNmIzNjkxZmJkMDczNmQ1NjQ2N2E4ZjA3ZmIzYWY5OTAwZjhjNTdhMG=
U3OTdmMzM3MDdiMTAzNjMwNmRmMmE1MTBlZTVjYTdmYjdkMmE5ZWU0YjlkMzExZmU1YThlMTA1Y=
ThkNGNmN2E0ZmE2OWVjMWU3YTk4ZDZhOTI2MTg5OWEyMDJhNWFmYTdkNzkzNGIzNzVjMmVmNWY3=
NGYyYTRlZWYyM2I3NTZlYThmMGZlNTQ4YWZiZGRlZGYxZTQ0NGRhYjYyYjMzODJmMzQ3ZjU3ZDc=
zZTA1MTA4YmFjN2QxNjI3M2Y1ZThhYjAwMTFjNTBhNjM4NmZjMWYzZTY4YmFlYzA2NzhhZTc2NT=
hmMDc1OTNjYWRkMzUyZDVkNDcyMzIzN2MwMmM4MWRjZjJmZGMxMjRkZjczMGM0NGIxYjk5NzEyY=
zNkYTZlYjgxMjBiNTlmMDlmZmU0NWQwYWMyZDQzNWNlNjA3NDJmNGE4NjY5YjE2NTI0ODJiNGZj=
ZmMzNWI=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZDYyNDJkYjJiMjQ1ZTFi=
YzU4OTNkOTlhZGMwYWQ3ODNkODY1NzA3Nzk3NjQ4ZGMyNDQ5MjFmNDZhMWZjNjQ3NGFkYTEwZTg=
5MjUzNDc0ZTE5Mzg1ZmVkMWQ1ODdkZGUwNjA4MjhmYThjYjFiMjE0OTY3MWI3MDE4MmI2MjIyNj=
BjYzNhOWUwYTQ1NmNiZmFhMzBjMTRmYjYzMTZiZDg3ZmZmZmUxZjZjNjdmNGI1MTUxZmE2ZDE1M=
DA4MmE5MDg3NzBiMDczMDIxZmQ5M2I5Y2ZhY2E0ODA1ZmQyMjZlYjMyMWM5MThhMDk5YWY3NTA3=
YjM5NTZjODhiNWM0MzQ0NzUxMThiMjIxZmNlNjIxMWU2NzQxZmI1NmY4YmRmYzhkYzE4NmQwNDk=
zZmQzM2Q2YmQxZGU2M2EzZDMzM2EwNmI2YjFhNjMyOTk2NWZhZGNhZmMzNzQ3MWQ5ZDg4MTczZD=
MwZTc2NDkwZTlkNTA2YTI3NTVjMmVkZDAz" target=3D"_blank">
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
?u=3DNTJkYTM3NGJjZjc4ZGY5ZDY3MmE2MzZhZWY2MmQ5ZDkxMDIzMDBlYzc5MGM0YmMwNDgzNW=
JlMmY4OWY2YWMzMWNkZWMwZDkzNzkzNDkwZTFjM2ZlOGQ5MTk1OTgwZmVlNzRiMmY1ZmRhMDhiM=
WExMTgzYmY1ZmY3OGJjZDY2NTRlOTVjZjRjYzQwZWIzODE1ZTY2YzE5YTZhYTIxM2IwNjRkNDg5=
OWNkYmQ2OGQ1NWVkNTFlYWIzMGViODhmMzQ2NzkxYjA4ZWY0NjhlZGU2NWI4NTMzOWI2N2VmYWN=
iOTNiNzhlOTRhMWU0YmI4Y2IzYjM1MDUxN2QwOGYzYTQzOTkxNWFhOTEyZDE5ODkyMjQ1ZmM3OW=
Y2MDU5MWU0MTBmYTRiZTJhNTg0NmY4YzJlMDNkODk3YjRiZTBkNTJmMzRkYjgyMGU5YzU3MmIzN=
TcyMTFlODdhODE0OWEyNTQxYzZlNGFiNWJhYTZjYjVmZDY5MDZlY2MyOGYz" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DOTdlZWFlN=
mFkZDg4YTYxNzJkYTlmNmJmOTJmZjQ4MjQzZTUxOWZiNjBkZGMyMzUxNDUzZWJlOWFhMzRjZjgx=
NDA2NGE2MDk1MGEzZmNkNGYwYzE1NjAwMTIyNjk2MTliZWUxOWQwMTU2MDZkMDQyMzczZmM4YWU=
4NTU0NDJlZjRmMDBjMWU3MzI3ODU1OTM1ZjQzNzVhYzFkYTgzNjRkOWM4NTIwYjI1OGI4MWMzMW=
EzNThkN2UzNDA0ZWIwODcxN2IyNjVjYmJhZDFlZTAyMGI5YjJlZDVmMzY1ZDQwNTk5NzI5YjY5N=
zE0NzRiMWE0YmZjZGVlZTZiZTI5ZjYwMjAxOTA4MDA5MDQ2YjJlZmNhNmM3MzlmOWQ0N2YwOGYz=
NmYzMjIzY2Q5MWM3MTc1NTdjNGIyMGRkY2IxODA0YzgwNmJkNWQzYTMwNzhhYjdjZWY3MWZjMTd=
lMDM3YmY0OTIyOTNhOTRkZGEzMDk1MzI4Y2RkYjg1MGJi" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DOWU1OGU=
wYjFiZmJmMGNjMmE5ZmJhM2U2Y2JiMzNlMTBlOGIyNzM3OGY0YzkyNjAyNTEwNGE5ZjQ1NjJhY2=
Y4NTA5OWI4OTQ5MDQ0MWMyZGNlNTk1ZjJjNTAyZjA5NjNjZGQwYjBhY2Q0ZTRmZmJiMDQ5YTRiN=
zA1Njc1MjA0ZTlkYjAxODFjNzFhODk4Njc3YWZkMWY0NDcwYzliNGJkMDI3NjA4YTk1MDQ2MmEz=
NzZhOWNkOGVjZjNjNDZiMmViZjM3MmFiYmQ2MjQ1YzI0ODg5YzU3ZjU5Yzk1Mzc4M2NjNzEyZDQ=
1NTVkMDBkOTY3MjdmYjgyMTM1ZGU4ZmJjZjgzYmM5Y2Y5NzYwYzk4MWEzMDc4MGM0OTU4YTJkZG=
Y0MzhhNjBhNTcwMGZiMzYxY2QwNmY0Mzc0ZTg0OTNhYmQ2NjhmMWY1MGVjZWMxM2U5ZWUyMjg1Z=
GQyOTc2N2ZjOGU5M2I1NTdhM2U1YjJiZjk1OWM0YTY5NTUy" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DODhhOWFiYWM5=
MzI4NGY4M2FhMmY4ODg4OGVlYzZhZDIwN2U1MmI1YmRiMTVlOTMzM2YwZWM0ZDZhMGFmM2E3ZmU=
3ZDExZmQ1ZjhiZDg5YmIwZmE4NGQ2NzAzYmMzNTQ5ZmRlODc0NDAxYmYzMDI5MTFmNTU4ODJmZW=
Q4ZTg2ZDAwNDM4ZjJhNzYyMDIzZjJmNWExYTZlMzg1ODI1NDhiYjkwZTkzZGFiMmRiODI2NzNjZ=
DcwM2I5MGM4ZGJiOGUyMGUzNWM3ZjIyM2Q4YWE2M2IxOTgyNTNhNjM0MmE4NmIwYmNkZGFiMjcy=
NzYyMzQzOTk1M2FlY2Q4ZDJjNjFlOWI0ODhmNzQ5ZGNhYmI4NTk3ZDViZWE5N2VhYmVmYmY2MmE=
4NDVjYWM2YWZjOWQ4M2VjYmYwMzIyN2EwYjY3NTE5MTA3ZGMwOTVmMThiNTA4ZDhjOTJkZWNmOW=
I3ZGJiOTk5ODVjZTNiZjc4NDBhMjZiM2I4Y2MyYmJh" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMzcyNTdlMmQxZDBhM=
jg3NjAwZmE4ZTY1ZWI5ZjJiMTc4NWQ1YzkyNzdlNThiZjkwOTk1YzAxZjRiYjQwOTQ5OWVhMzll=
NzAyZjMyZTNlODBjNWMzNDgxM2YxMWZlODEyZWNlNjZjMzVlZDExM2E5MzY4ZmYxOGM3YjZhYmI=
zZjFlODMzOGNjNjYxNTY0MDE4ZmM1ZTFlOGUzYTY3MzVmNmFmOTY2ZDRmMDExZmVkYjRkOGRiMD=
ZhODAxOGEyODFkN2JlNmFlMDAxMWY2ZjJlYWI5NWQ0YTg5YjliZWYzZjNkZGIwNTRlZDNkMzI2N=
jRkMWRjZjhiYzEzMTI0Y2JkNTE1MzZhNWE5M2Y3ZGM5MWY0YmI5M2E4NzkxNmZlMDZkZmQ5NTQ4=
M2ZkM2ExNjZmMGRlZjBiYjEzYzY3ODcwZDYyNWY3YjAyNDE2ZDNmMGU3ODg2MWQxNWU0Zjk5MGE=
xNzFjMWJhYWZiNmVkMjhkMDlkN2Y5MmU2YzRh" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMmMxZjQ5ZmY5Y=
jY1MjUzNWE1ZDVlMTUzZjU1OGM0ZWNjMDdmNzYyMmZhMjQ0MTMwMTkwZDE0NGEyMDY5OTk1YzRk=
YjM0NzZmOGI5NDA5MDAzOWViNWJlMGY1MzM5MTAwMTk5YzYzNmU4YzQ1MWVkNTQxODNiNWMzOWE=
5M2YyYzljMzIzY2QwYmI1YzQzZTFjMjEzNWRlODE1OTA1ZmEzOWU1Yzg4MjBhMWY2ODg0ZTEwOG=
ViMzdjZGY4Yzg3ZmEzMmZhMDZmMGNjYzE5MzNlMjgwOGYwMmIxNWFjOWMwYmE0NzM0OTg3NzlkY=
jVlNDFlZTlhNWMzNzY3ZTEyMWYwOWY4ZDg2YjczNGZhMGRmYTM3NmZmOTE1ZjllODI4NGMyOTY3=
Y2I1ZWM3ZmU2ZWU4M2M1NmU0ZWI0ZDg1NGFhMDNiYjdiNDg2NGM1MmJlODQ1NzY5MDc4OGJlMzc=
5YmIzMTNhZTNjNzQ2NTg2OTViMjI5ZDQyODE1NzFi" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYzkyMzd=
iYTJkNzBlMjkyODJjNDNmNjZmMzIwODgzODllNjFhNjhjMjg3Yzg2Y2MzM2MxMzVkNWQ4NjA3NG=
FiMWRhOWEyZDUwMWMyM2I5ZWEwZmU1YTM2ZmY3Y2M4Mjk4N2ExOTBiNjA3OWE5MWIxYjg2NDJkZ=
WE5ZjIyMGIwZmJkZTE3MzM0N2QzNDEzN2EwNWM0OGYyM2M3MDc1OGMzOTgyYTY3YTdiYWMwYmZh=
OWQ2NWQzMGViN2NkMjA2NTFmMGI2NTBlNTJhZjY4NzcxMTgyZGQ5YTQ1M2YxY2E1MGIwMDRhZjk=
3YTNmYmJlZWU5MDFkNzNlZDdmZjE3YzAzMjgzYjQ2OGVmOTMyNjA3N2UzOGM0MDRjOGMzZGE5Yz=
E5NzlkM2M2ZmY3ODUzOTllMTk5ZjQ2NDY1YTU4ZTFhMmRmMTk1ODNjMmQzMWM2ZmRkYmJkN2MwN=
Dk4NDc3NTU1YjYzODRkNTBiZWVhNTM0Njc0MGQ4ODUyMTgwMzU2Mg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNWYwNzEwZmNjOWJkYTJhOWMwYWRhNz=
MxNTlhNjZhOTY4ZTM2ZjM0YzdiNWRlN2MxYmJhNGQxMTU5YjdhYWMwYTBmOTIyYmQ3MTYwNDgzY=
jhmYmNmMjEzMTA0M2JjOGJiYTljZWM3ZThiM2Q5NjVmMjhmNDBlZjRkNWM0MDZiMjVjNjIyYmUy=
ZDYyMDgxYmE0YmEyOWY0NmJmMjRkZTc0Y2Q2MTc2Y2UwNTllOWIyM2VhZjUyOTAxYWMyODM5MmY=
yMGYwY2VmODE0ODhhYmUwODcwZmMwNjZhZTZmMjAzYWU1NjA2NDBiY2Q5ZDQwNDQwMDFiYWE4Yz=
AzMzVmMzMyMDg1ZDNjMzdiYTgwNjQxNzJjZDdkMjM0ZWFlZDFlNjk4ZTE2Y2E0YjA4NDk3NWRmM=
jgxMTNiYzU3YTk4NWQyYmM4ODU3YTFmMWE2OTkzNmRiMTU3MGJlNDM2ZThkY2FhNjhjZmI1ZTI4=
NTA0YWYwYjA2ZDI4MjY2Mzdm" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DM2M1ZTkwMTVlYTJhNzIzMTNmNTkyNW=
IwZDI2Y2I1Y2I2M2JkMWM0YzgwNjY1MGFhZDUwZDM4ZjBhNjkyZGNiOWI2MDJiODBmZDdkMTc3M=
mYyOWFhZGU2MjVlZGFiODBjNTAwNDliNmVmY2U5YWI1YmExNWZiOTcxNTYxMGI4ODFjYWMyNmU5=
YzIwNjA1YjYwZGUzMWQyN2E1ZDBlZjU4MjQ4MGUyMTYxZWYyZDJlNGU1ZTEzYzU2ZWQ1YmMxMGQ=
2NGFiMTNjMTNmYzZlYjVmY2E3ZWY3MmEwOTU0ZDhiNzE3NDk0MjJhNmQyNjczZDU2NDNlYjk1MG=
M0NzAwNjBhOGRhZTdiOWNmZjcyNTFhYjc4MDkyZDA4N2Q4NjdlZmViNjFjNmI3MzFiOTc0ZjUxZ=
GM5YjkwMzZmMDNjN2YzZmE1MjIzYTQ3ODhlMDM0MzllNWIwMjIxYWU4MWMxYzAxMjA1NTMyYjM1=
MTI4NTZlNDlkMWFlNTgzNDA0" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMjNhMTAyMzJiNTU2=
MzE5NjU5NjQ3ZGNiNTA2NDkzNDhiZmIxOTc3ODU1NjY1NWMyODQ4ZWRmODhmY2FlZWEzYzU3Yjc=
2NDNlNTYyOGVhN2Q3NjViMTMwODg3MzI0YTczMDA2MDNlMjE3ODE0YWU0MDY4NTJiM2U4OTYyN2=
NlMmE4YTk4NTUzNTU5ZjFlMjA5YWU2MmQwMzUzZjU3Zjk0NzQ1Yzk5MmQxYzkxZWI2YmQ4ZmM1N=
zg4N2MzZjI3ZDQxODczNTlhYmNkMmY1OWJjNmM1Yjg5NzEwYzc3ZGNkNzg2ZGM4MzA5N2Y4YjBl=
MDU0MTI5NDIyYmNlZWI3YWZjMjk1MDhiNTgwMTM3MGY0YTg3YTUyYTZlMTYwZjBjZGMyMTFkZWZ=
hNDAxZmQ4YWJjMTI1ZjhlZjg3NzAxODUwOGRkMGRmZmM2NjUwZmM2ZTE3ZWM5NTNkYzMzMGFiZW=
IwODFlMDcxZDEwZTNiYWI4NDgyZjhiMGY2YWZlMTBkZA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DN2I3N2JiMDAzYWU5=
YTdlYWM3NmQ1MmNkYTVkNmI4NmZmMjY0NGMxZWVlZGNkODgwNzZlNWJlNTFhMTI5YjgyZWM2NWM=
zNGY5OWY2MDRlZmRlZTNhYzY4ZTZkOTZjOWZiYzVkZDA0NmQyY2NiMzAzMTM4NzIwYmIzZjg5MT=
JlZGU1NDYzMmU2YmM4NDIyMGRjZWQ1N2E0ZDI5MGIwNTc5Yzc4N2Q2OGI1OGFiMTM5ZTcwOTBhY=
zM3Y2EzNDNhYzVmMzBmZTllOTUxOTE2YzgzZDc3YzE0ZjY5NjRlM2I0MzdjYzNlNDVmYjE4NmU1=
N2M0OWMyZmI0ZjhlZWJhNTk4NDFhODkwNjFlZTNmOGE0YTBhZDdmNGUzZjRiYjIyMzNkM2IxNmR=
jNDU4MDdjMzYxNWEwMzBmZjJhYWY2NWY1Y2EyYmIzZmVhMGU2MjYyZWQyY2E3NWQyODIxOTJjZT=
E5YzA1NTY5ZDAxNzFjNmE2ZmNhZTc3ZmY2OGU5OTBiMQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzJjMzA4ZTIzY2Fj=
N2EzYjQwMjJlODdiNzQ4ZGY1YmIxNzFmYjRiMTQyM2M4ZjVhNGEyOGY1MWMyYzNjMWY3OGFiMjY=
wYjBhMjUzYzdiY2FiZjhkYjA5N2JlMjI3ZjJjM2I0ZTgxZjRkYTVjOGVmMTBhOWI2MTE0OGUwYm=
M0NDY4MWFlMjVkODIzNjExYzBjYzc1YWQ1MzVlY2QzYWYyNzMxM2I5MTM4NWRkOTRmNzE0YmI1Z=
mFmZjBmN2U4OGRiNjk4NTU1YzRjZWRjMDZkZjA1MTIxODA2ZThkM2I1ZmM2NmRmYmU2MjNiOWIz=
YmU1YWU5ZTdlMjY1ZjJjMmM5Zjg5OTViZGNlMzY3MjBhOWZkZmNlMDA3M2I4OWY5OTZlYjFjY2M=
0ZTY4YWMwZWY3MDBjYjJjZGI1ZGU1YjUwNGNhMDg0MTFiODUyYzU2Mzg3MGQ0YWI2MjFlMmM2MD=
YyZmFhODAzOWFjNDMwMzdmMTlhMmM4NTQ3MGI0YTE2Yw=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTA4ODJiMTllMDdh=
NTQ1M2U5MjlmMDgyNjk5M2EzZDE2MzlhMGZjNDMwNmQyNjk3ODI3MzQwZjVlOTYzNDhkNDg5NmZ=
hNDZhNjdhOWVlYzgyMTBiODQxZDVkYjQwYWY2MjVhYjg2NmY0MmI5NjdmNDVlMjcyMDE2NzZhZT=
g4OGIxNDc1YmE2N2Y0ZDU3ZWFkZDY4NWI0OGUzNGVjMzVmMDRkZDJkODQxYjEyMjkzY2QxOWNlN=
DVkNGYyNmYxOTM3YmY2ODQ1NjVlYzIwZDc2YzIxZTFkZTliODM4ZWQwMzEzYmU0NWIxYTIzODA0=
YTI2YTY2NjFkNjVhNjQyOTQzNzkxODU2NjcxYWEzNmZlOWMyYWQ4YWEyMjE1ZjQyNWYwZjlhMjZ=
jMjczYzRhMWY5MjJjZTlkY2RlNDRmYTViYWZhZmYwNjc3ZDI3YjIxMzE1OGU2MjhkY2RlZTExZD=
hjMjA4MDdiMDRkMTdjZWE4YTBmZDVjZjIxYTk0ZGNjYg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDFhMjcyZjg3MTZjOG=
RhYTJhNWM5YzJiNThmYjUzYTBhYWQ0MWVlZmFhNTI2NTc5MTA2OTUyYTdhNzNjNmYyZGIzNzMxM=
jkyYTczNzFmZWY1NDlhMGIwNTMyYzVmMzEyODY1MzEwMTViNWQ0Y2I1NjcxMzY4N2ZhMTM0OTRm=
M2ViYjM0ZWM4OThkNmIwMGQzNmZiN2RjOTIzNmJmNTg0NGRmNWQ2NDIxNTk0NGExMGI4ZDdiMDE=
yZDcwYjU1YWIxMGNkZDM2ZWE3NmY1NDE3M2Y4MjYxNjQ3ZDdjNzM3N2QzMzVmOTU0Yjk0YTYzOT=
cyOWFiMjM3OTdlNDQ4YTBlN2U0MDBjNThiMTBlYWQ1N2Y5NDQ0Y2NkMWQ4YTJhYjE3ZmY5YWVkN=
mJkM2M5OWI2MjlkNGI3MTUxYTRhMTgyOTc3YzczYjg2MDQ4YmZhNGU2ODBkNzBlZWRiZDQ1NDhl=
MWYwZDZjYmNlNTQwYjA5OWRlNGZhNmZjM2M3MWE4OA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMzc4MTc5YWZlNzI1=
MjE5YTQ0NWZjYzI5ZjZkNjM1NmVmMTM2ZGMxOTEzNmRiYTg1ZjJjMjVkNWIzYTExYzU3OGY1MGV=
kMTQyZGJiOTZhMmIwODFiMTExZTdkNWM5NzQwMmFkZDM0MzQ4NTk5OTkxZThjN2RkNjRmMTEwNG=
MxY2VjZDM2ZTExNmE2MTk1MDFjZWM4NDg0MGRmNzc5ZGU5Nzc5OWEzN2FiZDJmOTM0MzY1YTQ3O=
TJjMTExOTY5ZmM5MDkyNzg3NDBlZThjYjhmNjBmOTQ0ZDY3Yjk2OTJkYTQ1MjExZTM2YzYyYzEw=
YjQ0YzAwZjJlNGIyY2EzMjA=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYzFhYmUxOTlmYWUzMTRlNzNiNTgxZmNiMmUyM=
zg0YmQ5ZGQ4MTdkMGUyMWRjNWQ1ZTI3NmI3ZWQ3NDcyZDczZmVjOWRhOTI1YjFiZWI2MjI5YWE0=
Y2ViMTM5NzhiODcxNmM5NmI3OTY5MTg5ZGY5NjRlOWI0MGRmYzMwYWVhMzdkMzk4YzhkZDM4OGJ=
hNDY1M2NlZWY0NzdiY2UwOTA5OTEyNmYxNDQxMDEzZTkzMzU5YWZhY2RhZjYwMGExYTYxMjgzNj=
FjN2ZlNTVhYmY4MjBmNGZmMDEzNjNlYWI4YTdmMzI0MDc3MDk4YjljYWVjYTE5Mzk2NTY2ZTRkZ=
TU5OTFmMzhjMjFmNjA4NmMzMjUwOGY5ZWQ5OGJhZjI2ZmY4NDFiNDhkODQ3YTA0YWE4NjVhOGRl=
ZGRiZWQ3MWQzNzAwYzI5NzkzYzhmZjgxOGQ0NjA0ZDU1MTk2Y2JjODAwYTY3YTRmMGY3MGE2N2I=
3NGFkMzQ1ZWM2NTkzYzhlY2MwYmUyNWQxZGRmMDA1MDk5OTc4ZmY2NWM0NWMxNmE3MTNjYTE5Zj=
Y5MDE2MGE0NGU0MzQ1NDJlMWI=3D" style=3D"font-size:12px;line-height:134%;font=
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
