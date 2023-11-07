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
From: localhost:1333?u=3DMzdiODY0M2ZiNDA1YTEzZjNmODQ4ZWM3MmY2NmJmNDQxOGRlYT=
JkZmZmMjE2MWU2ZmI4Y2RlNDRhOGM3MjYxZGQ2ODRjZTBlNDVjZDZj <mail@eg.expedia.com=
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
<localhost:1333?u=3DM2M0OWFjZmE3YzJiZTZkOTY0Y2E5YmQ3NjUxYWI4OTg2NjhiM2Y0OGV=
iNzFmNzM3YTllOGZlNzM3MmFkMmNhY2IyMTU4YmFjZjM3NmQ3Mjk4YjQ3ZThiZmMzNTAxMWRkZT=
YyZGE3YTYwN2NmNTVhODQ0YzE1Yjc5YzdlMGM3NDczOGU5ZGQ0ZWRhNTAxMzRlMmRlZWQ4MjU1M=
mY3MDQzYzY3ODFmZTA2NTA0YTA0ZjBlMmM5M2E1NzgyYWUwOWIyNzM4YjFmNmRhYjA0ODBmNTMz=
NjhjYjkyN2YyMjllZmRkZTRhYmMyNjgyNzgzMWViYWFhYzQ1ZDBlYmFlMWY0YjI3NDM0YTY5Y2U=
0YzJjMzE2NDE1YjNkNDBhNzNjZjlhODNiYTY3N2I5YTNmYmEwM2FmOTdlZjgwNWE5ZGQ1YTY5ZD=
lmZDI2NTI3ZTJkYzEyMmZiYjU1MmQyNzY4ZTY1NDg4YWUyNjhmNjVkY2E0ZTZlZGYzNmY1YTE2>

