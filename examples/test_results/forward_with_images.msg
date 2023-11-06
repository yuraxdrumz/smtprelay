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
From: localhost:1333?u=3DODBiMDRiOTllNTVkYTFkNWNkNDA3ZmM0MjEwZWQ3ZTEwYzU2OG=
FhNjUyYzNlMmMxMDgxZTYwY2U4NjkyOTlkNDFmYjdlY2NjMjE2YWRm <mail@eg.expedia.com=
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
<localhost:1333?u=3DNGNkNzg4MTNjNzEyOTg2Njg2MzE4YjVhZWU3ZDE2YmYwNzk4YTg4MDE=
wNGEwOGU0ZTZkMTczNzQyNmM2MmQxMDg1OTJlODZmYTNlZTllZjI3M2VlNzllYmJkN2QzOGZlOD=
ZiZmM5YzliNzUzNjgyNmY0ZTY3YmE0NjVmMzJiNzdjMTc5MzU5MjIxNzgyZGU1ZTJiNWJlNzdkY=
TlkNjQ2MmQ2NjNmOWRhNTBmMGIwMjI5MTVjN2NiYWZhY2VmNjllZmMyMTYxZTg5MTM5MzhlYzM0=
MTcwYWMwYmVkZmQwNzRlOTg1ZjNkMGY0MmNjYWM0ZWEyZTkzYzRkOTBlN2I4OTg5ZGYxMGE4ZGI=
0NTczYjI1YWI4Zjg0NzVmNDFiMGIxZWJhMjM0Y2I0ZmMyMzM4YzljMTE3ZWNlNzM3ZWQzNWEyND=
ljNTdmMmVkN2U5ZWZhZDlmMjgwNzI1OTliYzgyMGIwMGUyNjYwNzQyMTVhNGI2NjE4YTk2ZThk>

