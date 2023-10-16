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
From: localhost:1333?u=3DMjNjZTJlMTZhOTMwNjdjYjhmZWNiOTczN2IzZWIzMDZmZTVlNT=
BiMzc4N2JkNjMwOGU4MWYyOWQ0MjY4ZjQ5NDZkYmFhYzY5ZGQ2N2Qz <mail@eg.expedia.com=
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
<localhost:1333?u=3DOTQ5NWJiNmQ5NjdmMmIwZGQyYmEzOGUzYzk1OTQ4ZmE3OTA0NGMxOWQ=
yNjlhNDY2NmRkMWFhZmEyMDFlOTJmMDU2ZDg5ZTQ2ODc3NGQ2NzY1ODhhOTI5N2NmYTgyZjg1MT=
Q0MzU1ODcwNmUyYjU4M2U0NDBkMDliZDIyNDM0Y2ZmMmNmZTMyOTUyZGZiNWQyZTM5MzAzNGM1M=
zAxNWQ5ZTYwMTE3NDc0MzYzMDYwOWI5ZGQ2ZjUxNzEzOWY2YWZhNGFjZjU1YmJiMDRmZmE4OTMz=
MDc4NzIzMmNiZWFjYzdlODE3ZTcwODYwNmU3M2NkMWYwZmZkZTRjMmY3NDI4MzJiMjM1ODczMmM=
5NzY4ZTU0MjBlY2RhNGE3OGZlOWEyYWQ3M2MyMmQ2ZDdiNzg2NjkzMTg0NjhhOWIyNzljYmY1Mm=
IwODY4MTBlM2IxNzQ0OTZhOWEzMGE1NmJiYTUyOTQwYTFhZWQzNTM5ZTk5NmEzMDE5NGIzMzM2>