* The Travel Edit
<localhost:1333?u=3DNTE3YzkzMjI2MzFiZWYxMGQ2ZTM1ZGY2MTExYjUxZmZiMGQ1YjEyMzk=
yZWJkMjhiOTNkNzJiNTBiYTczMDJhOGY0MDU2MjExNDcxMjNhYzUwZDM2YjVhYTEyMTAxZjMwZG=
MzODNjODcxMmM5ZWVmNzEyNjZmNzhjZmRlYmM5YzY0NDcxNTkwOThiMDk1OGE3MjJkNWU5NzI4Y=
mJhNTMzYTFmNDQ1ODg0NTE0ZGQ3MzIwMDIxM2JlNDUzNDdjMGMzYTYxNjk3NDVkOTdkZGE3YTFk=
NTU0MGI0NzFhMDY2ZmEyYzVlNTliZTI5MmQ3MWEzY2I3MjM3OWVhNDU5OTRiN2VmODVmOTI3MzY=
wMzc2Mjc2ODk4MDY5NDRmNzVkZDgzYTJmNzk5YjQ1Yzk0ZGVjMTljYjRhMDRjMzYyMjk2NzIwOD=
MzZmY0OGU5YjJiMGYxODhkYTcwNGRjOTViNGU2MjM1NDVjMjdlM2MzZmE3MjRkNDZjZDE0ZDRk>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZTFiODZlMDM5YjUxZGFlY2Q4NzdiMzQzZDIxOTg5NjZjY2M3OWNjZDN=
hYzYzOWM2MGZkYWQxOWMwMzY3Y2UwYTNlNTNlMzM1OTUwZWE4N2I3ODJhZWVjYzUzZTIyZTkwZj=
NhNTNlZWVlOWViYTk4YmQ4Y2Q0MmE3MjZiZGI3ZGYxNTVhNzBlMDY1ZWEyZDg3YjIxODlkODFlM=
zNiNjU3MGE5YjVlMTg2NDkxY2QyYmM5YWQyNDZlMGM3ZWNmMmU3MTdiYjA2NWYyMTVlM2JiYzFk=
YzNiNWExYjI1MjhmMDM3MTYyZDExYTZhMzJlYjc4NGZkZjYwM2ZmYWRkMWY0ZTMwNDEzY2JlYWJ=
kNTlhNjQzZmE5YWM2MWZkMDA2ZjQzYzQ3ZWI5ZmM3ODQwNTc2MzgzNmMwMTkxZWFmNzNiMGUyYz=
c0NDNiN2Q0MjJlMzRhOWQ2NWEyNzVmZDNjY2ExNmExMDUwY2FjYzA5OWQzODEzZWUyZWZkMWVm>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNGRmOTgzMDhjNTJhMWU4MTJiM2U3NjA1NDJlMGRjYWQxZDMyYTM0NzN=
lN2E4ZDBmNDcxZTM0ODBiNjFkZmIzYWEzZmQ5NzI0NGY2MmEzYWU0ZGJlMjI2NjQ3M2JiYWI0YT=
Q1MGU5MjNhMjFkMjI4ODgxZTkzMGE0NTQ2NjMyOWU5ZTVlNzI4ZTc5ZjBjOWVjZTAxZDM1MDJkM=
zlkZmFhNTFkNzJhZjk2ODVkZDhhZTlhNzU4MmE5OTI3NDRhM2Q3NmI0N2E5MmRlZTJiNzgxNmM2=
ODY1MjYxZTIxZGQxYzI4NTMxNDg2NmVmNWQ5M2VjMTdhOGViMmM4ZjY4YWU0NzY5M2YyNDMyNjM=
xMjEwNjAwMWU2NGE0YzgwMjIzZTQzODRiYWQ3ZDM3N2YyNThmYWJlYzhiZjE1MzAyY2E5N2ExND=
AyYzNiZTQwOWUzZDJjMDA3M2Y5NDgzMmI3NzY0Y2FiN2JhZmM1NWM3MGE2ZWVlMzhiNTFhNjM5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMjJiZWViOTQ5YmM2YWU0ZmYxOWMwODYyNzhmODcwODFjYjljY2JmODk=
4ZmY0ZjJhMWMzN2QwMWFmN2U0MjRiYmUyNjRmOWJkZjI1NDZiNWRkODk2NzAwNjNkZGM0OGNkYj=
k5ZTk2NDE0ZTc4YmJiY2I3NTgxMjVhM2ViN2Y5ZGM1N2QzY2VhYWIyYjIyYzUwOTcyMDFmNDAyN=
mYwOWNlYjUzODBmZThjMTkwMGJmYWUwYjIxYzY1NjY4N2RhM2I0OTFiN2EyMDU2MTM0NmM5OWMw=
MzcxYTRlM2FmYzYxMjA2N2ZkZDcwYjMwMzE5NTFjNmU0YWYxOGEwNDQwMTQzOTY4ZDUzNDIyOWM=
wZTViZGEwOTQ5OTA2ODhmMjlmODUxMjI5NmUzOTEzNjNiZmRhZTEzNzVkYjAyOWY3Y2M1MDcyNW=
U0MTNmN2UzNmE4ZGVmZmUwNmYzNTIxMmFhNDNhZWQzNDBjNmYxZTU3MzJjZGVkZGMxNDQwZWQw>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYzE1MmQyOTEwZTJlNWEzOGVmZWE2ZWNlMTM4NGE2NDE5MzcxOTBmOTl=
jNTllNDEzYmVlZjBlNmU4NzdkZjQxY2Q1NTQwODYwMjE3MDRhNWFmNTcyN2NlYmMxMjc4N2JhZm=
E4ZmEwOWE3NTBhZjg2ODUwMWY0ZDQ4YTRiOWM2Y2UyYzEwYzA0MGIzMjFiZjRmNTczZDBhN2Y0M=
WM2YmY0OTI2ODMyMGQzODQyNDE4MGJiOTRmM2M0YmNmOTM5OGZlMzZmZWExMDUzMjk2YzhmM2Rm=
MDY4Y2Y0MTM4ZjlmZTNhYWUwMTA4ODAzMTcxZjIzMTU3ODE5NjEwYjg4NmU0NmI2NTk1OTQ0MTI=
5YTYwYWNjMGQ1MjkzMzEyMGE1ZDQ0ODU5ZDQ3OTQ5MTdkZDMwYjI0Nzc3YjFhYjQwMGM4NzgwZj=
ZhMjU2NGYyNmU0ZTY4NWRjMjY1Y2QxMDk4ZGQxNmY0NDZlYmIxZjNkYWVkYmZjZDQyMjllZTNi>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNjQxZDI5ZjA1YTNmZWUxMTI3YmRmZTZiMTc3MzYxMmI5YzRhMzUwNDZ=
hNWRjNjVmN2Q4MzQyOGJkNTIzMTZkM2E2N2Q3YjlhMTQ2Mzg1MzkzZDlkMDAzYTc0NjFkMzRmOG=
NlNTk1NDNlOTU2MDI0YTM4ZDI1Zjc1MGJjYTA3ZDY5YWJkNDlkNWU4OWY3ZWRmZTdkMjgxNGEyN=
zc5YzUxYWZmNzUyYzhhYjcyNDc0MWJmYWZhOWMxMWNkYjY3OWVlMzBiZTNjMGQ2MzczYWQ4YjM4=
MjEzYWE4YWFiOTIxZDc3NDgwZGZiOWY1NmM5ZjY4MzgxZTBiNzhmZjViYTczOGQ2YTYzMjY4ZmN=
kMTIwNjA3OTk5MWZhYjk2Yzg0ZTI4MjFlODEwZWVkYTdhNzI0NDZhMjEzNWU0MjNkNTg0ZTg2Yj=
E0NjFlYWQ0MzI2YWJmYTI4MWEwMWU3NDViZGQzYjA0OGZmY2Q1NWIyNTQ0NWY5NDU1N2Y3ZjUz>

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
<localhost:1333?u=3DNjg2OGQxYTBkNmViNzc4OTU0NDVhMTViYjZjZTcyNDg0YjhiMWYwNjd=
kM2U4NjdiMjc4MDc1NTA1MGYxYzMwZDRmYjlkMGViNDcyMzhiYzY0YWU4YWIxODdkN2Y0NDU3OG=
Q2ZTEwZTVkYTcxNWJjNjgzZjExZGUzNDgzMDJlNWNiYjE2YTFkZDJkZjE4MGU0ZWViZmJkMTI0O=
GIyN2NhOWU0YzM0ODIxYTkyODYyNjEyOWE2MTk5Y2UzY2Y3MWUyMGYwMDdjZjY2NTdlZDJkNGQ4=
ODYxNGZhZjQzMjAzODcxMjQwNzcxNTk0YTc2NTAxY2Q1ZmQzYzc3NmIyMDQ1M2ZhYTI1MDhiNWY=
5ZjAwNmNmMDc0YmMzNjY4MjE4ZDU5NzBjMjEwNWJkY2UwNTkwNTM4NWI2NzAwYzYyODgzNmMyMm=
UzNGNjNzdlOTIxYmI3MmU0NGE0YWFhM2VkYzUwNGIyMmEyZTI4OGQ5MDE2NzM3NWQ5MGYzZDgwZ=
DZkYg=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DOWZhMGJjZjA3NzQ5MGEyZjA4OGRmZWZmZWQ0M2FmZDcwOGFjYTFjYmZ=
jOTdmYzIwZmRjYTI0YmQ1NmFlZTE4Yjk5ZTk5ZTUzZDIzZTcyMDIzNTgyZTE4ZThlM2Y3NGZiOG=
Y5MzY5YzU0MzMxNTAyMDA2NjE3NjMyZjZjNjkyYmFkODhjMzE4MzgwZGFjM2ZhN2QwOTZhZjM4N=
DBhM2RhOTczZmRmOGViYWY3M2M1OGQ1Y2YzOTU1MTlmNzRhMzA4N2ZjODY1ODE3YTY2MjdkZDIy=
OWU1MzQxOGI5YTlmNjIyMjZiNTVjMzQxNzgyZWFlMjY1NWRiZTBjNWRmMzIzMTI3OWJlNDNiZDU=
xOGMyZjQ1NWQ3NTcxMGZmZmVlZDRjNzg4OTAyZDc3ZmI5MzY2NTUzOWNlN2E3ZGM3Njk2MGY1OT=
hiNTUyNTI4OWI4NjViZDJhODMwOWYxM2ZiM2FmYWMzMjZiNDJjNWY0MjdlNmQ0NmUzMzQxMzY3>
  [image: Google Play]