* The Travel Edit
<localhost:1333?u=3DZjRlMzUxOWE2OGE5MzQyMmY2MzcyMzE4ZTVkYzAyYjRhNDIyZThkZTE=
yZGZhYjlhMTI0NTIxMTE2MmUzMzUyOTQ1ZTExNjQxMjY2NGY5YTA0M2E4OTg2YTdjM2ZhMzJkOT=
MyMGYyZDhkNjUxYWNmMjVmYmQyNGVkZTZjNzAwMTA5NjYxOGZkNmM3NDZkMzc3ZjU5NzUyNzI2M=
TBkNWIzNjc2OThmOWMxMzViYzE4ZjUyMWU3MzZlYTNhODdkYzQ5ZWI3Y2RhM2JmNmRkNDQ2MDkw=
ZTgyYTdiNTQzOTI2NDVlMGFlNGEyYmQxZjQzMzRlMmE0ZjkyYTEyMjA4ZmVjMmQ2NTliNTIwYTZ=
iYmFiNGNkOTMwZjNhYTI1N2UxNzljNmVlNGVlOTQyOTcxZjQzMjQ4OTlkODMzNzMzZDY3MmY1NT=
k2NjA1NGY5NjYzMGYzNGFkYmRiMDA4YTRiMjIxYmJkMzNlZjdkZjIzMjJiNDI5MzJkNTJmMDEz>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMWI4ODQ2NGQ5YjdkOTFmNTRjOGM3NGVmNzdiOGZkODE5MDM1YjVjMDN=
hZGI3NjkzMThjODQ3ZjgwYjY2OTYwYWU3ZWRiZGU5ZjczZGZmNWQ4MDYzNjVkYTY4NzNkY2VkMj=
JhODc5Y2M0ZGU0MjVhMTg0MWY2YzEzNmFkNTNlZmJmNzYxN2E4Zjg5ZDZjNmIzYWY2MmY3YzYyO=
TZmMzIwOTM1ZTY2MmI3NTI2YzkzZWY0NWYwZDkyZDE3MDIzYjdhMzM2YjI0NWY3M2YwNTU5M2Q3=
ZDhkMDNlYWQwNzRmMDZkODc0ODI5YzlhYTIzNzZhNzUwY2JiNTBhMTRmNGY1OTAzNWVmNDhmMDg=
xYzU0ZTdmOWY5NGQyZjZkMzc0ZDYxOWViNzc1ODhlZmUwMmI2MGVkMmE3OWY2ZDMxMGFjNzA1Mj=
Y1OTc5NGY2OGU2ZGNiYWQyNzczZGQ3OTFmNDBjMjE5ZDhkYjAwYWM0ODFhYTllMTU3NzA5NTNm>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNjk0YzhmOTBlNjFhMTNlYTg0YTFhYTBkZWEyNzc5YTVjMTQwZjdlY2Z=
kYTE2OGUwMjgzMzQ1NGJlZmUxMmYwODI2OTMyMmZiOTEyMGZjZWFkYWFiYjk0MGQ1MzIyMjlkN2=
E0OTA3Y2U1OTZiNWQ4NmQ0MTYxNzAyODMwNGJmNTQ4YzA0ZGYxNjU2ZGI4NGM5M2JjMjJmZDU4Y=
mY4ZWY0MWFiYTk0MWUzMDMyOWI2MDkwYjkxMDNkMmEzMWM1MWFjMGMzYmZlNGEwMTFmMmNkZWM4=
OGM3OTE3NzRhMmI1ZjQ3YWQ5MjZmM2IwMjk0MDg1MjY1MDc0MWU0NDIwZjk3M2U2ZmZhYjY3ZjA=
5OGFhYWU2ZjExMmZiMzFiZWEyOGQwYTAyOWVlZjg5NDA1NjMzOGU2NGVmMTk2Y2U0ZThhNmZjMj=
JlMTVlODhjNjAwZDY4YjJjN2U3M2U2MzExMGJhNjVhZDM5ZWRhZWE1YmFmYmUxZDgyMjZhZGM5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOWM4OTlhMmNlNDUwMWQ2YmFkMWViMzM2NjBlNzA4NDBmN2QzYjZkMDI=
5OTdjMmQ5YTc5ZDg4OTYyMWQ4YTI4MWEzM2I5YmU2YTNkYjI2ODA0NmU2ZDZiM2FlZWNkNmI5NG=
FhZTZmMWRiMzlmYmZjMGU5NjIyNDJhNTZlYmI4ZWIxMGRmMjNmNTQxMDcyYzAzYmM2YTk4NTUxM=
jZhMTYxODRkNDcxYzFiMTNmYzkyOTAyNWNiMzI1YjMzOGExZjJkNjZkNmY3ODc5MTAyOWVjODBh=
NDRjYTg3OGVmYmM4ZTI0N2NkODkwMjVkMzE1Y2RkZDFjZDJiNmNmNjg0MjQyY2RkMGU0ZGExYjg=
1MjRkNTk4NzA4YjQxNWU3ZDEzZGVhZTFjMmY3YjBiMDdiNGViMzc4YzBlYjViMWFmOWY0YmMyNj=
g3ZTM0OGQyMWEwZTE5ZGE3YTdjNDdmNmM4ZjQzZmM5MGM3M2QyODM2MGZhM2MwNmVkZTdiOTUy>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNjRlZTIxNTdhMDczYTA3OWE0NzE2MTllMmI5MThmZTM0NzI1N2YxNDd=
mNjQwYmIxZTRkNjcwMTQ5NzAzMDkwNmM5YWMxNzFkZTRlOWJkMDg4YjBlMTcwZDU2NWUxOGI3OD=
diZjk5Nzk2ODRhZDUzZTZjNGUyMzgxNGYzOGUzYzQwYTllODhhMmZmOGU0OGY2YzBiZTlkNzg5Y=
zA1ODliOWU4YjgzNGMwNGZmOTFiZDUzNTlmYjg0NzdhZTY0YzI2NmFiNDVhMmUwYjA5YjE0ZTEw=
ZmYyMjE1ZGJiYmEwZTg4MzdkYzFjYTc4MTI1OGM3N2JkMmNkMmU0ZmQyM2YxMTJmZTU0NjJhOGI=
4MzY5ZTZjYWJjYTFhODlkMGYzMmUyZjM0NjQxNTcxOTgyMjM0MjgxMzg1OTczNDMyN2FjY2UyYj=
hiNWNlY2U5Y2NmYjU4YjZiNGQ3MDljOWI2YTYyZmVmZTlhYjllMTNiNzhjZjlmNTRlZWZmYmU1>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DN2Y2YjU5YWI2OTUxYjlhMzBkODhlZGIyNTk0Mzc0ZjViOGVjNmNmOWU=
xNWQ3OTA2NDg4NWQ3NjkwMWU5MDdjNGE5ZDQ1MmRhNGVhNGU1MzY3YmY1YWU2NTllYTE5MGZjOT=
JkZjk5ZDI5ODI4NGQ4YzRmNzlmYWJlMjliOGQ0ZjY5Nzg1ZTVlMDZkMjY3OTE5ZmYzZDg5Y2MwM=
mNiNDQ3MjcwNzJkMTYwNzQ5MzQ2Mzc5MjZkYjJjM2JjOWY1OTQyMjQwMTYxMDZjOGE4YWJiZTMz=
NDMxZmM2YjMzMWYzZTAxNGI2YjdmMmU3NzhhNjRhNjYzYTE5YmE0MjJhMzZkZmZkZjY5ZDlmMWF=
iODJjZmNlZjNlYWU5MDNiZDdjZjcwOWNmMzNiZTkwOGU2N2VmZWM1ZTIyZDllOWFjY2I4ZDFiND=
dkZGQwMjkwMmYzNmZmMThiOWQwNzVmMDllMzFlZGEwMDJjOWM4MTgwYzE1NGEyNjllOWQzYzc0>

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
<localhost:1333?u=3DMWUyZjRlNmIzNDdkYzRhZTA1NWU4YzQ2N2UxNzFjZTM0ZTA3ODBiNzU=
1NDExNzkxZDU2ZTQ1MWM2OWJhNTAxYzY3YzA1NjkyMDQzM2Y1NmU2NDFlNWRiMWJhMDllZTgxMz=
A2MjAxNzlmMDM1MGFiYTA1OTAyMTZkZDhmNTg4NWE4ODc5MjhiMjg5YjcwMDYzNmI5ODVkZTRjZ=
DJiZjExYjEzODlmOGQ4ODM4NTg3YmYxYzllZTNkMTBjYjFmMWI2OTdkODMxYjJjYjhmZGRjYjIy=
ODgzOTMxZWFiYTQ4MjJlOGE2NTkwNzdjNDQ2ZTM0OWVhYjAyMzNmNDdiZDA1NDFjOWU0MmJmNTg=
1MjE1OTY3Y2E1NTAwNjY2NjExM2Y0MGE3OWQ1OWNlMmEzYzNiNTFlZGM5OWMyMmJhZTJiMjE2ZD=
I1ZDA3OGUwM2RlOWQ3OTMxMjMyMmVhYTdlMWMzYWNmZWE5MGQ5YzQwMzA1N2YyMjcyZjNlYjVlN=
zNiNQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DYzVkNTUxZTVkZTRiZjFlZDRiY2E1N2QzNjkwZmU5OTIzOTc2ZjM5YjU=
yYzJkMGM0M2UyYzMyYzMwZTU1YTRlMjU0ZDgyNDE2MmMyYzRmNzY5M2I4Y2Y4YTlkZWM4NTRjMj=
EwMzI3YzYyZGM5ZmI5N2Y2OTlmNjQ2Nzk5NzM5YTMyYjFjNTliMmE2MjU0M2ZjZDQwNzc2Zjc1Z=
TJmMTU0YjM5OGY3ZGFkM2FhNzkzNGIzY2VkY2Q5ZDQ5YmI5YWM0OThmYzAxZDUyY2ZmMWI2NDg5=
OGI0ZThmMzIwZTA4NjY0YzI4OWI5OTJmNWU0N2JhYmYyYmNlMDllMWY4OGQyMTk0MzM3MGU0NTI=
xODY0YTI0MzNlMmE0YTNiZTAyZWRhOWY1M2FiZjRiYzM3OTQwOWVlOTU3ZGExNzdjZDkyNmU2NT=
NmNzkwZjc1NTdiOTAzMmYyZDVkODg2ODA4ODRkNjE0NmJiNDg5YTIxZmYyODYwZjlhMWQzMWUw>
  [image: Google Play]