* The Travel Edit
<localhost:1333?u=3DNTFmZjYwMjk2YzhiNWExZWYyZjUyY2M0OGQ0ZDMxOTM5MDNhMmQ5YTY=
wMjk3YzM3MTgxZWJmNzExYTQ3NDI2MGNhYjczMTFiYTI3YzliMjY1YTBkOTIxZmNkYmE2OGZiMG=
YwZGMxMTJlZjAyM2MwZDhmNmY5ZjFlYmZiMWEwZTA5OGY0Y2JkYWNkZmQzZDUwMjc3Yjc0MmQ5M=
DkyMmMwYTQwNGM2MGZjYTZjODZjMzZmYWMyZGVkNWM4MzIyMjk4YzZlYjQ1NWYxNDEwN2Y3YzJh=
YjY5N2EzNzZkYmNiMGMzZmNhNDM5MDgyZmNkMWYzODkwYTZlY2E1Mzk4M2Y5N2QyZDljMzJmMTB=
kNzM5NWNjYjJlODJlMjFiYWEyNjk1ZjZkYzVmZGZiYTJkOWNlMDFlNmJjZTU1MzcxOWRlYWVkYT=
gwMTViMzRhNzdiYzdhNDcwYmNjODFmNWU3NzE4MTY2Zjg3YTUzNDZmZDA5YjM2NTZjMjA1NTQ5>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODM4ZDk1MjgzODgyZGNlZDg1N2ExN2RlMzE1ZTU3NDE0YzhjZjJhMTA=
3MDNjNTA4MjI0NzgzNmQ0ZjU0YTA4MTJmZTk3OTJhYjNhYmYyNTA2ODMxZDFhZDFjY2ZjYzYwZW=
Y1ZDY0N2ZiNGQ4NGVkMGI3N2E4YTlkOWZmYzgxMTkzZTAyN2FiN2UxNGFjZDdlZjE1MGI1MWZkN=
DAxODc1YjE3MDllZTQzM2FhZDIwZjU1NDc3OWZhMDc4NjFmNTA0ZDU5OGUwNjAwMTdiYWZkOWIy=
YWNjNmM5MDg5NjY3ZTk2MmNjOWZjM2YwOTZiMjNmM2Y3YmE2MWZlYjIzNDc3N2MyYjdjMjRlNzB=
hYjFmYzRjZmE0YjVhODkwZDYxZDU2YmZmOGQyODliYjk2MGQ1M2RlNTNjMzY2MjcxZDg3ODI1NT=
NjODZjMThlZTdjYzNmNTkwYzFlM2RmMWFlNjY0ZThlMDQ0YjQxMDAzNGNkMTM1NzEzNjBhYmRl>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYWVhM2I1ZDViZTdmN2YzOTk4N2JhMDUwOGEwMzg0ODBjZDUxOTBlYTE=
2MzU0MTgyZGYwNmFiYmNkMDYxOTRkNGNlNmRlOTEyOWI4NGYxYWU4YWZkMTlkZjU4NzY1Y2U4Nj=
E0YTdmYmU5NGEzM2JhOWUzYjViM2RkN2QxMGNiMWM5MjNmYWY2MGUxMzEwY2Q5YmI2NjExM2YxM=
TYxN2EwM2ZjYTJhNzc2ZTM4NzQ2OTE5OGJlOWU3Nzg1YjhjYWMyNzgzZGMyN2YwOTQwOWRkOWJl=
YzZjZTM1YWFkNTE0OTc0ZmI5YjAzNzI4ZTEzYzZhODc3YWExMjkwMDA5ODkxYmZiNzBjOTlmMGR=
lYTE3NzAyMzRhMmIwYzZiNjY4YzM3YTIzYzU2YWJkMjIzYzEyOWI3NTcwZjQ2MzZiYjIxOGMxMD=
JiNzQxYjA5OTRhNmNkYTE5YWU2NGJhMzQ5NmU0MWY4MTE1MzM2ZWI0ZWMwMzJkMjUyNWU5OGI4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DN2QzYTk2NmFmNGFiZWI5NDRlNzVhNzAyYzg1YjYyOTM2NDhkZjQyN2U=
5MDhmZGZkMDUyOWE4ZjdkYzBkNzk0Yjk1MDdmNGEwOTUyZDcyNGUzZGVkZTE2ZWM3ZTIwNzJiMj=
Y0ZjliZjdhOWFlMzZmZDI0MDM2OTVkMDIxMTllZmFlNjZkZjZjZmRiNWI3Y2Q0ODI0ZDQ1MmFhM=
mU5NTc3ZjNiZGJiOWU5NWI3MjYzZjQ0MTU1NDllOGZkNzQxNWZhZTE2OWRhNWQ0YWZiZGQyZjA0=
ZGQ3YTFhZmYyNmYzYWU2Yzk2YWQwZTkzMDE4ZWU4ZjhmNGE2ODhkZTY3MzFiNDg2YTU1OGJlMDg=
0MzgxMzljNDhhMTY1YWEzMTQ1YzYzZmZmNTU5Y2Y4YzU5MDk3OGJiOGU4N2ZlY2ViYTViZGRjMm=
U5N2MyNjhkZTNmOGY4MDgxMjg1MzYxYTg5NTNmZGMxNDQ0YjEwMDg5ZTI2NGFkOWM2YzM0N2Rh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DODFiNDUwMjlkMTNmMjk5YTU3ODIwODkwNzE1ZDg2ZTlmNGE3ODgxOGJ=
iMzc3MTJlZDFkZjI2MDFmMzQ3MTdkMTYwNTcyYzdiNzdkMGU1OTE3N2RlNDNkM2M1NzkxNjRiZW=
NmMzA1MDEwZjA1ZjQyNDY3ODMzNDQ2MTI0MGU3NGE3YTE2NmJiN2IyMDFlNDU5MTgwYzk1MGE5N=
mI3MDUzYzY0OGI2MGM4ZDhmYTU0NzRhN2QwMDNhYzJlODI3MmE4NjdlM2IyNTViOTQxMTk1ZmI5=
YzMzY2JhN2QxNTkzMjY1NDhjZjk2OTdiNTg2NTEzYzg0MWFiM2IwZDlmY2VkMzIzOTY0MWViM2Q=
xNjMwMmE1OWE3OTFiMjBiMzM0MTMzNGRkMDQzY2JhYmNjYTczMzRmOTY4MmYzNzMwNDBmYjc5ND=
YzODdlZjJjZGVlOTEyYTJkNTMwMGYxNmUwOGZlZjZiN2Y1Zjk0OTA0ODQ2NGU3M2YwNzI4ZTFl>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNmYxYjM4NGM3MTgzYzI1ZjhjMWEwN2EzODIyYWZmZjU1MDIyMjQ0OGE=
0MjRmMDg4N2IzM2VjZmY4YWYwZjI4Zjc5MjM4MWY0YWRiYTAzZTA0ZDZjOWRjNTljZGI1NzY3MG=
QxYzkyNzcxOTZkYmFiNDkxZDRjMDg4N2I2Nzg0ZTRmOGE1OGI2YmM3ZGFjOTE2Mjc0YTMwMThkN=
jUwYjg0NTI0NDA2ODQ1ZDVlMDk4ZDE1NGMwY2NiODJlNTY4NjQxYmEzMzIwMmE4NGUwMjUzOGNi=
NTk2YzJmMDFmNTYyNDUzNGI4OTY4NmYwMzM0YzZmMjczNDdhMWQzYTkxMTA1YWQzNTJmMDQ1MTc=
0OTQ1NmRhZDJjNzI1YTQ1OTI0YmI2MmQ5MjM2YzJlYTQyMDk4YTA2NzNlN2Q3OGU5ZGJkMzg1OT=
E3NDAzOTc4YjBiMjI0YzI3YjU5N2VhZDkyZWY0YTYzYmU4NmMyMTYwYzRlMTkyYWVhYzVjYmRj>

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
<localhost:1333?u=3DMGE2MGM3YzU4ZDJmMGM5YjdmNDg2NzcwZjBiMmQ3MTk5NDU2MWVkYTV=
iYjFmMzVmODEzZmVlNGFhOWY3NmQyM2FiNzlmYzMyOGY2Y2JjNmU4ODgzOTdmNjJhMTE3MDc0Nz=
JhOTUzZjI2NmM4YTE4NGY5ZDAxYTYwMjMxYmE0MjIzYzVhMTk4NDRmYzYxNThiNDViY2IyNWU5M=
zI2YmVhMzBiYzg1MjIwMmQ1YTU3NzljMGVjN2E4ODMyMGYyZWE5Y2JjZGQ0ZmQ3OTU5ZDJmZGVl=
MjJlMmU4MTg2ZThlMmMzOTE5YTA3NTU2ZmNhMmViMDhiOWJkYzY5MzY2ZmI2ZjFmMDNmMjQ0YTR=
mNGIwNTcxM2MwYTE5ZWNhZTI4NWU3MjM5N2IzNjYxYjViNTBkNzQ2NmRkMjI3ZjlkNzQ5OTcxOW=
VlYmQzZGIxNGEyYmUyODVjZWUyMjlmZTM0ZmMyZDk3YWNmMWI1MWIxNDA2YTFjNmQzODk3MzFlO=
GIyMw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNmJiMDQyMmQ1ZDRkY2FjZmVjNjNiYzIxNWI5MWZjYzAxZDM1OTc0OWF=
hOTc0ZDIzNzdmNWNiYTVjMTFlYzEzNmU1ZGJlZjIzYjEyYmVlODVjMTI5NzhjOTI5YzZmZTcyOW=
U1OTQwZjEyODBjN2IwZjYwZmRkODU4ZGQ1ZTMxMTg5ZTAxMTVhZjEwYjljMDMwZjNlZjM5ZDM2O=
TQ1YTE2ZTE2ZjMyYjhlMWU3YjBlN2YzMmVjOWQwNGVhYWQ0ZTA1YmNmMmQzNTFlMjZlMGU3NTky=
MmM4ODFmNDc1M2RjN2M0OTU5MzEwY2RhMDhmN2FlNjA4MzM0NDNhYjU4ODkyOTVhNWU3OWY4OWV=
kNTA4ZmE5ODkzZThjOGNhYTk3M2ZjYjg3ZGJiODI0ZTJjN2ZkYjBlYzRiZmJjM2I0OGQxMTk3Mj=
AwZWJmOWI4YTljYzc5NzNhNjJhNDJkN2JiNGRmMDMwOGIxNTljOGU0ZjZhMGFlYTdiOTQ2NjE2>
  [image: Google Play]