<localhost:1333?u=3DODQzMzhiMmNjMGE2MmRlMDQwM2NhNDAyOGFkYTgwMjNmOGMwYmM1Y2F=
kMGUyOTBmOGMzNGNiZmQ5ZjM3NzA1ZGI0ZDM5ZTdlYzg4ZDQ4NTQ4MjNhZTU3YzdlZGYxODM3MD=
g2YzI4ZTNkOTYzM2MwMWNhN2EzZWYwMjY3MGI5N2UwZGI2MzJiNTU2MjhhZTRmNTA3Y2MzZmIxM=
GZmNmQ5NDAwOWNhNTY3YjE0NjY5MjRhNmVkNjdlMmM0NjJjZGI5MjIzMWVjOGU5ZDJlZDdkNWM5=
YTlkZGRmMjE1MzA4NGYwZjE1ZThjYWVkYTNiNTU4ZWZjYzlhMzVlZWU1Mjc4ODZiZGIyN2VlYzU=
0ZTM1NWZlYzJhN2Q5MGFhM2M4ZDBkMmM0OTZkNDAyZDcxYzVhNjY2MzlkYjJkZDFhZDZhMzg3YW=
U2N2UwNjRlYjM2ZWJmODg0NGRiMTUzMDJhYTdlM2U2NTFlMDU1YjgzZTFmMjg2M2MwMTFkNzBm>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNGE5Yjc0ZDA4ZGI1ZjYwZDRmMGVkZmY4MmUyNGNkMTExZjU5ZGYzNWE=
yOTM5ZTE1NWFiYjdiNTdhOTZiMzY4MGQyY2JhY2Q0ZGE0MjVjZGI1N2ZhOGZmMmM5NTAxOTU5OW=
ZmMzQzMDk0YmRkMzI1OTczMGEwY2VkNDBiMzZkY2U1NDUwNzkzNzQzYTM3MDBlOWFlZTRmOGE3Y=
WMwZjhiOWFhZmM4ODM5MjIyMTc3ODJjODQ2ODFhNDU5ODBjYzA1ZTRmZmE3ZDdmMDlhYzU0NTNj=
MjZkZThmZGYxZDRjZjE5Zjk3YWViN2JhY2Y2N2Y1OTE5Mzk4MWJmZWNlZDgzM2I0MzA4NGYwMWQ=
xMjgyZDI2YTIwZWRhZWZjZWVjNjEwNjgwYWE1MzZmOTJlZTY0MWVlNDQ4NzU5MTRkMjRhNDlmNz=
liZjUyYmE2ZTY3OTMzMDZjN2ViNWY1YThiNzcwNmNkZjRkYTgzNDU1YjkyYzA1OWU1MDk4NTczO=
WRkNw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZTQwY2Q5ZmQ3ZTY2M2NlMWM5OTIwZDVkMzE5ZGZlMjYxNjkwNzM0YTl=
iNTg0OWQ3NTg0M2VmNmNkNzg5ODA3YWU5OWE5YmRkMTVlZjRhMjJmYmYyYjdmMWYxNWUxMmI5OT=
ZkOWQ1ZDIzZmFhMzdiZGJiYWU3NGU0MjY3YTU3NDVmYTBjZmU0MDdjN2ViZmE0NzFhYTI2NTU5N=
GNiYWZkOWI2YmY1MDNhNTI0YjBmYzViMjk3NTMxYzk5Y2Y0ZmEzMzY3NWFlZDg0ZGNkY2I4NTYz=
NjUxYjlmY2YwNmY0YWM5ZGY1NzYwMjkwYTVhNTkxYmMyYzgyYTFiYWMyZjM5ODEyOTMwZjAwYzB=
iNDdhMDMzMjIyMWNkNzc1YmJiNjQ0NjdhZjQ4ODFkN2JmZTdlYjI1NmY2NTViMzhlMTM2YmNmMm=
VhMDEyMjA3OGI5Mzc0NTNhYjVkOTc2OGZjMzAwMTRkMzJkZDA1ODI2YjJkNGZiY2UyYmY4ZjhkN=
WJmZQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMzcwYWEyOTk5MWZmM2Q5MDc1MWRjZjFjZWMzYmQxOTQzZGE2NDNmMTE=
1ZjVmMmJmMGFmZDhhYjE5MzYxMjY2OGI5MGY4MTI3ODJiNTgzYjE3MDY0ZjQzOWUwYTdkNDE3ZT=
AwY2Y4ZGY5NTA0ZmY5OTE4M2U3ZGNhZWU0ZjFiNDgzMTliZTE0OTVjOGJkZWExZWU1NzliMTBlY=
jk2MzMyMDg4Y2ZjMjIxYjY2N2JjN2M0YWZmYjM4YTc1NTU4NjM2ZDZhOWIzZGRkOTU3N2JiMjEy=
NGU2MWRkOTg4NTFlODQxOTZmYWIxNGJjNDE2ZTlmYzE3ZmRlZWRmYjNlNTZhOTY0NTZmYmEzN2Z=
hNzJlMDI4NjhiMDRlN2RmZjJkZGQ5OTY4ZjQxNzJlYjFiZjI0NmRlOGIyYjQxZTU2ZTAzZTcxNz=
U2ZGY4ZmFiOTNkZDZmZDlkYTIxZDE5NDk5NWZiN2E4Y2E4OWRhMGUwZWYwNDNkOGJiZmYzMGM2N=
GI4ZA=3D=3D>
   About Us