<localhost:1333?u=3DMjcxNjdmMjY2YzZkNGIxOWE0Mjg4YmQ3OGJmMTRiZTkzYzBiZTJhNjQ=
4OWJkNGMzN2JjYTgyOGIxOTU0NjI1OTczYzkzZTk5ZTFkNWIxZmM2Y2FhZDBkMTMxOGJlMjMwZm=
MyNjIxZjVkNTVhMWU0ODQ1NjY5ODdhNmVjZTYwMTI1OTllZjRjMGMxMzNjMjM0ZmQxYjExYzdiY=
2MzNmI1ZGQwNjIzZDhlYjkwYTAzY2ZmZjJiZWMwZDI5NmM5ODIyYjc0MWZjOWQzNmNjMjM3YWE5=
OTgxNjRiZWI4OTEzZWE3NDJkYjg5YzVlY2YyOTMxN2RiYWVkY2Y5NjUzZjNjZDYzYTBmOTIxODU=
2N2U4MjVkZGNmZWEzZmFkNzhiZDNiNDU4ZTBhNjQwMzI4ODVmNTEzZjA2NTYyODE2YmQxMmQwMD=
cxMDQ3N2JjMmVmYTg2MDNkYzkwZGQ0OTdkNTFiODEyZGRmY2ZlNTRkNjFiYWJjMjZiOGExMmZh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DMjBlYzcyODNiZTc3MDQ1MTA2OTUwNjBiNjFhMTYyZjMyOGM0MjJlYmJ=
hNDBmMWM2M2IwNWVlMzNhY2JiM2Y5ZjQ2NGYwZGQ4MmJiZDY2N2FjZDVjYTdkYTI5ODNmOTJlYz=
EyYjlkZWIwMWM0Nzc2MWQ3MTJmZjgwOWQ0OTZhNGNiNjA4ZWRkMWMxMTA5NzY2ZTdkM2RhY2UxN=
DZmZDM4NjFiYTE5MTk2YjUyNDNhYzRjNTAzN2FmMTk2NTUyMjUwODA4M2I2NmFmNjZkOWI5MGU1=
MzgzNjdhZDg4YWUxOTZiYmU3MzZhNjFhNmQ3ZjcwMzQxNjk1Njc4NThkNjY5ZGNkMjUyYzVmOGQ=
zM2YyNjQ2NjQ1NGM5MjVmMzMxMGIyYWI5OTUzYzgyYWVlNzNlNDI1NjFkMTVmODFjYWZmMmMzZj=
M1NDAyNzM2MWQ2NGZkY2U3ODhmYmQ2ZWQyNjQ5ZTNhNDkzNmI5MjMwZGQ3NTUyYmQyYjA2YTIzY=
jljZg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DYjg0NzJkMzA5NmNkOWQ2MTJhOTA5YjllYjc3ZjIwYmEyNDJhYjg2MDU=
wMzhhZjg4NTllMWQ4ZjgwNjg1OTYxMTcwNjU2YTFlYTI3ZWVlMWQ0MWZjNTEzMjhiZTFjYTVkZm=
ZkNzRmMmU4NzJlZGY0YmNhNGJhYWRiMDlhMDZmOTc1M2E0NzhjNzkyNzFiMGYxZDM3OTJjMzJhN=
mM5MjUwMzE1ZjA5NTQ1M2E1NjQ2MWQ4NmJiY2VmYjgwZTE1YWU4ZWViYzEzZjdlZDAyY2M4NDAw=
NmZiZTQ5N2E1OGUwNTQ1NDk0OTE1NzRjOWNjZWI5MjU0MmRlZGUwNGFhNDllMzFiZDExYWQ4YTA=
zMmIyMTk2MWQxYWY3YTg1ZTVjZGVlOWZhN2E1MzE3OGU0YmM0ODM3MTMyNzNhYzE2MTFiMWQ0MG=
IzY2Y4OTFiMzcyZjczYzdlNzMxNDFjZTIyMjNiNzE0OGFhNjcxMmEwOTgzOGM1MGRmODM2MjgyN=
WM1ZA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYjUwNWFmZjA5Nzc1ZTdlZmU1ODlkYjg3MjMzY2UzN2ZkYzMwZWQ1MDM=
3NDE5ZmRiOWY1NjZlMjFjYzlkYWRiN2ZlODlmZjhiM2U3NTMwNzc2MmZlZWZjODFkNTk0ZTI4OG=
JiMzI2ZGI3OGNmYWJkZTU5NDY4OGRlY2I4NDMxOTIyMjkzNzJmNDVhMDM5ZWNlODEyZmE2MTM3M=
jUwMTQ2MWYyMjJhNGY4Mjc0ZGMyYmUxYzEzYTcxYzU5ODc3MGIxNGQ5M2I3YmNjODgzMmQyZjBl=
NTljNWJkNzQ2MWU1YWRmYTc5ODg5ZmFjYThjOTc0YzYwNmNhODVkNjYxMjYyZjcwY2Y1OTBlY2U=
0MzNhNzlkMWZlMDBmMDJkYTU0MDRmNjljMWQ1ZTkxZGU5NzRkODliMzFiNzNmN2M5MWRmMzliZW=
Y0OTM5MDI4Y2JkZjg5ODg0Nzg4MjJmMWI5ZmNmYzkyZmRjMTU4ODdhOGM4NTQ0MjU0NmFkYzY3Z=
GM0Mw=3D=3D>
   About Us