<localhost:1333?u=3DZDgxNGY4NzAzNTIwOTNjODQxYWYxYTA5N2Q4MTM2NDMwZDk0ZjhlYmI=
4ZTJhOGJhM2EyZWRhOWEyODU1MmYyODU0YWYwMmFjYjYzYTMyNDAzOWY0M2VmYWRjMjQ1NDljOT=
dlNWJiODkyODdmNWRkM2VlMDQ0NzFhMDQ2NTAxMWJjZTNhZTYwMDNmNmQwYjQ1YzU0ZjAzNjliN=
mI0NTUyYzAxODZiMjQxYzA0MTkxNjcwNjI4NWE4ZTE1OWI5MmI3MTQ3NWRkODMyNTgzYzE3NDQ4=
N2I0YjAwMTQ0NGQxM2Q4MWViYzg3MDY0MTQwNWY3OTlmNTA3Zjg5NTk0ZTM0YTM0OGZiMDhmODI=
0MWIwODIyNWU1ZmZlMjI0MjgzZjc5MWM2NGI5ZWY4ODMzOTI4NTk2NTE5NzFjYzI4YzY4NTA1OW=
IwYjZkOTk0ODI2YjYxZjM2MDlkMTc5NzM1MWI2OTFkZDViMjhlYjBmZDg5MWZlOGFkYmYyYmM3>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNGE3N2JlNGM1ZDdmMWM1MjFkYzhlOGJkMDAwYmRkMmE2MTEwZmVjN2N=
iMjEwMmU1Yjc4MzdkNzZkOWUxZDViNTYyZmJkMjM3NGE0MmE5ZmZjNGEwYWI3MmY4Y2E2ZjhmOG=
I2NGMwNTE5NzcwOWFlZmY1ZDQxZGVmMTU5NmI3M2Q0NmVmMzNiNDFkNTlkMzc5MWU3ZDA4OWE0N=
2RhOWZlMzNlMzI5NTM2NzkyMmEwZDA5Y2Y1ZjUyZWIxY2MyOGY5MjE3ZGJlNGM5NzI1MzI1MGY4=
NWQyMTY2OGFmM2QzMzkwMTM3YzQwNDdjNDQ3NzRiNzI5NWU5ZDJiNjEwMzQwM2ZiYTdiN2Y5ZjB=
mNDhhZjJhNmFiY2FlNTdhYjhiZmYxNmFjNzhkM2MzYmYyYTFiZWYxYTRhN2VkM2U5M2JiMGM5OW=
VlNTFlN2ZhOGMzNmViMzc2Njk4N2VlZTNjZTE1NTBmMWNjMjA4N2I2Yjk4OGYzMTFhODBkMjRjN=
TMzMA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMzgwMzVjMDYwN2JmOTM3NmM0MDQ4MTk0Y2VlOTBkMmZmODYzZmE1YzE=
xZjM3NTM0ZGY5ZjBjNTIxODEzZjA5NDNhNjE1N2Q3YjIzNTlmYTlkZWNjNzc5MWU1NTc0YWNkNm=
FkZjU5NGJmMGM1YjZhYWM5Y2FiYmQxYzlmYWM2NjJiYjYyOTgxNzA3YjkxYzJhN2JjZGM1OTBlN=
mQyNjJmMzE3MGVkZGY5NTYyMzljMzlhN2I5YTUyZWVlNzdmNjYzNTA3YWJiOGMxMTYxNTljZDU1=
MjdjYjc1Mzk5MTQyYzZhYWY4NDdhZWFiNGY5ZjVkNmIyNDIzYzU2MDM0ZWRkOTFkZDE4ZWNmNWQ=
xMGRiMmYzMjlkZmZkODdhZjlkZjMyMmJjODI5Y2RiM2NiM2ExZWEyNTM0ODQzNGQxNDZjY2VkM2=
RlNjdkNGY1MDdiNTEwNWQ5NDY1YzczN2YyNTliNDY5ZTBjMzJkMmVmYjUwN2FiYzg5ZmE4NjNiY=
TI5YQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMTkxYWM1OGZjNDdhMDQ1ODA2ZGQzYzZiOGE2MGMxODU3NTg4YzMzN2E=
yZTViMTMwZGNjNGYyY2Q5YjlmMmU1MTUxYTc2ZmFiOTZjOTM4NDYzNDhhNTViODA3Y2JjZTRmNz=
k5MWI1MGZmNjE5NDAxYzYxMDg0N2EzYjRmOGQ2NThiMDU1YzkyNDg1YWQ1MDg3ODU4MDEzYzZkN=
zYxNGZjNjRiZDU5ZGFiNDQ1MDFjZTQ5YWYyYjM1ODVjNDkwMWRmMzEzNjk4ODJkNGM3MzdkMjEz=
N2E3MDkwMTk2ZTRmODFhYzUwYzkwYTdiMzY0MTQ1MDhmODUzZWNjOWE2NWFmZjk0ZTJmY2ZjMmM=
wNjg1YzFmNzgyNjk3M2NjMzIyNGFlYjljNTU5M2EwZmJhOTgxNTIwNTI2MTJhNjJhOTlmZWZlMz=
UxODhkNjJkMmI2MDY1YmNkZjNjZDhjZGM2YjQyNzk3NDRjMWMzNzYzOGUyNzZmNDY3ZmQ1NDFmN=
WEzZA=3D=3D>
   About Us