<localhost:1333?u=3DNTljZTc0YTI3YjNhMGNjN2Q5MTdhMTU2ODI4ZmE5ZDUxZmYxZjVlNWR=
kZjk1MjlkMjJlYjg2ZWM4M2NkOWU0Nzk1NWM4OGM1NzhlODU3MmYzOTQ2OWNlZWY1YTM5NmVhOW=
UwNjFlOTNkNWFiZjEwMWQyMThlOTlhYWVkYWQ4NDg4MjEwNjM4Y2I1MTIxMmFmZTFiZGIyZDgwY=
WU0ZWM1MzBhM2I4MjMzMDQ1YmIwNWJiMTU3YjQyYzljOWYxN2YzY2JiY2MyNTk0N2YzZWEyNmUx=
MjlmODk1NWZiMmVjZGU2YzUxYjg4MWFmZWU5MGViOWUxMzVlYzY3ZjhlMWI5NWE1NTY5YjQzYTF=
hOTJhOWQ1ZTYzNDIxYjY3ZWUxMzY1MjQzZGEyMGYwNmFmNjAzYjhhNWUwZWYwOTEyMDNjY2E4ZD=
E0MTBhYzEzNzEzNGI4NTAwOGNjODIzOTBmNWEwNDIxYWJjY2E3MTFmYWQ4Mzk5YzI5ZjQ4ODhhZ=
GE5Mg=3D=3D>
   Customer Service