<localhost:1333?u=3DMDQyZDUyYjhkNWJkMDNkNzk2ZGE1NDE0NzZkZTU1NzVhZTMyMjJmMTY=
xYTVjMjk5ZjM3Njg5YjhkYWUzNTZjM2ViMWI2ZGE3ODNjNjU5NTcwYmI1NTY5MjYwZDlmYmU0Zj=
NmMzBhZTE4ZmZlODE5MzU3ZTJjNWJmYjAxZTcwN2NjNTg2ZjVhM2IxNWFkYzNkMGUyMjk0ODk4Z=
jFjZmVjMjNlODk1OGE1NjFiNWUxMDRiY2Y5OTYxYTUzNmMyMzJkNjcxYWVjNzhhYjkyMTc4YmU5=
MDU2NDViODBhYTQyNGIxNmU5YmUwYzY0NzQ4ODE4MmE0ZmZjYTZkYjA4OWNiYmE1NzMwYjhhYjU=
2YjUxZjU2ZTcxNDJkZDFmYjJjMTNmMzAyNmQ5YTRiYTAyYzE4NmU2MzZkYTRhNTExYzNiZjA0MW=
NjYTA1Y2EwMTQ1MGNlOWE5YzU1MGE0MjRjNDcwZTJkMDNmM2M4N2Y5ZWFhZmE1MmE5M2U2ODc2N=
jMwNw=3D=3D>
   Customer Service