<localhost:1333?u=3DMzZkN2MyNzE0YmM1NTk3YjkyNjRhMTg5N2U1ODk5OGViNTNjNjcwNDd=
mNjEzYmIzNTk0MDkwNzc0NzFmZTJiNjUzNzlhZjdjZWI4NzNmMmQ1ZDhhM2E2MjIyY2MxMWYyN2=
M5ZDY5M2M4ZjBhNmNjY2M1MjBlNWIzNTg0MmQzMGJiZjBmM2I0OWI1MTYwNDhkOWMzY2Y4ZjdkO=
TQzOTgxOWY5YTM4NTc4MDU5NmVmYjczNTRlODIzYmQ1ZGEwNzRkZjI2MTQ4Zjg1OGIxMmE3MTll=
Y2JkYmZiNjNkYmMyZGIzNGIwNWRlZDYzN2E2NDk5YWE2NWE3MjFmOTE5OWY4ODFmMmM4Zjc3ZGV=
kOTcwNDM2OTczZjgwZjgwZWMwMmJiZDdmMzQ1NjQyOGU0Y2NjNDcxMTg5NDgxMWI2ZTRhYWI5NG=
ViNzYzYTViOGVlYzIyOTA3MTM0NGZjYWZjYTNmZjNlNGZiM2UwZDZkOTZkOGNhZmRiNDFjYzMwY=
TZiNw=3D=3D>
   Customer Service