<localhost:1333?u=3DM2Y1MjA4NGYwZTY2NDczMWEwMmUxMjI5ZmRlZWYxZDVlMjI2ODQ2NjM=
yZmY2MTYwMTVmYTE2MTk0NTAyMGIxNjM0MGRkYTk0NDVmMjgyNjkxNGI5NDM0ZTRlM2M4NjVkND=
c5ZTZlYTQyMmVmNTdmYTJkZGI3MzkwYjcwMzNlYzhhYWQ3NzMwYjM1NmEwNzdiZWRiYzY2M2FjZ=
WE5OWMzMTE1MWFlZGQ1YjkyZDZjMGYyZjJlYWYyN2U0MDdkZTRlYzk4NWRkZmViOGJhZTgxMzIx=
YzViYjQ3MjI5ZTM1ZWRkYzU3MWRmMTBkODgxM2NjM2U3ZWU0Zjk4ODg4OTk1NmI5ZGJhZTNmZGV=
jOWQ4ODhkZDEyNGFjNDFkMzA1YmU1NWY3NTM4YWJlNmVlMTc0NDZkMDliZGUzZDA2NTIxODM2Mz=
VlODYzZDhhMmQ3ZWQ5NjkwNTAwYWI1MmEzN2ZjZDk5NTllNWEyOGMxNjg1ZTc5OTA0YWE4NmNkY=
2FhOQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMDA5ZTkwNGY0YzAwNzE5MzU3NjIyNTU2OTZlOTBhNzg0Mjk5MmY1NmQ=
1NzEyNWM2NGQ5NjY3ZjY1NTAzMTljNWJmMDU4MzlmYzk0ODNiNmI5Y2VhZDI2ZTRlN2U4ZDNlZj=
k2MTg2MDUwYWMyNjc0MjQ2Yzk0OGJkNTk4NTZhYjYyMTI0YmEzOWNlNDVjOGU1OTY0ODA5ZDM3M=
TkxZGJkNDhmYzRiNTdmZWU2NWJlZTRjNmM0ODZkMDE4ZjZjNTk3N2NlOTExNDFiMGI2NTQ4OWEy=
YmE0YWNlYzAxZjc5NDY0ZmM4ZjM1YmI1ZmM5ZTgzZmZhNTc2MWI4Yjc3YjY=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNDM1NDMwMmUxNDg3YWZjNzg1ODI4NjFmODRjOWFkYmE2MTk1N2NlZDM=
4MzIwMzhjMzAzZjQwMjcwNmIxZWYxY2Y0MTI3NWFjMmVkMWFiNWFjMDJhNTZkNmZkMDBlNzFmYT=
A1OTU5Yjg0NDJmZjcxYWEwYzM4MjkwYTkwYTg0MjJhNzA5MGIwMmU5YmMxZjUxN2JmNmQ1MTdkY=
WJhMmExOGUwMzA0ODg0Njc4YWYwNGFlZTc2NzM0NTg2OTdjMGIyYzRkOWQxZjAwODk0YWU5ODYy=
OWU2OTczMDEzNmE3N2MzYWFiNjYwODEzNDE5NmQ3MDk0NjI4ZTgyZDk0MmYyNTBhZmNkMDY5NDF=
jODg0MjI4Nzg4NjliYWRmODhhOWM3MTM4OGJmMjhmNmVlOGI3MzBmODE1ZDZiODAxMGFhNTU1N2=
I3ZTMyNTJiYjRmYmJjYmRjZjIyY2M1Y2EyNjBmMWVkNGFmNTk4NWM3OGNiNjU3NGNmMzAxNjNlM=
DAwNmI0MWVjOWI4NTdmZjM1YmRlZGNjNzQwYTg0Y2MzMTk4ZjJmMDgxNmJmY2Y5NjM2NjY2Zjc0=
NzE5Mzg=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZmMzOWQzMTc0NTkzODE0=
ZDhiOTJjYjFkMzFmZTM2YjY0OWVhODcyMmQ5ZTRlMTEyYmE3MTg0MzI3NjFjM2JhNWE5ZDUyOTM=
3MWI0ZmY4MWM1OGI0ZjUzNWYwNjlkOTcwNzFmMjYwYTM1YjgzNWQwMTQyNjA3NjYwNTQzNzQ3ZD=
IwMGI0N2E0NzI1OTk3OTA4N2YwMGU1M2ZmZGYyZjMwZDYzNWI2OWY0NGZlZWUzZGQxMzgyMzQxY=
TJlYWNjODhlY2Q2NDdiZTUzNTQ4Yjc0ZTg4ODJkYTE3MjIyNzNkYmY0MzgwY2Y2MDk1MDAzNWVj=
ZTZmOGJhMDdkYjQ2Zjc3YjgyN2Y0ZjI0NWY2OWFjZjE3ZTUyZTc2NDE5MzI3MzFkZmMyNzVkMjJ=
kOGY5NDcyOWQwY2Q3NWIyNmEwMTIwMDZmNmU0ODU3ZmEyNzA1M2NlNzMwYWIzZDM5NjRmOTk3NG=
Q5N2NmNjRmMWNjZDU3ZTgxYWQ0NmVlMzBh" target=3D"_blank">
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
?u=3DNjM5OWY0MDFmYjA3Njk4ZWY4YzU4MDc1YTUwMzcxMjAzNGExZDA4YjA3NTc5OWE2M2ZlMj=
M0MzAxNjVhOWNkYmE0OTg0YzQ0ZDBkY2Y1NzdjZmE1MGZjZGQ1ZmI4ZmM1Y2QzMTFiZjczZGE1N=
GEzODg3NGQ2NmZkOWZkNTliMDg0ODkzYTZhMjNmZTU3OTFkZmFjYTgzMTU3ZTM0NzRkMmU1NTc5=
MzU5YjFkNTA1MGJlMGNmN2M3ZDkxY2U5ZGY1OWQwNmY4NGNlMjI3ODYwZmQyMDZhZjg4NjFjNDE=
1MjYwZmI3ZTcwNWM2OTNlN2JiYTA0MTBkMmEzMGU5ZTUzODAxYmM1YjA3YzU4OWI0ZWI2ZDU1OD=
E0MGQ4NTk4ZmQ5OTdjZDFlNGQ1YmY4MmNjYWVkM2I5YTIzMTRmYjQ1MzdhYjlmZDcxODU1MzlhZ=
jJlYmUyNjZkZWE1N2RhYjc0Zjg5NTU4ZDg1NTc3MzUzNzAyZTI4OWVhZWUy" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DY2Y2MDQzY=
2I5MmQxZjkyYWM2Y2U1ZmIwYWMwYTE1MzJkMTFmODUxNDc5MDU5ODkwMWI2NTM0YjVlNjc3ODk2=
M2NmY2ZmMGJjYmUwMDU1YzFkNzgyMjM3MzdjOTkwNjk0ODYyMjJjMTM1ZTQ4ZDI3MDgzZGZhMTZ=
hOTk1Njg3NThiNzBhOTE1YzM3NmJlMDM4M2RjMGEyNTJjZTUwYjdkYWEwZmYxMjg5OGMyYmZkN2=
Q1ZjZlMDE3N2ZhMDgwNjAzOWE0YTQyYTFiNmE5MDM3MjhkNDRkMDQxODVlMWQxODY2NzkxMjdhO=
WZkZGIyNWIwYWZmMjc2NjE4ZDhkMzJhNDdiYTNiMTUyMDBjY2FiNWMyMjhjNDdiZmNkZWQ0OTc0=
ZTExM2NhMmRjNzI5OWQyMzkzOTg0NTgzNDUyMzZhNThiM2NjMzFmNTFkZjdlYzRlMDU2NGQwMDA=
wYTY5ZTI0OGU2NDIxMmYxNGJhNjNiZThlZmI3YzUxNzIz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZDVmNGN=
hY2QxY2VlMjYxZDljZTI2MmJlMjgxYmIyMWJmNDczMjU5MGU1MWJmYjQ5MmY1ZDMyZTk1ZTcwM2=
Y4MzIzOTIyNWNmNTUwM2M3MDlkMDc3Yzk0MTA0YTIzN2Q4YTg5YjA1ZjFiMWE1ZDA1ZjY3MGIyN=
zc0YzM3YTgyYmM0OWQxMjg2MzI3YTQ2ZWMwMGVkNGRmZDc3NDQ3YTc1MDU3MzVmZGNkOWNmODMy=
Nzg5NzczNjk4OTE3ZDY3NDdhZjI3NTIyODE3ZTNmOGEwMjM2OGM0ZWVlY2QxOGM0NWU1YWZlYWQ=
4MDMwNDI5MTQ3ZDAwMzlhNDc2NDZiNWVhODBhZWQwMTk1ZmJhYjZkOGQ0NjliMWNlODY1NDllNT=
Y1NWM1ZWEwMWQzMTBlNTFmOTZlYzdlYjEyMjNiMTg3MDczZjRiYzUxNmY1ZWRiMWZiYTNmM2E5N=
jlhMzMxNzM3Yzc3NmY3MTE3ZWZmZmIyZmU5MTEwNDhjNzlm" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNWJmY2Y0MjEz=
Y2M0YjNjNDRhNDYxM2RiYzlkZGU4OGYzNTAwOGNkZmFkZDhmODY3OTcyZDcyMTcwNWNkOGExMGY=
wZWNlOTRjMDU1ODBiZTYyMWQwNWUwYTY0ODFkOWFlMjJmMWQ0MmYyNTA0ZjY5MjJjZjZlMjJhYm=
VjMGFlMDVkMzcwNDg2YzliZTAxMGY1NmRiMDQzZTgyMTU1ZmMzOWMxNTk2MDc3NTY1YmU3YmYzO=
WJlOGE0NjkxZjU5YWY1YWU0MGMyODNmNjEwM2NhZTRkOTg2NjljN2Y4ZDUzNTNhMTRmMDg1ODA0=
NjFlMWQ1MzQwYjg3M2RlMjhhMzZlMWQxNjZkZTZlNzBlNmUzYTBlMTIwNmNhNGU2MzhjYTI4MGI=
yZmMzYWRhZWU0ZWU1ZDE1NWVhZTUzNjNmZjBkZmI5Nzk4NTI5NzI0OTJjOWY1MjUyMDk4ZDc2MD=
ExMTk2NjcwMzc0YTQ1Y2JkZGNhNGJhM2FkNzIwMTEw" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMDk4OWNhYzczODM0N=
TdiZmM3NWM3NTY0OTMwNjY4M2M4YmQ0MDM0NmExZTE0Y2M0OGU5N2E2NDA5YjdkMDQyYTc1ZWQ1=
ZTBkMGFkMmM4ODQ4NDBkNjVhMjZjMTU0MThiOTRjOGM4ZDI4MzJmZjY4MmM3NGMxYjQxMTdlM2M=
5Y2FhYTYzNzQ5OTBmYjA2MjVmYzgxNmVhMmI2Mzg5NWZjZWJkYmI4YmExMTc2ZGVmM2VmMTA4NT=
gwYjIzYTRjZDM4MDU5ZTdkMmIzNGZhZTdkMTQ1OGQ0ZTVhYzljYmJkYzkwNDQyMWI5Mjc0MzQ2M=
GRmMDk0YjBmYzY4NTg0NjEzNTI4ODFkOThiNTdiYWE0M2MxZGEwYWI2MWRjYTViZDU2MGU1NWY4=
YTQxNGVkZmE1NzNlYTExYmUzYWIzNGFjZjg0NTE1OWY3MTc0YTY1ZTBhMWNiMzQ0ZWM0ZjdjMTg=
2Nzg4MDc5YTE3MWRjYzk4ZmY1YjIzMWMwMDYy" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DODA4OGI4NWFhN=
mUyMzlmYTJmYmU1NzlkYTZmM2Q2MDFhOWIwY2QxZDE0Zjg1MGZkZjFlOGUzMWY2ZjEwNThjNzRi=
NDI3Yjg0YjZjMjg0MTJlNzEwNjQxMTVjMjA0YTAwOTBjZjQ2YTA5YWJjNjk2ODIzYmM0OTU2ZmY=
4OWUyNmM1OTFmMWFkNGJjNDMzMTFkNGQ0Yzc3NmJjNmZkMzI4NDk4MmMxZmJlYjVkNzZhZTFmZD=
ZmMmIyOGQzZDYzODU3NmQ5Y2MwMDE3NzE3MTU0Nzg3OWQyYTEyNzg4YTI2M2VmY2ZhMGEwNGI0Z=
GExMzUwMTZlZmI0YWU1NDVlZGFhMjliMjBkMzM3OTE1NjE1ODBkN2IxYTkxMGNjZjYxMDlhZGQ0=
ZmQzYjIzYmUxYjE1ZDJhNTlmYjI0NjlkY2ZiN2QyN2YyYTNmYzI2MDUzNzA1YTM0NzgzODQ1ZmI=
0MTExYjUxNDY0ZmQ0M2YyN2JmNzIwMmFmYjIxZTUx" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DN2ZiZmF=
hMzc2NjhiYzQyNThhOGFiZWM4MWU2YTM5OTZlNTFkOThjMWY2NmQzMmZhZTBhODdkMTYwODQ0Ym=
EyMzZjMzg0N2NkMDY2YWRiOWZiMTM2NzUzMTI4ZTE2MmZhODMwOTNkOTQwMWExZmFlYWUwMmQzY=
zFkZmJiOGI2Y2M1MTEzNmMzNjlhZTMxYzY2YzY4ZjYyNDgwNGUwNmRiY2I0OWQ2MjQxYmM0MTQz=
NjRmOThlOWJkNWUwMzNmNzBlOGI1ZTJkMzAzMGZiMWI3Zjg0YWUzMWFkMmRjZDg0NGVlYWZkY2Y=
wNDU0Yjg2NmNiZDc1ZGJiNGM2OWU5NTJjNGU5OWNjODkxM2ExM2Q2NjBmOGUzM2E2Y2I1Y2IzOD=
JhMGM5ZGYwZTE5MzEwYjJmMzZkNTdmZjY3ZjZkZTllZDFiM2MxZDQ0ZWY5YmJjYjNhZTNkNDk1M=
DdlMmJkYzFiYzI1YjdjMDUyYmFiZmZmZTU2ZTE1NTNjNWE4MGZkNA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNDYwNDdjZDgwM2QzMzUxOTFkZDVlYj=
U0ZTc4NzZkNjQ4NjhiMjg3M2JjYmIyOGFmMDZmNDQwMmNiYzBmZGNlMTNkMDM2ZDIyZjc5NzE2O=
Tk4Njc3YzkxZWVjMDUzNjc0NDU1YjM1NjM1MzRkMzc2YjM5Yjc4OThjM2EwMjBkZDNmMmNmYzNh=
YzdkNGIwMjVlZGUxZTE5ZGJiMWE4ZWI4NDczZTEwOGViNzI4Mjk1YWVlNDBkMDY1NTVmYzMwNzh=
lMWNjNzA2M2FkNGE0YzIzY2JmNmU2ZjAzMjFlN2E1ZmVhNWYxNDZlNzI3N2Y3NDgxMzU1YzNlYm=
VkNWU0OTFiMjAyMWRmZTY0NGFjYWM2ZjRjY2U0NjhjZTA1MjNhZTFhMzczMmY1N2VkYTYyMjBjY=
TY4ZGYzMGZlYTRhMzMzNTBjMmNmODJlZjU1MDJjOWY5NTFkZDFiMDlmMzA4NzU5ZmMzZmUyYWU4=
M2VjZDk0NDRmYjlhMjQ2MzBm" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNzViM2E2YzZiOGI3OGIxYzg0Y2E0NW=
UxNzFkMWJiMmIxZmQ2Y2Y5ODlhNGEzNTQ2YTY3ZGNmOTA5MGExNDhjNDEyNDQzM2FjZjAxNGIxZ=
GIyZjc2ZDg5MmRjMDg4ZjUxZGM3ODhmNzNkMjdjNTI3MmM4YzVkNTk0ZDBhZGM0NzMyZTY4NjJk=
Y2MzZWZjNmZlMWIyNzIzZDhkY2FjMDU5NmE0ZTIxNjMyY2NkZGYwYWFhNDlkYWJkYjcwZjRiNWE=
xMzFmMDA3YmM2MTkxYWE4OWIxNDY0YzAzZTJhNTZmZGU1ZTU2YzFjOTFkYjc5NTUwN2MwODVmMT=
I1NDA1ZTBiZTYzOTFkMGRjMjllM2M2OTYzNWY4ZWEyMTUyZGQxYjhiNmY4OTEzMzkyMWFmZDRlY=
jYxZTVkNzA4NGNlNmY1N2RmNjMyMDYwNDU5MGZhZWY0NzJiNTUzOTk1MTdiOWNjNjhiOTM0NjIy=
ZmFjMDdhY2I3NjE2NzZjNjU5" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZWE4M2NiYTYwMmVk=
NjNjOGUwOTU3OTcwOGZiNTYxYmViM2I5NTcyZDQyNDY1ZTg3OWVjOWY1MDU2YjdkOTA1MjFiMWI=
4YzA0YmVhNmRkMGY5ODc5NjM1MmI1ZjUxNWU3YjE4ODFlYWIzZDIzNTI3MzZhNzgxNTM2NWFhYj=
Y5NzhlYzFkYzc5YjRmOGVlMGU3NmJjNWUwNjZiODAxMWQzNTM5ZjNjMDllYjA1OTcyYzBiNmEzM=
jkzMjJlNmE0NjA5ZjdmMjA4NjFlZDg1OGJkMDAzYzA3NzA1M2ZhNDliNmM1YmJhMzI2OWZhZGU5=
MDBmNWRkNmU2Y2M3YWE0ZGU0YjczZjVhNGNhZDRmNTZmNmE1NzViM2Y3N2MwMDU1OGIwMGU0OGQ=
yYWYxYTIwYTQ3MDk3ZjNhNzc1NTY4MTljNzYzODYwODJlMThjYTA4NDIxZTJjMzM4Y2JiMzE5MT=
M3ZmY1MzgyYjZmZjgxODFmYzEzZGQ2ZGZhMjkyMjU4Ng=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTVjMDQyZGE1NWUw=
NGRjOTUwZjk1MTVjNDc0ODJkMGRhOTcxNzJlZjExYjM3ZjUxYzFjNDYxOTIzYzk0MTM1YTc3MzE=
1ZTI5NzU1YmZhM2I2MWVmOTRlYmQ0ZDNhMGVkZDYyNTFhYWVhZDcwYjQ0ZmU4ODQyZDdiNjQ4YT=
RhMjA3ZmM2YjUzZjk0ODZlNTc1ODg5MDM3NmI3Yjk4NWM2NmQyZTc0ZmYxNmM5OWI5NGFjNTQ2O=
DBkMWRlOGY3NWY3YzBkZjQxNWIzOTVjYTIwYTU4ZWMxNGVhZDcxYzIzMGYwNDZmMzVjMGJjZTUw=
NWE3ZGIyMmEyNTZhNWQ0NDQ1MmEyOWU2YWIzYmM0MzkyOGQyYmMzNDA3NDhkYzFiMzYzYWZhMzh=
lODIzYzJhNDNjZWUzZTYxNjBhOTE1MzNmYjc5ODIzNzhjNjM5ZWY1MWQ2Yjc3MDYyNDBiM2U1Mm=
ZjZGM0MTNjYWU0ZTk1ZjYxYzk4YzNhMTFhZDBhNTNlYQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DN2I0OTcwOTRhY2Y3=
ZjI5YzA3OWUzY2JiMGQ4YzMwMGNlNDM2OWJmNzVhOWUxZTAyNGM2MzQ2NGEwNDhjZTBlODQyY2E=
zNDU1ZDY2MTIyMjg3NDQzNDBjZDlmMThkMDBiNmIwMWM4YjQwNTk3ZmRlZjZiYTlkMjg4YmQyM2=
M3MzI5YzgxMzA3NmNkNTU0OWU1MGFhMmEwZmY4NTdhNWQ2ZDVmNDEwODU5NTRiZjBiMTA3ZDNkO=
TJkM2YxODc3YzBiMjFjMDg3NDEyODVkMWQzZjI2MTY1MTAyNWY4MzE4NzBhZjcxNmFiOTJmYjdh=
NWYxOGZiZTU5YWUyNGZmMjA4YjFmZWNkYjgwODFkMTUyYTAxNDBkY2FlYTY3MTcwYTM3YWU1YTk=
4Yzc1YWJkZDYyNTg5NmZlMDFmNDY2N2I4OWZjMGU2OTA0MDc4OGQyZGIxMGJkMmJlMDM0ZWFjNz=
liMjc3MDMyZTQ3ZWU1NTcyM2ZhNTNlMDhhNTk3MjQ5Yw=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNWRhOGQyZjg0MjI4=
ZmQ5YmM2NmE4ZjE2MWFhYjJhMzBhMzhhMzRlYjU3NWIxNjk3MjkwODY4NGU2OTgzZTE3YWI2ZWM=
0ODgyZTRkM2ZkYzNmYjk4YWQ1MTlhNmVkNTZlMTVmMWQwNDg4ZjkzZjA3YTg1NmU3MWZlYzRiN2=
Y1NTBjNmY3MjU1MzQxODhlOGY4YjNkNmQwNWFkZDcyYTRiZjNjNDkyMTczMTU1NTExYTUyYTQ0N=
jRkMWE2ZGExOTc2NzBlMmJhOGYzNWFjMjIzYzk0NGYyYmQyMzRmNWZjNWI0NmQzOWNlNjcyOWVi=
N2M3MTE3YWRmNzY1MWNhYTY1NjdiOWVlZDgzZjRkNDQzYWM1ZDkwNTc0YjE2ZGVkOGRmODdlNTd=
iNDJiODkzZTUzMzkxZDU3Mjc2YzZkNWU5MDNiYzE0YzczM2Q5MjQwMjUwOGQ3Y2QzN2YxODRkNT=
VmZjFiODZmMWM1ZWRhYzQ0M2ZiODhlZmQxOWZjN2NkMg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DY2U1YWFiYWQxOWMzNT=
g1MDk1MjM4ZTNlZGQ3ZjY4NmQzMzc4YzAyMzIwZjY1ZGM5ODRlZWFiYmVmNDJhNzgxZmRhY2MzZ=
DcwOWNmOWEwYmE1ZjE3YjVhM2Y5YjIwN2E4NWMyYjZhOWI2NmZjMjI1NDkzMDA2ODcwMzJkMmM5=
MjU1YWRhNGQ2MTNlN2EzYTVkZTNlNWM2OTExZDJjZDQwOWU1ZDM5YzU0YTcxYjlmMzBhNzBiNzV=
kNGE4NzZhZGI0Nzc3Y2RhNWFjNWQwYWZjYjU2NTc2NDZiZjc5YjA0MTJiZWEyOGM1NWQ5Mzg3YT=
gwNWVhOTI0ZDg1OTNkZDMxNTU1YTA3MjI0YmE1NjliODUxZWEwMWU5MzkxZjYyMGUyOWE2ZmE5N=
TU5YzYzOWRmODgyNDRhY2QzM2U0NDk1ZmU1YzQ2OGVmNzhmZDFhNGNkNmUzNWExMjQ1OTE5YmZl=
YzViNzQ1NTkxNTIxOTg4YzY3MmFiZDYzYjdjMThiMg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNzc0NmQ5ZDE2NDRh=
ZWFkNWY3MzJkYmQ5NWZkNWIxMTkyOWY3OThjMGVlNTVjNmUzZTliNzlmNWU0MDFiYmYzNDFiNTg=
1MDljYWZiYWI5MzEzNmY0OTcxYTQ2OWEwMDNmNGEyN2U5OWU1Mzc1YzM4NzQxYzE4MzQ2OWY3Yj=
ExYTFmMWE5M2RlY2I0YzYyMDdlMThiOTJjMTAxOGFjMTg0NjVkNmY1YmI2YzkyN2U4ZGRhMjQwN=
DgzNTBjMTM5ZTQ5MmE1ZWJlOWZiYzI5M2VkMzRhMDMxZjAzNzU2MjIzMTM0OTRhMmQ2Yzg5ODRj=
OWNkMjI3NWQ3OTQwYzExYzU=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DMWFkNjJmZmFmMGY1Mjk2YTEyMmY4NzlkN2NlZ=
TI3MDViYjRkMjY2ODRkMDZlOGU1NDZiYjFhM2IxNmVhZWI5M2QxZDcwMTk2ZmNkMTg0OTlmMzJl=
ZjJjM2Q2NWZiM2NmNjM2NzgwYjFkOTAzNTEwMjRhN2M5MGY0NmVmMzYxNDc4NmEyNTAwM2U0N2Y=
4NGUwNDA0OTJkYmVkODAwNDNiNDNkMjI1NzBkZWU3ZDhiYmJhNzZlOGM0YmQyZDNlODM3YzdiMz=
UwMjYzOWVjMGY4MmJmNWUwYTE1ZjhjYzlkNWY5OTg1MGFlODFkYTIyODc0OGEwMTAzMTQ0YTQ5O=
WY0ZDNjYjdhNzQ4YzVjNDA0MjRlNDA4YzBkN2RjZmU5NTg1MDI5NDM0MGYzYzVmYzJjNWZmZTYy=
ZGM3ODBlNTZkMzkxZDkwMWM3NjJkZWYyYWFiYTYyMDdkMmYyNGM1OGNiNDYyZDFjMGE0ZGMxYTc=
zYzk2OGI5NTc2ZjhjMTNiOTczYTQwNDA0OGNkYWRmYjcxYzYzYjFmZTRhNzY5ZDE2YzU1OThkZT=
U0NmRmMjRhZDA2YTY3ODhhYzc=3D" style=3D"font-size:12px;line-height:134%;font=
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