<localhost:1333?u=3DZTA0ZWVmYThlYmNiZDdhOWQ4NGFmOTU5NjJjMDNhZTVhZGQyMDA4NzU=
xNTg0YTRmYzgyMGRjYmZjODExNWRjYzBhYTRjOGJlY2M4ZjBlOGFjYjAxNDY2NTk0Yzc0MjI2Mm=
M3ZmI3NTNkMGYyZmVhMTFmOTU0MDFmMjJlMTYxOWUzOWNlZjBhZjBmNWFmY2VkZjAwZjcxMjk4Z=
jA4NmQ5OTNiMzEyZGVlZTVjMWVlNjkwZjM0ZTZmOGY0YWFmZTM2NWIzZDBhMjgyZjVmZmU3YmE0=
ZjJmZGM5ODAyNDMyNGI3NjlkMzliMzNiNjA3ZTFkMjcxZGVjODQ3MDhmYThiYjA3YmI1MzM1MmQ=
xYTNkZWJjOGNjMjE3MjMzZjJhMGY5ZTM3MWI3OTBkZTdiNTQ4NjY0ODhiNzhjZmVmMjhmOWNiZD=
YxOGExMDhhYmMwYjhlNDI2OWI3N2E0NTVlZTU5MjI1MTVlYmMyNDRjOGQ5OTU1N2U5YjgyZGNkN=
ThiOQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DYTQyNThhNGY3MjY1NzljYzQ0YmU4N2I5YmRkYjUzY2U0MDMxMDg3ZDN=
lMDI3NjgzYjVlNDU2ZGM1ZDFiYzliY2NmNWUwZDA0YzdhZTRmMTM0ZTdjZGQyM2FjOGNiNjkwOD=
I4ZmU3M2Q1NDYyOTgyMmU4NTYxNjI5ZTg2ODJkODIwNWFjOWU0NGEzODYyZTNiNDRlZDI2OTMwO=
WQ1MzRjZDJiNzIzYzNkNjM3Nzg5ZWFhMTIzZGU2OGFkNTk3Zjc2ZDc1MGYxZWVkYzExMzI0MmI0=
NmI0NjdkOTkxYjAyYjg1NzUyZTE0NzllZDZmZDFjOGNhN2EyZmViMDI5ODM=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNzk3ZTA0MzNmZDg2ZThlNThhOGMwODc0OWRmOTg0NzVjMmQ5MDM5MDd=
iZGExNmY1MzFmODY3MTgyYmI1NTU1NmYxYzI2ODJiZDk5ZjdlZmZiOWEyMjI2MmU3M2U5ZjMxOT=
c1ZWJkNjk2MTEwZTc2OTAwMTcwMWVkZjBjNjdjNjMzZWVlNDJkZjA1NTlkYWY4OTg1M2E5OGRjO=
GYyOTBiMzQxMWZhYTZhODNkODY0NjUyNjdkZGVkZDVhZDJiODhmNWY5YzMwYmIxZGJjNmM4ZGEy=
MzhlYmZiOTk5OTgzM2NiMjNmY2RiYjJlMDU1NzA4NTM5YzVmYTAxMDFkN2ExZmRiMTQ4NDViZDZ=
mNWY4ODk1MGZlNWVmNGFkMzcyZDkyNTIzNGNkZmZhYTM3ZjJlNjNiMzkxMzgwM2YyMDIyNTYzN2=
U5MmZkMTExNDNlYWRkZjE1M2M3ODZkZmRjNjE4ZjM0ZTVjM2UxZjQxN2I3ZGQ0Y2I4MWM1NmI0Z=
TVlYzAxMTAxZjU4NjhjOWQ1MmU5NmEzN2E4ZjQ2MWFmNTcwYTNhOThiMTZhYTQzYzBlMmJiMmVh=
MjEyMmE=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DY2M3MjY1MDYyNmQ4ODc1=
NDBkOWEyMzQ2OTQ1NDg0ZjliNWE0NGU4ZGM3MzVjMWU1MzMzYjI1ODQ4YTVkYjk4NDVhZjhlM2I=
xYWVkZjAyOGVkYzZhNDU0YWNhYmFiMDUwNDFlODQzMjU4OTZhNzc1NGJkZjY5NDEyNDJlMmQ3M2=
QwNDAxYWJmZDUwMGNiMTE1ZTgyZTE5ZmU1MDJlMDMzNWUxMTFkMGY4YjdlMGVmMjEzODEwNDRiY=
Tg5MDVjZjI3ZWQyNzIwMzk4NjZlNjQyYTc2ZmJhZjJlNjk3MTZmNDM5MzMyMjg3NDdhY2Q0ZDll=
YzM1NzQzNjQxNWJmYWZmZjhhMTdkODU4YWY2ZThkN2Q3NDUyZmZiZDZlZDBlZTM1NTE2NzkwMGE=
3M2I3OWFhZDkwMDMxOWVmMDNiYWQwNjFjYWVjOWUwZDhmMGE4NWM1ODg3MDE2ODRiMWYxYmUxMz=
FjNzc0ODUxMzZmY2YwMWU0YTc3NTVkYzdm" target=3D"_blank">
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
?u=3DY2UwMGY2MTRhNmVhNjkxZTYzNmQ5Zjg0NzM3ODY1NDliMDI0ZDk2ZmEzNmRjMjRlMzBhMm=
Q5ZDdjNjIxZWY4NzNmOTFmMTNhOGJlZGIyZGRiMGZkZTM4NTgwNjYwN2NlMzg3MWI4ZTZhNTlmM=
WM5ODQ5MTVlMzlmMTY4M2QwMDU5NjVjNzhiYjIxYjE4ZGM1OGMzMDMwNTU5NGM1M2ZiZDZhNjg2=
MjVjMzk1OWNiYTAwZjFhOWQyNGE3YjY2ZDExOTg4YzdkZjljMjhiZjM0NWMxNDE3NzFhMzBhZjV=
mMWZjOWVmMTgxNGE3YmE1ZGViNTc2ZTgyODQ4MWZiMGM2ZWFiYjIxMzk2OWZhZjhhNzU0YjFmZm=
U0ZjNjZmJlMmNmZDlkOWRhM2VjNWE3ZDYyZThjODYwOGFkYTYxY2IzYzIzYjNjZmFjNTcxOWE3M=
mVjYTY2ZjFhZjZkNTliYTIxMjlmYTVhN2JkNzdkODJiZTBkNDY1ZWJmNWUx" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DYTBmMjViZ=
TIwZWM3MzVkMTNmNzMwZTg2Y2IzZjJmMjNhYzM1ZWU0NDUwYTAxNGIyY2U3YzQzY2ViNGViYzY2=
NzMzZDI2MzlhNWMwMmFlYjg5M2ZiNjgzYmM0YjdjZDA3MTkwMmVkNjhlMzMxZmFmODdhZjEwMzZ=
iZTk0ZjI5OGE5MjFlNTFlNmQ0ZGY4M2FhNmUzMjg3MzE4NzA3MWI3YTNkMDA3MGRjZDJhZmFjN2=
Q3YjhkMDIxYjMzODA2ZDRiMmU3YTUyNmQ3Zjc5YjBlMjQwZjI2NjEyMzM5YTk5N2ZmYzRmNGEyZ=
DAwNmQxZTExYTQyNTcxMDYzNTU5MGFjMDlmOTYwNWExZjQ4OTlkMjY2NDgyYmE1NThhNDA2MTkz=
NzRlYmVlMmNjYjI1NGJjOTgwMWViM2IxNzg2NjE0ZTE5ZGNkZjZhNjYwMTUyODZlN2JlNGViMzN=
jODlmNmM2OTZkZWVjNTQxMTBkZDNmZjE4MjZiNmMwZDA4" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DMjNmYWI=
0OWY1OWY3Njc1YjE4ZDQwMWFmMDJhMTBjMmZmNmE0NWQ1MGJlMWYyMDg0MGRjYmIwMmM0NWRlNm=
ZhMzI2M2VkOGRjNDdkYWMyYTU3M2RjZGJmYzJiMDcwNWNmMWMyYjk0MzJlNjcwZDFlZWUyMGVmY=
jhiNzZlNmE0ZTJkMTIxYWNmYWEzODdiYjFkYzQwMTBhNmFlYTE5ZjUxYmIzZTRmNWM5MmIzZjVm=
YTFmNDVkODcwYThlMjI1ZjYxNWU5ODk1ZGI3ZGYwNGVjZTFkZDQzMDVjMjRkM2I1NzU3ZTAxYWV=
lZjg3OGVkZmFlMDYwOGYxZjliNjc4ZGY2N2Y4N2NkOGViOGVhYTU3NDIxODRhNjNlZjhmNmZlM2=
Y1NTQ5Yjg3MzBjMDAwZmNlYmMyYzA5OGZkZmRjMDE5ZjQzNjdhNzY5YTUxYWIxODZmMzRmMGFiN=
GZmYmYzMDliNzk4Y2VjYjY5MGU4ZDIzZDcwY2NiNWQyNGVm" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZGE0OTBmOTdi=
MDI5ODIyNWZlZDg4ZDQzZGFiNmI3ZGFiMDBiMjMxNGYyYTk1M2QxNWZlMGQ4MjQ2ZmRhOWEzNGY=
5NGE4NGRlZTk5ZjYxYTlkN2RjYjAxZWRmMjdkMmJmOWZhMDFhNTE2MzVmNjRjYWVmZGI4Mzc3NW=
FlNjc3N2E5MzI3YjgxYWM2NmQ3ODJjOTE1ZmNlMmMwNTQzZjk0ZDJkNzMwN2E5YmI2OWY2MzFkN=
DMzMzBkNmIyNmJiYzUxZWYwZTg4YmVkNmZiYmU1YjE1YWFhNThiMWY5ZmZhYWIyYTVhNTk2NTUx=
YTY5ZWVhM2E5MTU3ZjZiYzdmN2QzMjQxYTcyNmE3NWUwNWQxMGUwNDNlNjFiN2ZmOWI1NzBkOTh=
kOTgzZGIzYzg3ZWZmMmFkMTA0OTk3YzE0NmVjNDgyMjA1OTM3NjFiMzVmYzcxNmViYWExOGIxYT=
RkZmM2N2UwYTRmOTY1MDI2Mjc1N2JkZGMzOTdjMjc2" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DODQ3ZDdkNTYzOGQ0M=
zI4OWY4MTE0ZjIxYjg5ZGExM2M4ZWFhOWUyOGNhNWE5ZTg3ZDQyMWM4N2IxZWVkZTViZjRkZGIz=
YzAwMjY3MGI5ODBmZWUxMGQ1YTA3Yjg2Y2E3ZGIyZjg1ZmM4Y2QxNTA1ZTdmYjk3MjkxYWIwMjR=
mMDBjMjBhYTU3MDM4MWUzYTYxOTVmMmE0YTQxNzRiYzJlNjg5Y2M2YzFlYWFiN2EzMjlhOWI5MT=
M0MWEyYTIzZDM4Y2ZiZjFhOWY3NmUwNDk1MTk3ZjVjYzQ0N2Y5YmYxNzE0ODdlZDY0ZTRlM2IzY=
TFkZGZhMGMxNzQ0OTFlMzA5YTQwNzIwOGQ0MGUwZDk1OTY2NGRmMWRmZWI2MDk0NDEwYThkYWYw=
Y2E3YzJhNmU1NDYwYzg0OTNjYzk3NTUwOTY0ZDY1MTM1OWI3NzUwZDFjNDZjMzExODMzM2I3OTV=
kMzIyMjVjODcxNTMxNDk1YTlkNDhkMTBjNTkz" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DYThmYjdkZDIwZ=
mY3NGE3ZTZiOGIxM2U2MjcyYTJhZTczZjkwZWZjYjUyNDhhMDBmOWViZDNjNDA0YzZiYmY5NjE4=
ZDBkNzRjODAxZmM5NjJjMDcyYjJmMjU5ZTRlMWM5YzBjMTBlN2JkMTk3Y2QxYTJkZGEyNmIxYWR=
hYzIwN2RiNTYyN2RlZTRjYzI4NGZlZmE3NDlmMzZiNjEzZTc3Y2U4NjJhODc2ZWZhMjE0MDEwNT=
g0M2M0OTJjZDY3ZDljOGZjNjBmNDQ0YTQyMzk5NWQ1NmM4YTExMTY0OTk2ODA4ZTBiNDNiNmYwZ=
DQwZTg1MzA3ODE4YTY3NjVkOGYzMjk2YmNlZmRjYjE3NTU4ZDE2MzQ5OTg2YzI3OTY0N2U5MjFi=
YTdiM2ZmMTRmZmFjNTY1Yzg3MDNkZGZkZWU5ODQ4ODBkOGM1MTY5YzVlODcxYzg5M2E2YmFhYmY=
1YmRlNDEwOWJiZGIxODI4NWEyOTU0NzYzNDU3MDM2" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DZTZhYjA=
1NmZlOTZlYTk4ZDk3YThmYTMzMWRiZWE3MmUxZDg1ODE1OWNmYTkzOTNlMDQwYTk0MTY5ZDYxOD=
dkNjdlNzllYzAzNDI2MDFlNjEyMzg2NzRiMzEwZGRkNDM1ZGY1MzdiZjY4Y2YwYzczMmNmMzVhN=
jVlYTE4YjA3N2Y2OTJhZDdjNWY0MzUxM2M0ZjU5ODkyNzRiNWUwNGExMmQwOGIwYTA4MTY3NmRl=
YzM5ODAzYTg3NjYxNjA4NzZkYmQwMWFkYmM4MTMxMjA2ZDA0YjhiMDE0Y2U1ZTRiOTNhNjc1ZTB=
kMjgyNzEzMWFiNjZiODhhNzA4YjJkMDZlOTY0MTQzYmIyYTEzMTkwNDk4MDJlYzI3OWEwYjhiOT=
AwMGVjZWQ3M2E0YzU3MzJkYmVmYjRmMzdkODdiNTkwOTJkZjM2NWI1NWVlN2FjZTc2MWM2NzdkM=
DA3NWZjYWZlMDVmNTllZDk5NWQ2ZDU1ZjJjNDA4MDM0ZmU2MmFhOA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMTJkZWJiZTJlNTdjYjlhOTYwMWZkZm=
I0NjQyMzI3ZTI4ZWUzNWViOTIxZjU4MDhjMmYzNTdkMWM3YWY3ZTE5ZjcwZTU4ZGYwZGNiNjBiN=
Dc1YmEyZGYyZGNmYTgyOTAyZWY0YTRjNzVmMjc1ZTE2Yzk2M2E0ODVjYzM4MmZkMDRkNzY2Yzkz=
NDc2NjYxYWNlZmRkNjgzN2Y3YmNkN2FjODFjZDM5NDNmN2M0NGQxNGVlMTkxNzlmMWJkNTkwNjh=
hODFkM2IxNzFhZjZmOTI0MTZlOTU4MGU1ZjVkMGU5MmFjZDZlOTVlMTEyYTU5MDIxZTk0YTQ4NT=
A5MmY2MTE4NmZmNDAwOTg0NDNjOTg2OTM0MWNiZjdhMzdkMDNkMzI1NTQ5MzIwNDdkNmEwNWM1Y=
jYwZmJiNzQzNTQxYTdhNGQ2OTM1ODY4NjMyOTRiYWEyNTMyMGU2ZjE2YzIyNGJkYjZkOGYwMTZj=
MzAwYTVjNzk4NzY3ZmMyNzQ4" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNDg4MjUxN2I0Yzc3N2I4ZDIxNzFkMG=
VkNDhlMDM3ZDBjMjk4NmYxMDk4Njc4N2M3MDFjOGQyYjIwNzgxODUwODJhNTc1OGVhYTZmYzBjZ=
WM0NDdkMTAzZTRlY2NlYWRmZTNlZWM4Y2E1NGVhOTA5MzY0M2RhMDU4OGM1ODI4OTg4NDY1ODRl=
ZmZlMzFkZmY2ZDhkMjVjOTk3ZDAwY2ViNTZlODFlZWJjNDYwMGNiNTg2ZTBmNTNkMzU3ZDI3Y2I=
yOGUyNmRhNDhmN2JmOTYxMzZiYzI3NTBiMDJiNjgyYzBlZjI3MjhkNGQwMmQzNjJiOTAzYzcxZG=
RiNjg1ZmIzOWFhYjM4NWJlYjViNzAzN2I3N2ExZDNkMzZiOWNkNWE5NjE0MTI1OGNjY2ZiZGZhO=
WI4OTA2ZTQ0MTBjZmYyOTNiMDIxOWQxZGYyM2Y3MTM2N2ZiNTY5NzljMjEyYmUwYWEwOGEzMDNh=
OTU3YWU5MGIzMTJlZGQ0OTM1" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOWJjMjQ2ZTIwYzM0=
ZjY3YTVmMTYzMDU0NjZjZjEyM2Y5NmM5NmYyZmE1MTMzNWY2M2EzMDJhZDg1ODUyNWEwNzY4NzE=
yMzI3NGE2OTgxOWIzNGQ3YTk4NjkwY2E3YTJlOTJjM2QxMjliNjhlNjVkMWY0NTJmYmI2ZDE5Nz=
FiODUxZGFlNjg0MWZjNTBiY2RhMjk1ODZlYjJkYzczZmNkZDBlYTcxZmU3ZWJhNjE5Nzk1ZTljN=
GRlNDNjY2QyM2U4MjZjODg3MzdhZWI3ZjQ0ZTdiY2NlMjk4ZGM0MzZlMDYyMmJlZjQzZWZjMjYw=
Yzk0ZDZiZmI0MDA3YjQzYjFhZDE2NTkyNWVkMmZiN2E1ZWU1Njg3MjUxM2Q4YTVhOWQ3NjAwNWR=
jYmQ4NDg3YzI2ODkxYWVhYTMwODZiOTg4NjE1ZTY0MzI3ZGM0ZThlNzAxODkyYTcwZjgxZDc2ZW=
Y4NWY0OTEwYzY1NjA1MzQ4ZWFiZjE3YmI3NGEzYjI3Yw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNTRmMmMwMmRlMWRh=
NDYzZTU4ZDgyNmM4MzY4MjUyZDM5OTUyMzFiYWU1Njc4YmUwZTY3MzljZmI4MGZlOTEzNGViNDh=
hZDFlYjNlMjFmZWQwY2YwZTYwODY1NThhMTdlZTg3OWNjMzM4M2RkMWFkZDZhMTE2OTM0YmEzYT=
VlMjZjMzhlZjcxNGM2YmZlZjBmNDBmZWUwMThkYzNmZmU4N2VjNTdjZWFjNDQ4ZTA2NzhlMzlkO=
GFmZWY5ODk2NGJlN2E3ODg1OTg5YjI4YTUyZGI0YzA4YmNmMzliMWNmZGY3ODMwMmQ2YjE0ODk0=
ODBlNGJhNTdjZjRhZmJkZWNlMTk2MWEwZGE5NTkwMmMyNzY4ZjFjYjU5MTg3MWY4ZGYzY2U0MTl=
hNGMyMDU3NGM3MWMxNWU4ODQ2MWRiNjQwZTUxNDU4MWFlZDg3ZjE4ZDBiNjgxNjQ5OTM0ZTBjYj=
JjNzllYWE5YTBiMDQ4MjRmNzkzZjNjZjQyZThkNWY2ZA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTdmN2UyYmZkMzk5=
ODcxN2ViM2FhNDA4MGU3OTkyZjBhNDQ3MjFkNzUxYjAzOGI3Mzk4OGZkMmZjOWZiYTViMTAwMDU=
2M2U2YTgzYWI3M2IxMDg2MDA3YWNkNDhmMjY3YTE5ZDNjZWQwOTA3NGNiMGY5NzVlNjJkY2VmND=
BmNGQxZDhlMTA2YzkyNzdkZDg4OWUzMmVlNTk5NDRkMDlmODFkMDg2ZGIxMTI2NzUzZTdmNjA1O=
DNmNGZlZTA0MjJkN2U1NDgwY2FlMWMzNzQ1NmM0YjA3NmVjM2NjYTI4Y2M5ZTNmMzMzOWI2NGRl=
NzYwMjU2ODIyNjUwZTUwYmZjNzYxOTlhZDE0NWU1ODdlMzQ5MTIyYTRjNmFhNDZkMDE1YjhmMGY=
xNjFmNDY4YTA5ZmNhZThmNzE0NzA5MWYwNWFkNjNkYzgzNGVjN2FhMzk0MWVjZDE2YTRmOTdlYT=
cyNDE1ZjllOTMzMWQ3M2NmOTg5M2YyMWJkZjA4MzkwYQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGI2ZTY5ZDA2ZmE4=
ZDM5OTYxYWE3MmU4NjZkNTUzMGNiZmE4YjQ3MThjNWJmZGYwMTIzOGE0ZWI4N2RlOWEyOTMzZDI=
5ZDFlODYyMTJlODc2YTgzNTNhNDMwMzEyY2Q1ZGE3YjJjZTIzZmRmZmJiZWI5MjFiNTgwYzdjZG=
I3ZTJmYWI0NzBiNzBlNjc4ZWU5ZjU2YzNhYmRlY2VmZWU3ZDg4ZDRkODU0Yzk0MGFlNDg4NzQxN=
jRkYWMzMDAxN2I3OGVhMTZjNWRhNzdjOTI4N2FjMzBmMTgxYzgyNWM3ZDg3YmNiOGJhNmYxMmFm=
ZmYxYzRjMjYyZWFlMTRmYWEyMzYwODdkOTg5MGMxNTE3YzNmMjM3NWI2OTBiNzcwZWI1NDRlMDZ=
mMjk1NDRmZTc4OWE2MTIxYjRkMjBiM2NmZjE0YzcxMzI5MDdmM2Y2NDc0YjUwMTc1NGRlY2JlY2=
RkNWNlOTk2YTU5MzIyZjM2NGNjYjQ1MDEyMGQ2ZjhjMA=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTE4YzRmNzE4OWM5Nz=
E3ODFhYzJlZjBmOTczOTBmM2ExNTQ4MjljZDI4YjVjMzMwNmRjYjVkNWUzZDEzNjNlNGEwZGI2M=
Dg1N2UzOTEyMTAxMjY0MzM4MzhiYTFkMmRjNDAzY2Q3MmVkNTFmZWRiYjIyNjgxYjYzMGY0MDkx=
NWEzOWFlMDUyMmRjZTEzNzhlZjI5OTJlN2U1MzQzZjNjNWIxM2UyYjhjMGE5OTUzYjYzY2YwZTA=
zNzU0ZmE4MGYwNDY1YTM2NTNmM2MxZjU3MDNkNWFkNTU5NWIyNjVkYWEzOGIyMTdmZjUxMTI4Zj=
c2Njk1YWE3ZDQ0YjVkYTIzYWUxNmMyMzY1ZDZiMWE0Y2YxZDFiNDc5YmI0OGVjNmRlYjhjYjc2M=
WZmODI3Mzg3MmUzYzUwMzhkYmE4NDJhNDBiODI3YmJjOWEzNGQwNWFmZGRmZTU2MDhkNGQ2Yjgz=
MjE3Mzk4MzI1MWY0ZGNhOTEzNjJiZTgxMTE4OWQ2OA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DOGY3N2U0ODA5ZjA1=
ZWRmY2IyMjg4ODQ3Zjc4NTgwMzM3ZDFmMGVmZjgzMWFkZDg0NzIyYTI3YWMxOTZiNjJlYWRmMGU=
5ZjJiMjUzZTBlODY1ZjViN2VhMGQ1YWUzYTM0NDc3YzkyZjk1MjUyMWRiMjg4NWUyMzhiOGJhNG=
NhN2M1YzI4NzFlMzkwMjcyMzJhNzA5OGJhYzVkNWQ4YWJjMmZjNTAxOWY3N2EyODM1Njg3MGM3N=
DA0ZGM1ZDcxMTNiMzJkYzg4ZGUyM2VjNGFkM2E4ODBmMDY5ZTEzNmNjMzVjMGQ4ZDVkNmRhYzkw=
MWMyMGI2ODRlN2YxYTBkNzY=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DZjQ5Njc1MGM5NjIyM2ViZGE2YTRiYTdmNTgyM=
GU2NWMyNjg2MjQ4MDAwYWRlYjg5YTA0YTQyNzQyMDc1ZWFmYmI5NDRiNDFjYTdiMGFkNmU2ZjBh=
ZjlkN2M0ZDQ0MjY1OTAzNzdhZTA5MzAzY2NjYjVlYmViYjgwYTZjZmU1OTA1ODE5ZjAwODdjZmJ=
mNmZjOWI1MzNlYjAzMDU5NGNjZWExNzUyODAwZDc5MjcxYjVlMTcwODE5MzJmZmM4YTZjNjU4ZD=
ZmNDM5NWJmODBiMjA4OGQyYjQ2MWM0NzNmMzBkYjk4ZDkxZTY1YWZiODRkMWE5YmY3YzQxM2IyZ=
TE2Y2I1OWMzOWI1OTY5MTIwMjgyODNhYzA0YjRlYmEwOGEyMTMxYzcwMTJiYjM1MzRhNzBjMWRl=
MmJhYTI0YjYyYWI0NTU0M2ZiODMyYjM2YzMxZDRhYWNkMDBhNmRiNTE3NzZlYjcxNDFjMmU4MWE=
4ODEyMjhjMTVmMDJiN2RkZjcxNTAyZGIxMGQ2OTA3N2M5ZGE1NjMwZTgwZWNiN2JkYTgyODFkZj=
g2ZmVmZTQ5M2VkOGFkYjRlM2M=3D" style=3D"font-size:12px;line-height:134%;font=
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