<localhost:1333?u=3DZDUzODBjN2Y1ZTZmZDI2YTY5NzUwNDA0M2NmYmFkNDRkYWRlZjY2MzY=
zNmRiYTdmMTVlZTk3NGFhZDcxNTNkNjY2MTkyZjBmYTg0MWUxNmM3NmFiMTI5MmRjOTg2ZDhlNG=
Q1Zjg3YThjOTM0OTQ2YzYyMzk1ZWVjOGQ2ZGE4Y2Y3MzIyN2E4ZTZmZjJiMWJmZGNiOTM3ZjQwY=
jJjZjI5YTI0MmY4YWRiZjk5OGZjNWFkMGY2NjJjNGIzZmVkN2I3NWFkYWNmZjE2NDMyYzM5NDcz=
ZmY5OGYzNTc4YWFmOGUyMmEzYzk1MjM5MzQ1MmJmYjNhMzY5OTFjZDE0YjU5OTkxMjczNWVmNzE=
1N2E4Y2Y3Mzg2MGJkNmRiMDQxYTJiNjRkNzFjNDBiNGNjZWNjMTllZWMzOWI2NTUyMjk4NGViMj=
M4ZDk5OTkzMzBiNTEzMTIzNTNjNjg1ODNhY2Q2YTBiYTE5ZDA0NjQwODc0N2E1NjZjYzJhZmUxY=
jJjMg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMmQ1MDRiN2MyNDU1OTlkNzAwZGVmZTNiNWQ3NDllZjBlYzg4OGQ1ZmN=
iNmQ2ZmMzYjQwNWUxNmI2MGVlYTQwNjNhNjdlODFjMjc4YzQ0MGVlNDEyYmY3ZDkzY2FkOGQwMj=
dhNWQyZjA0ODZkNzM4YjJmOTJjMjdlNDVlMzg0M2ZkZGYzYmYzMDFkYWVlMmEyYmVmNDNhNTg1Y=
2M0NDFmOTNkMjMxMWJkYzM1NzM2ODEyOGUyOGNkMDBiOTRiMzU1ZDA4YzdkZDVhNDMxNGNhZTQ3=
YTViZjVlOTI0OGVmNTdkZTgxNWJkZTRiZDUwY2I2NGUxZTZjYjQxZTMyNjc=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYjAzMWIwZTM5ODFiYjdjMDliODQ3NDg1MzUwMDFiOWZkNzE2MGViYjJ=
jOGVlNTBjNWUyOTE2NjFkZTg0NzY4YTJmNGU3YWJjYTkzODExODk0NWZiZjUwZDM4MmE2ZGU4ZT=
JiYzFiMTdjOTg3N2QwNTA0MWQwMTg4M2FiZjRiMzZlMDBhMDE2YmI3OGEyYzEwMzQ4Nzk4ODUyN=
DYwYWI4MWZmZTE1MDc5MThkNzQyNWUyZmY0YmMzNDMxMWQ2Nzk5ZWY0NWYyMDhiYWU3ODg1ODY5=
NzMxMTNlODgwMzJjYjE3NjMxNTgxNGJmMzhhZDY0ZTIwNjdiOGExZWU4YWE3OWViNjRkMDk5Mjc=
3OTBiMzQ1MjQxYzAzODlkZGY1N2U4MDIwZDRlMGZiMDc2MzFlMzZhMWQyZjkxNzQ5ZTNmYWYyNj=
RkN2M0OTQxZTY1ZTgzNDVkMjAyZjM2YWVkNWI1NTVlMDI4MzAzNTI1NzM4NDRmN2E3OTM4NmRmZ=
DZjYjk3YTAwZTRkMDJmOTUyNTMxZjAzMmM0YTk1M2NiM2Q5NjMyNWRlZjc5OTg4MjFmZjJjOWZj=
M2JkOTM=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DN2Q4YzhmNzhhNDJiMzlk=
MDg5ZTM3Y2U5MDk5MzdlZGE3NjgxYWQxZmJjZGEyMWI3MGE2ZmNmOTJmMDE0ZGZkY2E5Y2ZhZjN=
lNGI4Mjc3NDFkNTM5YWE5OTZmN2M1YjUzMjk1YzI2MjdhNGY4NzViMjE2MzEzODQ2YjU1YzA4OT=
dmYmE4OThlZDI2MGZiMjRiNzUxZjkwY2Y1NDhkODJmYTMwMjFkMjY1ZmU0MzhlZjNhNjFlODJmY=
mY4NTE0NDYwMTRiNDFkNTFlZWQ5MGQ4ODEzMTg0MTk0NDFlZjMwNmZkMzI2YWY4ZTJhNWEzOGFm=
ZGVmMWRjMzIyOTI1OTQ3ZDZlZjRjOTI2Y2I1NTU3NDU5M2EwNjg2ZjFiOTY2NTE5Y2U5MDMwMjB=
iYzYyNTA5YTE4YTFjNzUyN2E3YmIxODJhOGFjMTRjMmVhNDUwMzZmZDY5MTdjNDY2MTQ2ODMwMj=
g1MzFhOWQ0ZmRjYWRhMjg2ZDVhMTI3ZTU4" target=3D"_blank">
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
?u=3DNWE0MGU1MzFiODkzNTkwYWMwOGM3YTE4ZGI5NzFmNzU3M2Y3YzI1MjhhMjhhZjc5NzFkNj=
RjNjJjNWM3NjllNTJmYTg1NjBiOTllYTFmMWYyNWNiOGU3NmZkYjdlMDZjNmM0ZDY5NzZkZjVjM=
GFmMjlmMDczM2IwNmJhNWQ3ODNjZDliNDNjYTM5NjA5YjFhMmNlYzlkYzUwNGRkYmQ1M2NkYTBl=
YTVhYzM5MjhkZDY4MmY5N2I2ZmU5YjU2YjQ2MzMzMWNiMmY5NzI3M2I4NzU0YTIzZjJjOWRkMjE=
yZmRjM2MwNjhkMjRmYzkzMTBlNzNkYTkyOGJhZDFmMDM2NTAxMDgwMDQ1ZWVlYjNkNmE4NTU0MG=
NhMWFmYjI2NDRhMmZhMDEzYmQ1ZTAwNjFhMDBhZmViZDAxNzMxMTA4MTZkOTQ4YjFlNjFkMjBmM=
TQwNDM0OTJjNGI2MGFiZTkwNzJjMWNhMTY0ZWIzMmYwY2RiNzIyZmJmNDMw" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMzk5ZGEyZ=
DVmOWViZDQ4NmM5YmJlZTVjYWY2NGQ0ZWM0ZWViY2IzYzg5MjU1ZDkxNWZiMDc5YmExNjVhNjky=
NDRiNTYwMzE3MTllMzk0NjVlNzZhY2JmYjNmMTZmM2JiNzNhODM0Y2I5YWZiNWNlNmVmOGYyZWN=
hODRiZTQ2YWRkNmY2YzVmNWRlYzFhNTQ3YTlmMjI3MjEzZWFiNjNhYjJkYjNhZjU3YTU3ZjY1Yz=
FhMTY2ZDJkMTczY2MxODYwYTM3ZjJlOGMyZGE5OWZmN2JhYThiMzE3YjczZTk2ZGE4NTVjYTNmY=
zEyOGMwNDBhNTU5MWIxMTNiNWQyMzEzYWFjMmZiNTBhNDkwYTkwZTljYjJlZjA5ZTE4YmU3NzE0=
ODY3MzdmNWIxYTgyOGRjMGRhN2FlYTc2MWVkMDFmZTc1OWQyMmQ2ZGFkNjEwOGUwM2NjZmRjNzF=
iZGJkOGNmNjdjNTIyMzc4OTk4MzgzNjE1NzIwMjQyZDU5" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNGFmZjY=
4OWNmYWU4YjMwM2QyOTdiMzBiNjY3NDQ4YjFhMjA0YmQxNjgzZjlhMmI1YjY4N2E3OTQ3OGRhYz=
M2N2JlMjA0NzcyZGI1N2U1NjQxYjgwZTEzNDAxOGY0OTg1YTZhOWUxN2NlYjVjMGY4N2Y2ZTllY=
TY1ZGVhMzQ5MzhmNTVjNmI1YTkyNzZhZjdiNTk4ZTY5Y2I2YzI5YTg0ZmRmM2FhNDNjMTBmMDQ5=
NTRhZTA3ODYyOTZkMDdjM2EzODQ5YWIzZmM3MjlkOTVhNGMyNjliYjY3MTllODQ0NzU5MDUwZTI=
1Y2Y4YTU4MGI5MDQ2MTQyYzRhZTY4NTc4MjU5ZDliN2ZmZWIyMTUyNzA1ZDU5NjM1YTUxZDVlMG=
UzODBlNGMzYzRjNGE1MmFkMmFhYTdkNTllNjYzN2RjODAzZDEwOTJjYjFiNDg4NTAyZGIwZTk1N=
DViMGJiNmRmODRhY2Y0OTQ2YjNkNjNiOTNjMjMzZjAxYTNj" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DYzBiMzE0ZGRl=
ZDVjMGQ5M2Q0ZTliY2MxMDM4N2JjODA1MTkxOGY0YjM2YmMzMDA3NmY3ZDlhMzg3NDYxYWNkMDF=
jYjNlYjNiODk5NDZjMjA5YzZiZmQzMmFmMGQ5YmNmNDkyYTg3MDYzZGI2NzY5YTMxMzMxOGE4Ym=
Y2Mzk5OTM5N2UyYjAwNTAzOTA4YjU3YjVlZDE5MzI2MWUxNmY0MTNjNmIzYzI4OWQ5NGNjYzljM=
2FiNWQ5ZGI5OTI5NThkZmY5MWE4MzM5Y2UzOGRmMTM3Yzc0OWE0YTQ0MzY2YTE2ZjViNmYyZjgx=
MjU0MTBkNjkyMmM1N2U2NDExZTI5NDIzZjg5YzFhZWYyZjkxMjJjMTYyYWYyMzVkNjY4MGUwNDM=
3NGNiMTFiZGJlM2U4Y2E1NWZhZTg4MGM1ZjQ2MmJlMTJiOWU4OTQwMjg5Y2EyYzMyZTE0NGYxZT=
hiNmZiNTRhMWJlMGRmZGJmM2Y4M2EzYzg1NGQ4Y2I1" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMjdmNjg2MmU4NmJiM=
mQzMmJmY2JkYWM2NjY0OGZjNGMzNzZlNjlkMGI2N2JjM2EwZTExNmE5YzE4ODUxNjQxMjczZTA0=
ZmM4ZjViMzZiZTE3ZmM3YWE2YWQ0ZDQzZTQ0NGU0ZTRiOGNkNGU1MmQ3NGNhZWNmZDMyM2VhMjU=
zM2Q1ZjkzNDA5N2ZiYTU4ODQxZDAxNDlkY2JmMDlhNDA3ZDdkYmVmZGFiMDI1MGRhMWJhM2NkMm=
VkNzZhM2M0MmZmNGFmZDM4OTNiMWU2YTA1YmY2YTUwY2NlMDkzZDdmMzU3YjBjNjE3ZTMzYTY4N=
mJkZjFhNWFkOGIwOWJlYjc1NzljMDQwN2YxNjM5ZDNiMDg2MGFiMjc2NDI4MjY5YjYwZWM4MGMz=
ZWU4NzAyMmRlMDk4MTA3YzA4N2Q2MzMyYjA4Yzc1OWI4M2FlODYyNTVkYTQyNzhjYWQzNTI1YzM=
4YWUyMjk3MTE1NTJiMGIyZDAzM2Y4ODFhYTEy" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DZDJkODdjYzEzM=
mVmNGE0MzA5YzEwMTc3Nzg5YjdlMzkzNWZkZDAyZjkwNjIzMDlhNDc3YTk0MDJjNTBlY2I1YThi=
NmRlYjIzYmU5ZWQyMDRhYzEzMGFhY2RjOTU3NjNkYWRjZWFiZmQ1ZGNkMTI2ZjgzZDk4NWY3ZDA=
yOTI2NThjNmZiMTc3YjdhYThiOTk3YTE2MzhhNDBjMDRjZWUwYzg5MjA0ZWI3OTQ3NjhlODgwMG=
M2OTU5NTRmZTc5N2Q1YjkxZDhhMGE3N2Q4NWYzYzlmMGRmYWVjYmM3ZjJiOWU1YWMzNDUwNGQ3N=
GVmMTBkOGUzMzFmYmY5NDdmOGJmOWYzOWExMmYxYzUxNTgyNDhhMmZmNDAzMDY2MGFiODYwMGEx=
OGNmOTg0NzViNDZlMTIwYWRiMmJhNTBlNjA4YmM3ZTkxNGM1YmI0NGRlZTE2MjQ3ZjY4ZjEzMWM=
5NjcwMjUzNjU0ZTY0YWIzNmI1MWU2YzZiYTY5MmM3" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DMjMwOTM=
3MmRjM2Q4Yjk2MmNlZmZmN2QzN2QzYzc3NGQyMTJhMzYxNzE2YzJmNWZhZTQ1MWNhMmFmMjRiYT=
QyNjgxMmE2NTg4MjJjMWRhM2U3ODc3NzAxMWVmZjFhNDlmZTE4YjRlNWI2MmExZDdhNzA4NWQ5N=
zdjZjcwZjIyMjkzNTA5YTFmZDNkY2U4OTVkYjE4NGFhYmYyZjlkODM0MjM2MzNkMTdiNGZmZDk3=
YTE5MWRiODYxMWQwZjVjY2FhNzcxNzMxN2FmNDdjOTY2MDBlNmYxYmFiN2JkMTRmNWI4ZDhhOTU=
wZjNiYjIyZjRhMTRhNjYyOGFlNDA1YjAzNzc1ZGUyMzY2ZmY1ZWM2ZmY2NTkwYmJhNzZlZTJjMW=
ViOWNlMTNmN2Y1ZmM2NzAxMzFlN2NmNzVlYjRkODExYzE2MTE1NzVhYzQzMGUwZGNmMjBmYzNkZ=
DU3YTE0MzkyM2MyNzIyM2JlY2I4YWE1NDA5NmMyYzBkMDg0MjQ2MQ=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMjJmMjdlYzk1NTQ3ZjgyMjcxOTk4Nz=
hjNTBiNzk4MGZjYjM3NDcyZTE1ZjYwZmZjM2E1NzcyMmM4NTFhNGM5MWNjYjQyMmExOTdiNTE3Z=
jQ2ODVlNzU0NjgxOTUxMjk4OTE1MzM4MzhkYzgyYWFiMGQzMWNjZWQ5NDJlZmY2OWYyMTVjYWMz=
OWI5ZDBjOTg5ZTQxNTdjOTcxZDQ3YWZkNzVhNjk3OGIwNzRhNGE4ZTRlZjc2MTc0NmViM2JhMWV=
jN2NjNzc3MTZkOGJjNjY3OWFmNTMyMDZlYzY3NTNiZTA3N2E3OTA0NTRlM2I5YWM0NTY3MWIyZD=
BiYzc5NDU1Y2E2Njc1MjFhMWE3NmUyMGZmY2RjOWI1OWRhZGVhOTgxMDNkZTBjYzdkYTY0Mzk0O=
TAxYWFjY2ViN2UyMjg1MWVmMGY5OWM5ODI3NzdkNzg3ZWE0OGEwNDJhNTZkOWZlMTk5MTMyM2Y0=
MzQ1ZTA3MDlhMTcwNDYzOTRj" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DYjcyNjY4N2FkNzBlZTBjYWUwOTgxYT=
k2ZGM5YjI0MzU2YTg0NWJkNWU4OGNmNWIyZGQ5ZWM5Zjg1YjE0NmI5NzU0ZDFhZTIzYzE2Yzk5M=
ThmMThiMjFmMjNiYjFlY2ExMDA5YTJlODAzMmFhYzg3YWQ5NzAxMzVmODNkMzI2OGNkZDY4NDk3=
OGJlOTI0MzA0YzI4MWVhMTc2MjFjNzlhNDBmM2JlYWMzNjc2ZDc0YzNiMjA2MjQ5NDhjNDJjODV=
mMmEyODg4NDI4NGU1Y2VhMzAwZmFiNTg4OTFlMDcxZjdjZDkyNTMzM2EwMmIzNTYxNGI0MTliNW=
JiYzc4ZjRkNzNjNWZiZmUwMGZiOTk0NDU2YjgxMTExODdmYmQ0ZTE0NDg5ZThkMDlkYTRhMzRhZ=
jQxYzNmZjk2MWVhNDMzODEwZTAwNDI1M2M5OGNjODY2YzY3OWY3NTA3NDM0YjI1Yzc2MTMwMWQz=
OTlkMWIxOTAxZGRlOTM1YjU0" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMmQwNzEwNWM0YWJl=
ZmRhODdhMmI1ZDgwYWNlYTc2NTY0YmExYjRlM2M1Y2JhYmZlYWRjNDU3ODA3ZmU3NGY1Y2NhZDQ=
4OTk1OTRmOTBiYzRhMmI4Nzc5ZGQ0YWYwOTRjYjQ0NjE5MzhmYzllMzAyZTVmMDcwNGY2OGY0Mz=
I0NjBjN2JjMjM2ZjE4MTgxNzBkNTk4MGNhZWQxMDY5YTYwMDNjNTI3YjFmZWQwZWNiM2Q0MGRlY=
zE3OGFlNjA2MDlhODNiOTE3NjBiMGQxODhjMDNhNWYyNTVhNzVjNzBlYzMzNTRiYmM4MTgzZGIx=
ZGI0YzBmOGNhZThmODJkZjg0Y2M2ZDUxN2Y0NDU5ZTA0NThkY2Y5MDkyZjg3ZmM2YmJiYjliY2U=
5ZjJhYjQ4MzBmYTRkZTdiNGJlNTVlNzljZTQ2M2NhMWE0YzY4NjI4M2YwMTU3NDk1MTM2ZTJjNz=
M2MGY3MjUxOTlkNzcwOTIzMDU1MmZhYTIxZjZhN2M5NQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMmJmNTBhMzNhZWQ4=
ZmM3NGQ3MzE0MmZlN2FkYzZmYjRhOTAxMDA3NGRmM2ZlMGE2MGU4YmQ1Yzg4YmUwYjk1NTc5ZDQ=
5ZjJhNjk0NzA5MGI3Y2U5N2UxYjRkNGI2YTMwOGQxNjllYjE3NGFlMTJjYjMwOTkxY2FjMGZmND=
czYTQ2ZDU4Y2YzMmFjZDE4ZWZlYzQ2ZTg4ZDc5NzY2Y2UzN2NkOGYxMDE1Mjg1Y2VlZDRlZmUyM=
Tc4YzliZDk1YmI5NmQ1MDU3MDA0NjkxYTRjZTAzYzhhNTcwMGI1MDFlMzViYWI1YTJmMmEwZDRl=
NmE5ZWJhMDI0YmU2MDU5NWMyZDBiYzUyN2RlODY3YWMwYmJlYWQyNDA4Y2MyN2NkMjIzOTRiZTJ=
iNGJlOTI4OGFhZDkwZTFlNTkzMDNiMGUyYjM0NTc1ODBiYzRmZmRmOTE1MzE3YzJjNjVjMDA2NW=
Q2ODliMGQ2ZTUzNDA2YTM0ZDhlOWY4YmU3YmMxNzc0OQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYmRlYWJiZDg3NTNm=
Y2IyMDEyZGU2MmI2NGY3YjRkOWFjYWE2OGY0NzVmMTk1YWNmMTI1OTI3OWQyMDIwMTE0YzlhMDY=
1Y2FhYmU1YjEyZWViOWFhMjIxMWNhMzkyNTI2NTYxNDY4OWE0Y2I2ODhiYzRmMjdmZTgzMzg3Mm=
E0OTdjYmFhNTc4YTZhNmFiNWRmMGZiNzc5OTA5ZjhhN2U1ODJlOWU0ZWFmZTZkYTliOGM0Y2FlZ=
mU1MzY5ODBmYzhlOTgzMzBhZWNjMjA0ZTM2MjdjZDEzN2RlN2FhNzI2Yzc0YWJhMGRhN2IxNjZi=
NjViMjNlYWZiMDhhZDc4MTU0Zjc4ZDMzMGI5MmZmYTk4NDE5OGU0OTU1YTEzN2MxODM4MmZlMmV=
hZjMzOGM5MDhmZWM4ZDBhNmRjNjM5MGUxNGVjNWE0OTZiYWE3Nzg4YjNjMzkwZDE4ZmUxM2RjYz=
Y2ZTdmYTJlMjg4YmFkMzJkMmU3NWMwMmMxMTJjYTE3Mw=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTkxMTZhNWZjNmRj=
Y2NjNWE1Y2MzZTY3YmZjNGRmMDIwYmFiNTM1N2NlNGE4ZTg1OTJiZDg2YzhkNDhmNjU5MzVlYzE=
5MGUzOWQ1NWU5NWU5NGM3NTcxMzY2ZDA0YjMzYmM4ZTRjNGRhNjcwMGM4MDk1ZjhmZDE4MWU3MD=
dkM2ZlNjFiZTM5ZDVkYmRjYjk3MTJiNGY4ZTA4MGNlYzMwNjU2NWYyYjBmZDM5YjM3NTdjYTdmZ=
WY0MzYwYjNlY2FjYmIzN2Q4ODZiMDZkOTNlNzFiNmY2ZmI3ZmY1ZTBkMjcxYjVkOWRhYjg0MzRj=
ZGNlZmZiODFhMGIxZmZiMjU2OTc1NTRlZTkxOTYzZmYwNThiNmZkZDlhNTI2ZjA3MmZjOTc4ODF=
jNjI2YzA2NDI4ZTE2ZTMxZTk2NTAwMjQxMzU2OGJiNTEwYmU3Yjk1M2I3MmVkNTE5MjdjZmVkZj=
E4N2YwODY1MjIzYzJlOWM3MzMyOGI2N2QxNzAwN2UwMw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOWZhOGRkYmVmYzFlZm=
NmZGI3OGMzNTlmYjA2NTljM2QwOWQ2MTU0OTU2YzcwYzIxOTg3NTRiYTNjMWU5NjgzOTdjMzQ5M=
jFhOGE1NmI5YmU5NGU1OTg1MWY4MmNkYmQ0NjE5ZjkyOGFhYjk5ZTYyMjRmYTBlOWQzYmU1ZWUy=
OTYxMTcwZTI0ZDNhYWJmN2U1MjcyNjAwYTcxYjliMmQyMTBiY2I1MDgzYWRiNTEzMmE3MTBhMWZ=
iODg4Y2E1ZjJmMDUwZTU0M2JkMjRlMmRhYzRkMWU2NzFkMjE3ZDBlNDMyNzc0MDRiY2E5OTAyOD=
VjZTMwM2Y5Y2ZiZWYyMzMwN2VkYmI1NGRlM2EyZjY0NjgxNDAwYjcxNDZjNGZiN2YyZTM1ZWU4Y=
zVmN2U5MWFiNDFmODU4Mjg2ZTQ3MmQzN2Q0OTZmMmJmOGVhNDhhZTA2NTgzNmIwYmU3Y2ZhYjIw=
YmE1ODNmZmVmYzUwMjRjZGZlZDg4ZWRjZmRjZThmOA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMmFmMDRhNzBhZmFh=
MTc1MTZhMTVhYjVmMWQ3NDkyMGNlZjk0NWZkODViZTA4NjZhYjcxMDY3YWY0NDliNjllNzQyMTV=
jZTQ5NGIyNmY0MTlkNjFiODU5NDRjNWI2NTkwZGQ4ZjhjOTk3NWEzYjgyOGYzMGY4YzBlOWM4Nz=
U1MmEzNDJkYmQ4NTdmYzljNGY0NzY4YjAzZjQyZTA1ZDM0YWNmZmNiNjAxMzU4NzIzNmZkOGQ2M=
WY4ZjgzNzBhYjg2YWU4NGUxNzkwN2E2NWYwMTJjMGZjMzljZjcwMTNiM2I4YjllNjczYjYyMTVj=
OWM5MDMxYTQxNmQ3M2FhMTM=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DN2ZkY2RiODhjZGY0NDVjZTBhOGM5ZjljNWQyZ=
DdhM2YyYzk4NWZjOGNhMjdlY2MwMGZmNjNlZGFjYjc3ZGFlZjJlYWQ5MWFmNjk5MGFmZWM4MjAy=
NDUzNWE2MWZhMzY4YTVjZmNiYjFmMGNmZjUwZDcyNGE4NmZiOTI1NzhlZDk3NGNjM2M3YThjY2E=
xMDZhOWQ3NDZhNzQ1Y2ExYjFlOTA5MzYwN2JiOGM1MWY3Y2Y5N2ZmZjEzYzdiODAxMDQ0OGViZW=
IwMzQ5ZTY5NjA3MThjZGQ4ZGEzNjg1ZDJhMDE3ZWRjNTA1MmVmYWM4OTVhMDQ2ZmFlYWFmM2FmN=
zEwYzY1ZmQ4MWQ4MmFjNzVkZmQ3MmI1MjVjMTNlZmUxYTAyMjE4MzM0YjhiOWEwZTVmMjRhYTg1=
ZDUzY2ZhODQ1NmYzNjFiNjliM2FkOGU0ZDUyZWVhNDk0MTA2NGExNGM2MzhjOTgwMTYxNjg1ZmM=
4NGViOWE2MTc2ZTlkMTgyZDNlOTFlODA2M2QwYjQ4NDBmNDZjYWVmYTcwNGI0YjZhOWIyYzhlNG=
FiNjQwYWI1NGYyOGExZWFkY2Q=3D" style=3D"font-size:12px;line-height:134%;font=
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
