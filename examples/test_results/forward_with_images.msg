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
From: localhost:1333?u=3DYTY3NTBiZGM0YmYzYWRjMTgwZTAxZDJjMjc5ZGZhYTc1NjVmOG=
RmNWY0ZWI0MGYwYzUzMmFmMTRlZjFiNTYxY2NhMzdhZjI4YzcyZmU4 <mail@eg.expedia.com=
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
<localhost:1333?u=3DZmJiOWY4N2MwYzFjZjE3ODM5MGNkMjllNjhhMTlmMzFkOWE3ZGM0ZDQ=
xYmQ3MGRhMDNkNWIwZDdjNGQ4Mjk0ZGRiMjIzN2YyN2I1ODY4OTYwYTgyNDRkYzFmYTgzMWU3Mj=
M1NjE2ZjQwMGQ1ZmRhYjBkM2Q0MWYxMjAyODY4MzEzMmEyOTUyN2RlYmIyMjA3MGViMGJjY2RhM=
DhjNWFjNzU0Y2U5ZTMyZTI5ZTc4NWU3YzdjMzQ4MzZjZDU1ZmU4Yjk3NzkxNzVmZGJkZGNmNmMx=
ODU1OGY1ODU4OWQyZjBlZmVlODBmMDgzMDE3MzBkODEyMzY1YjcyMDA2OWQxYmM2MDQ2MjM4MTd=
iNGFiNGZjZTU5ODhlMzgyNmYwYjdkNDQ2MWQwNjI4Y2UzMmRjNDk4Y2FlN2FjNWNjZWI4YjE4OG=
MwNzcyMGNjOTZkNTBjYmUzYjc1MzQwZTMwNzk2OTIyY2M1YjIwOWQ2YmI5OGRjNGFmMmM2YjY1>

* The Travel Edit
<localhost:1333?u=3DNDViYTE3YmZmNThkYTIxZGRjMDkxYWZmYWExYzhlZGE4MjRiZTYyYTF=
kOWEyMzgwYjViNzNhZWI2ZjFiZTE5NjUxZjE2ODAyYmUxZjM5MzAyNjZmNWE0MGQ2ZDM3NmEzMT=
Y2M2FjMDQ2MzRmYzY5NTQ5N2IzMmUzYzE5Y2VmMTQ1NDIwZGM0NjA2MGJiMWQ2MTUzOGViOWUwN=
WRiNzEzOGQyNTQ5MDk1NDIwNzE3YjVmNDk3OWNjMTA2ZjcyNDhhZGE1MzczN2QzOTM0N2FlMTlh=
ZjQwNDMyM2Y5ZGUxNjE1NTgyYTQwZjMzYTczNGQ5NTMzMWU3OGQzODE5YzRiYzBiY2NjY2U0NWM=
zOWU2NzQ1Y2YzMDNmYTZkMGZmY2QxMzU0NmJkYjkwYzM4OGE2MmIzZDVmYzlmNjZmYTE1YTFkY2=
FmNDRkZjI3YjgyODU0Njc0MmI1YTAxNTBmNDA2Y2U3MjYxYjAwZGQ0N2ViMDA1ZWJkNGY2NzIy>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOWIxMjQxMjliMWVhYjkwNTUxYTRjYTMwZjMxMDIzMjhkMDZmMTM0OGI=
4MDRkZDU2NzkxMzU2YTI4Njc5MzIyNGJiNjA4YmUwMmFhM2VlMWRmY2ViOTIyOWIyYTQwY2U5OD=
kxNWJiNzEyMzQ2YjBlYmI5NWE0ZTE2MGEzYTBlYzllZWJjOGRjMWFlOTRjZGU0YzU5YjI5OWIwO=
DEyY2I0NzYwN2RjYWM5OTgyOGM5ZmUyOWJlZjZlY2MxMmJkYTM3OWQ5YjYyY2ZkNWFlZjc5ZmFl=
NjczN2QwM2MzODM1MGYyNjBhN2IxNmI1NzIwOTBkMTNmZWJlZjM3MjcwMzg5ZTNkNTQwOGNhYTk=
zZmIyZDM2MmNmNmRlNmI1NTY3NzAwOGFlZWQ2YmZlYWI3NzY3NDIyMjFjNzJlMGNlOTkzMTYyNj=
Q4MDY2ODE0NGIzZTY3NTk1YWY0MWZhMmNjNjg5YTJlM2E3Yzg5NTRkOTBkMWE0ZTg3NzFhYjJi>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNzBjNjhjMWE0MTEzNTAyNGU1YzNiMWE5ZGNlZmU3YTllMWVlODVkNmN=
hODhhZWQ1NDg2YjI2MmJmYzkyZmUxNTg3N2Y1YTM4NGNlMjc1Nzg1OWYxNDc5ZGYzZjhhYTY1Mj=
VmMWQ2N2M1NDMzMTEwODkzMTNjZmNhMGQ3YzBmZDkwZjc4ODQzZjViYzI5M2VjN2ViZmYyMzU1O=
TA0Mzc0NTg0YzAxZDk1ZTYxNTQ1ZjczY2IwODhhNTIwZTAwOGQxNWFkYjFmOThmZTE4MTc3NDI1=
Zjk0YjFjYjVkMzZlOWYwODZhOWZjNzdmNDJhNTRhYTgyMzliM2Q2ODRjYWYwZTgxZjljYzIzNTR=
lMjM3MDVhYzc3N2QxMDg5NTlmN2IzNDE5YmUwNDJmNmVkODEyM2YzOWMzNDliYTY0ZDBiYWY3NT=
djYTFkZTBhOTFlYjIzOGY5NzdjNTI5ZDc5Yjg4OWMxMmNlZWIxNWI4MDg5M2ZhOGY2ODZlMzI0>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNDY1MTQ0OWI1NmVhZTEzMjE0N2EwYjA4NzQ2NTI0NTI4YTg1NmViZTU=
zMzRiYzFmNzRmMzlmZWRiOGFiNGYxNmI0MDUzZWJiYWI2MWJmODFhMTZjZjI3ZTQ0NTY3ODJlMW=
I3Y2FmNGRkOTQ1YzJkMzg2ZjRjMjVjOGI1YjMyNmUxZmE3M2FjZTcyMjYxOTk1YzQxYTBiOTY1N=
2ZkM2JlNGQ0YzA5MzA4ZmY3OTZkOWVkOTI4ZWU0N2NjMmUwOTZhZTAxZDlkMDBiNWU1NGI0ZjJk=
OTZjNTlkNTk3MTk4NjRlOTMyNzE0OGZmOTRjYWVhN2E3N2FmYWRlMTE1ZTA0YTMyMTBhNWY4MTM=
0OTRiNTBlMjIxNWIyYzQ4NDUzNjRhYjMwYjAxZTRlNWE1ZDgwZTg2NTFmMjNiMGRmNWY2ODExZD=
U2YjVkZjc4NzU2ZTg0NzAwODIyZDkwYTUzMWMzMjEyM2EyNzFlNzkyMmRhZmIxMTcwZGU1ODdh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNGFiN2YxOGVlNzYyNzRkZjIzMmEzYTZiMGIyMTVmY2I1M2VhOTcyNTk=
2NGYwZGQxYjM3NWZhMzRiNzUwNzZiZDMyNGJmNDVkODNiNWQxMWRiY2I2NTJhNThmZWE2ZDA0YW=
Y2OWJkZjE5N2I3ODlmZmMzZTE2OTFjN2Q3NTM1YTI1NDg4ODhjNDVmZjcxM2U0MjVhNzE2NThlM=
zcyNWE2ZDYwMTEwM2QzZDgzNzYwMzExNjg5NDFkM2Q4MWM2Njk3ZjRkNDA2ZTg2MWIxZjIzOGE3=
ZDMzMWRjOWEzZWU2ZjE0NDkxNDMyZjg3OGUyNmU3M2U4ZWVmNDVjMGI1NGJhMDMxY2YyNTg3ZTk=
0OTk1NGJhZGQ5NTg1OWNlNDgwYWNmY2VhNzI2N2E5NTgyMDFmMWI0NGFkODFmOGFiYWI2NTU0OD=
dhNjE3MGFhMzlmZGYwZjkyMDMyNjY4NmJhZDRlMDQ4MTcyM2RmMDBhYmFlMWYxYjU0NjdmMDIw>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMGJkN2Q1NDdlNzZjNDc5MTA1MmI1ZTYwMzc2ZTllYjIwMWE5ZWE0NDl=
hZjEyZjExOTEyOTE1NTAzZDAzZjQ1OWVjNjJkYTAxNGM4ZmRjMTI1ZDM2ZGM2Y2MzYjQ2ZWU3ZT=
gxYWM2MWM1MTIxNTRhYzA0NTE5MWIwYWU1ZDZjN2NhNDg1MmVjNTYyNDNmMDczY2FkMzcxYmQxM=
2JiNGQ0NTRkYjY5MDYwMmFlNDUxOTQ2YTJlNzU4YzBlZTczNjRiOGIyYjc4NDFlNjUzMmQwZjFj=
NjA4Nzc5MmMxNTVlOTQwNDJmZWRhOWJkNjc2NzQ3ZWE3MzZhMjQ0ZWVmNWMzNTkzNTc1NTRmYWQ=
yNDY3MzY3YjM3NjJlMTcwNTIwZjNlNWNhNDVmOWQ0NzI2YjU0OTEyN2VhODA0MWRmOTU3N2VjOG=
RjMjAyYjJmOWIzMjkxYmJlNzliMDE4NDM3Zjc4Yzg0ZDY5ZDkwYTExYjE3YzU1YzljYzQ3OWJm>

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
<localhost:1333?u=3DMWE3NTFhOTA3NDkzYzVkY2FlOTcwNDI0NTgxZjAzMWM0NTk0MDdkYjA=
yMDExOGQ2OGY2ZDI2Y2FkYmE2ZTE0MzdlYzU2NTA1ZmQ2YTNlMjg1ZDA1YTUzN2E5MDAwYThhND=
lhMTZhNWZlNWQ5YWQ5ODBhZmQ2N2QzMTNkMTFhNDg5MTJlZmY1YTg5NDcwODFmNWY3ZDQ2MGZiO=
WEzNTA1YTIyNWNjZWRjMGMwZGFiYjI4MDlmMjg4OGZhZmI0NDc3MmNlNGM1ZWRkNzBjNTMwZjM5=
Nzc4OGRiYWY3NzU2YzUyMzlkNWU0MGZiMjMyNzMxNGMwMmZhNjExMjU4YWJmMjMxNjc2NjgyYTU=
xNjYzOWE4MmUxMGVlOTgzZjkzMWIwNjE4ZjcwZTg2MWVmNGVkNzU0OTIzMjM1OWNkNjQ5OWEyMD=
c0NjQ3MmVjZTY0NWU2MTUwYTIzODkyYTBlZTViNzU1OTc1MDljYzBkN2ZmYzZkNDg4ZTBmZWI3O=
TUyZA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DYTIxMGZmZmRhYjA5MDkwYzAwZWQ0YmMxYjVmMDJjZjJjNTNlNjgyN2N=
hNjU2ZjFmOWRlNDg2ZmRjYTE0ZjNhZmFlMDg0NzA1YjlhYTZhMzc5YmYyZjQzY2QzZmRjZDcyY2=
MzNzRjYzljNDQ0MTJmMzExZTM4MGZkNDkwODVhMzk4OTI0NzgyNTVlMDAzM2VlYWFlNDE5N2UxM=
DExZDFjOTM5MTUyNzYzMzFjMTVkZGI2ZWRjMzI3YmUyMDc0OTNhZDg1ZjMxYjk5ZGJmYzU4NjBm=
ZDI3ZmU2MWI0NjUxYTI3ZTEwMjVhYmJlMDAxMGZlZmYzZGI5YmY1NzllZTVhN2Q3ZDU4NDc2OTI=
3NjBmODc3MWMzYTk3Y2I5NWVkMTkzNWU0YmNmYjEyOGRlMWE2NDM3MWVjZDgxMjFhOGU0Mzk4Yj=
ZhYzY5NDIwOTFlOWJmYzlhMTFmNDBhYTJkZGY1MDBlMTVlMjExZWMzZWIyOTQzNzJjM2QxMTQ5>
  [image: Google Play]
<localhost:1333?u=3DNjNhZTYyZDM4NjRmMDAzYTliMWQzZTZiNWZlM2Q2NTA5YWExNTM4MDU=
xODY1NjRhYmMyMGI5N2I5MzBhZDgyMTNlNzFhZGFmMjQ4MjExNjVmZTEzOTg2ZTI2YTZkY2UwNj=
lhYjgwOTdiNDdkNDNiYzkxMGQ5M2I1NTM0YzdmMDhhMGU2MzgyOTMyOTEzZWI2ZDM4M2Y1MTM5Z=
WFlNWMyOTYyOGRhOWMyYzJjMmE5NTQzYzc3OWU1ZTU3YWE3OWRkNDA2MGZhY2EyMjgzNmQ1NDUw=
MGZmMjk3NjZiNmExZGEwODRhMTlhYTQyYWY0ZTQ2YWNiNjY3ODEyNTViNmRjZjliMDU2NWExYzA=
3MmNlMDBlODYxYzk1ZmFiZWJmZGRmMjdhM2JkMmU1M2I1ZDZhMjQ3OTQ3MzMxOTYxMGJiMzlkMW=
JjY2M5YjJmZGQ0NTZjYzVmN2FkNmQzOTRlM2Q0NWUwZGNjMWRhOTc4OWFmNzViN2Y1NjhkZTg0>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DOWMwNzljMTIwYTZhOTk4M2M1ZTcwNTBiZWYzYmRkNDdhYTM5ZWZhYWY=
3MDdlOTQ1N2U2NWY2ZDcyMDM2ZTk4NGQyNzM0Y2I2ZmY1YjAyMTliYjgyZmRkZDY4ZjhjM2ZhOW=
EzMzI2N2U2ZTgwZTQ5N2JkYTBlZjZhNTU5ZjhmMzg4YTNlNjRiNDZiNDhkNGM3ODM3YTAyZTVlZ=
DFhNWMyM2MwNjE1YjgxZmQ2YmU4MmQ2ODliMDQ4ZDFkNTNmZWEyOWZiNGJjNWVhMTBjYTY5NWRj=
MTIxNjBiOWQyZDFkZTZiZDE1OWMxZTA4OTVhZTRmYTVhYjE3ZDA2YmRkMzhiMjNiNTczZjE5YjM=
0ODdlZGQ3ZDA3ZmQ1OTc0Y2ZmZDAyYTZjYmZjZDg2ZTA4NTgyMDY4YzY4MGE0NWNlYjU5YTY4NT=
dmZGUyOWUxMGU2NzM3YWFiNWQxNTg1YWFlZmMyMDkzZWY4ZDJjMGE1ZThlYWZmOWVlMWRiNTI1M=
zI1ZA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNDRhYzgxODcwNjZiMWFlZjNhYTgyZWFkNWRiY2FmZWUzODA0YzAzM2U=
yYjVkZDBmZDkxMWMwN2Q4OGYxNmE0ZDBjNmQ3MjAxYzNiYjY1ZTRmMzczMzg2NWRmNzI2NWI1OT=
ZkMTE3ODJlOGIyNmE5MGQ2MDdhYTAwMWRhZjhmODZiNDljZGNlMDI4NWVkNDgzZjBjYjZhOGE4M=
DUyNDZmOTBjYzlmOWQxZjY2YzEzMDlmZjZmYzBhNjMwZjhmYjE2YzQ1NWY3ZGQ5YTdhNDhmOTY5=
N2ViN2NmZDE5MTM5OTY4NTQ1MGMxNjI2OTRkZDE0NWNhNzA5NjVmNDdkZjRlMzg4YTI4ZDI3OGM=
1ZDZhYjhlNzJkNWI5OTIxNDVkOTBlYTBkNWM2M2UwMTRmZGE5Mzc2Yzk3YWRhNGU5YWRjNjUyYT=
RhZDliOTdhOTBiYzY0YjI4Njg4ZjhlNjQxM2RhOGMwOWE5ZjM4YWM2MjhlNWZlNGYzMzNhMWNjM=
zhiOA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DZTdiZmM5MGY1NzVmMjFmOWFmYmMxZWQwZTVjYTIxOTUyMmNiMjgxZGN=
hOWE1ODNhMGQyZGRmY2VmMGIyZjFlYTA0YmY4ZTdjMDY2Y2UxNTVmNWIwZjQwMzZhYzlkOGZhMD=
liYzNmNjE2MTI0YjBmNzkwMjJhZjM1MDFhYzMzODA4MjNkZmIzY2YyOTBiNGJkNTJjMjkyZDNkO=
GIyMDkyYjg2YmY0OGY5OTNiMDg2YWVjOWQ5ZTA2YzA3YWIwMTZiYjcxNzE2OGEzYjIyNTJlYjJm=
N2I3ODljOGI5YWZjOTFiMGQzNWViODRhMWEzOGEzMGM5MDViNGUyYWE1Y2ZlZDQ5YTUwZWJkMTV=
hODNiYzVkZGM5Yjc0ZDFmZjliMmY2YjBhYTVlNjY2NDE2Y2RkMDliMzI5MDE4NDQ4YjE3ZjkyNT=
RlNzI2NTAxZjE5MmM2ZGUxNTIzYjRkODVlNzk3YjAzZGU5OGI0YmUyZDZhMWEzNmQxODY2ZWJjO=
WYzMQ=3D=3D>
   About Us
<localhost:1333?u=3DOTY4MDUwMTQ0NGEzNmYwZmUxYzY2MDQwZjc4Zjg3NDNjYWI3M2E5Mjl=
iMTlhNzliMmU5NTI0ZjNjOGMyNDY1MGZkY2Q5ZTZjYmFmMzExMGFmOGFmY2U4ODAyYmU0ODkxYW=
E1MDczNjFmMWFlNjMyYzY1NmZhZjMxOTgyNTAyNzRhZTRkZTU0MjRlN2RkNzk5ZTdhNGIzZWFhZ=
TQ3ODcwNzI2OThiNDZmYTdiMGI5YWNhOTc3ZTJhZTdkNDY4ZTU1ZTcwY2UxZjMxMjU5YzliZTUw=
NGJkOWYxNWViNmU0YzRmMzQwYzcyOWM0ZTg2NTc3MmU4MGE2Y2Y3YzhiMzQ0ZDhlZjM1NjYxZTA=
zMTQ0ZDYyOTM1OGIxY2EzZDQxZGEwM2IxMDc0MDQzMzUzMGFmMGJmZmIxNDA2NGQ5NjBlM2UyMG=
I4OTZhYTc4OTlkNzJlMjBkZjI4NmM4OTg4ODIwMzJkMDI2MDMwYmU2ODJkY2IzOWI5ZjdhODU2M=
DI0OA=3D=3D>
   Customer Service
<localhost:1333?u=3DZWVmYWUwMTc1NDE2MTZlZWUzNGVmNDNlOTE3ZGNiNjdjNGVkZjE1OWU=
3OTQ3MDRjMGFhYTc5NmQyNGFlNDRiN2NhZjkzMTg1MDk3MjlmMzM1MmY1NTU3YWE2Y2IwYTk1Nz=
BiNDU2NmM3NzcwMzJkYmUwM2ExNWQ3Y2EyYWIwODg2ZTJmZDc3MDU4M2QwZGE0ZDJhMGE5MGQ1M=
DdlN2EyNTIxOGU1NTBkNjRiMGIwY2U2MDI5MTMzYzJkOTBiYzFiYTE4MjUxMTcxM2FlYjI5MDhl=
OTU2MzM1OTBjODgxMGQzNTNhZWQ0ZGRkZjZmMzlkNWVlNGIzZmExNGM5NWUxMTNkYTc4MGQ0MzY=
wN2ZlMzhmMWZkYmY5NjVlNjYxNzVkZWE5YWE1YjhjODcxYjc0YzQ2NDJmOTdjY2VmOGFiOWZhNT=
cwNGMyNzk0ZGVjNWUzYjcxMzE3MWMzMzJhMDFlZTI3YzJhMTNlYWE5OGM0NTRiNDFjMmVkZWRlO=
DU3Yg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNjliZTM1ZjU1MWZhMTdhYzcxOTgyZWZjZmNmNWJiODMzNDI4NzZjYTN=
lMTVlOTVhMzI0YjEyMTJjZTJiZWU5YzE0YjcwZmY2YjU1NmJiZGEzNTFkZDFjYWRjMWQ0NzFjYz=
VlZDE4Y2JiOGI0OGRlNzM2NGYwZmM4MjIxOWJjNWE2MjU0NTVmNjE4NTgxOGZlNzk0NGNjZDNkO=
WI0NGU3Y2UxODVkMWQ5ZThkODhkMzA1YzJmZjczYjllZTU0MjRkMjk3ZmFkMWZmZTA2MTdlMGUz=
ODBjMWE1YzI4ZjY4NzNkMWRkYjg3YTVmMDA3NmRkNjQ2ODk0NDM1MDI3MDU=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNGFlZmIwZGQ3NDA1NjBhNWFkNjU2YmZlNDk0YWQ3NmFkYzIwOWQ2N2J=
hNmJmZDM1NDhjYjA3Y2E2Y2Y4YzYxYmY2ZWY4NTM5ZGUxZDM3N2RmMDYyNjg3MzAxMThmMGMxOW=
YxNjdhMmJkN2M2MTIyYzE1ZjE2NTZkNmMyODc0N2E0MzVkNDA2MDY4OWVkMjZiZGU3YTg4OTk2M=
mIzZTc4MGMzZmFlOTVhMDUxNjAyZjdiMjIzZDliZmI4MDJhODQ2YmIxOTMyMjBkM2FlOTk0YjBk=
ZWZhNDQwYzM2NGIxMTkxOWRjY2U0MzEwY2UxMmIwNjcyY2QyYzM5YmVmYTAzZjEzM2ZjNjkyMjQ=
2MDUzOTlkOWEzNzYyOTA5Y2I3ZDhiMzE1OTAwNDAxY2M5NGNjZGJjMGEzNzg0MWUwMGE5NmFmZT=
ExOTQ3MDE2NGVlYjI5Y2E0NDU0ZTQ1YjliMjAzMDNlZmIzN2JkYjhkZjFkMDNjNDYzNmY0MDY5O=
WExMzBlYzA2MWFmN2E3NzY1OTMzMzBiMWIzN2Y4ZjcyM2U2Y2Q5ZDlmYjdjZWQyMzg1YTQ3NGQy=
ZTFmMWY=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZjNiOTZmMmY4Mzk0ZTFj=
NGQ1NjFmYjEwZjczOTRmZDIxYWY4YTQzNDc1ZWVkMDA0ZjYxZDNjNjZiOTlkZjEzMWI0NzI4MDl=
lNDMyNTdhMGNiMWVkZTU5N2U4NTBhYTgyYWI3NjAwMDQyMjU4Y2NkMDM1MmM4ODdlYmQ3NDQ1MG=
UxNTgwYmFjZDQ0YmIwMzU2Yjc0NWFkM2FlOGFiMDIwNjYzODU1MmQ1ZjY1MzkzYWZiZmFiZTkxY=
jIxNWQ5NGY0NzY2MDlmMTQ3MTI1NzY4YTM4NDYzNTFiZmFmNjhhMjY1NzIxNjUwOWZlZjk1MWRh=
NjczOWRmMzliYTY5MGI0YTdiNGMxMDc5YWIwMjg3YzNhNTcwYWRmMzZjNGQzNzc1ODhiZGMzODY=
2ZmM3Y2I5MjA1ZmU1MzkzZTY2YzUwNjRkZjRmZTg5YzZhM2Y1NmI5MmRjYzU4MTY1MTRhMjEzMT=
ZkMDczODg0ZTU3OTkzMDA5YmI0ZjU3ZGRk" target=3D"_blank">
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
?u=3DNGIyYzdhOGEyZGRjNzIzNTRiYzk0ZjIxNTU5MmUzMDNmOWIwOWYxYmJjNDIxMzZkYmE0OW=
ZkNDQ2NzFhODM2NDcxMTAxNjc5OWMzZWJiMmQ1Y2FmMzRkZDVmMmQwNjA0ZDFhNTJmOGM3MzJmM=
2YwNGRmYmFkMDhlODI0ZWE3M2Q0Y2YxNDEzMThjNzYxMGMxNzRkNzU1ZTM5MzhjZjQyODRmOThi=
NGNhZTBjNTNjZDQ0ZmNhMWI4OTZiMTcwMTQ1NGRiMDZjM2U4ZDU1OThhYzcyMTA0MDU1Y2YwMzg=
5MGIyODg4NDFjMTJhMTI2MWIzZGZmM2I3OWRkOTgzMzRhYTgwMjUwMjMwNWQ5NmEwOGVjZGE4Zj=
A5NzhkYTg2MzBkYWJmYjZjY2I3NWE1MmI0ZGY0OTM5MWVjNDU5MTE3YWE5Y2FhNjg1Nzg5NTZmN=
mU1NzBjYjhhMjg4ZTYyMGVmMmU2ZjhmNDMxMDk3Zjk0MWU2MTliM2U5ZmQz" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMjkyMmZmN=
zI2ZDUzNDU4YTVjYmE1ZDVjYjEwYzlhYzdlZGNjZTViN2UxOGI1NDRmNDI2MWM0NDVkMDkyZDc4=
MDEyY2U5NDRjNDkyNzU3NGMzMTg3ZWQ4YmE5OTRjYjgzOWY4NTFjMDRlYzkwM2M3MzI1ODYzNzY=
0ODI2OTRhMGI5OWM1YWE0MWFjNWI4YzI4N2Q5NmQ4YzYyYTJhNzU1M2Y5NzA5NjI3MjY3YmUxMD=
MxODQyYjEzODZlNTM1MGU2YmExMzE5NmQ3M2U2ZTIxMThiZGVmZjFkNzNiZTdlZmE4NmY0NzQ3N=
DJiYWYwNDczZmNjMzEwMjVkYTkxM2Y2YmQ5MDBjZjVjOGYzZmYyYzNjZDkyODc3OWE3NTNiMDRm=
NGM1NTZjODdmMjU3ODYzMGJhMWRmY2EyMDFiYTQ2YTgzYTQwZjZjODM0ZDA3Njk4Mzc5NDhjMjQ=
0NDIzNDZiZDNkYjkzNjdiNjRmZTQ5ZTNmMzgxMDc2NTI5" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZmFlYzF=
iZjgzNzEwZjM2ZWFkZTdhODI1OWY2ODhkMDU3Njc4MzZjNTQzYTBkNWY2ZmM0OTQ0M2Q2YmZkYT=
NmYWY2MTI5NzAzNjYyOTIwYmY3NjQ2NzMxMzQ1YjM3ZjlmNWNhZDQyZTQ5MmEzNjE4ZTdkZDBmY=
jI2NjMzYzRjMmM1NmJiNDRhMTZlYWNmODhmZWE0NGViMWU2MDkxYWEyNzE3NzI3NzU0OWMyZDY0=
NTRmMWVmYjE3NzAxZDc3ODEwYmVhZDBiNjViMzgxZjZlZDdlZDI5MWNjOGM2MDJlZTdiOTg1YjI=
5ZjIzYmYyM2Q4YTcxNTM0MjljNWQ2ZjNlN2Y3YmQwNTJiYTdlZDI3YzMxYjVhNTZiZWZmNTUyZj=
kyMzQ5ZTgwOTQ1YTg5NmRlMDZlZTA4YjhkNGIyM2Y5ZTVjNzNlZTZiY2QwOGZjYzg4MzJkN2M0Y=
mViMTViMGRhYmEwZGJiYTU4YTM2YmNkMmFkZmEwZjk3M2Zh" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DODA2N2FhYTZl=
Y2E0YmQyOGRhMjE0MzFmM2FmMDg2MzNiNWRiMjhiMjUzYmJjMDc0YmNmY2M2MTY4YzYzMDNmMGQ=
5Y2RlOGI3Zjk1M2Q1MmY5MTUyNzAwODVmZTJiNDhmYjA5M2JhMjlmODE0NGY2NTZlZjBhNTRlM2=
ViYWU1MTBhZjk4NzZjOWRjYzQxYWIwYTQyYTQ3OGM5ZTAzMTg2NzEwNzVjMzNiZWZhY2ViZTQyM=
DJjMTJhOTRkYTA2ZGZiMzdiODQyNWE2OWZkYzJjOWJkYThiNGRjODFiZjJlMDRjYWJlMDVmNjNm=
NTU5YTViMmY3ZjEyMzAyZmU2NjgyNzM0YmVmYjhhN2YwMTE0MjYxNjQxNzI3MDBhNjg0YmUxYWZ=
mMzAzNjg0ZjYyMDhiMjk3MzE0NTBiZjVjMzRjZjc1NjdhZjE2MTU2NDhlMzIwNmUwNmQ3MjI5OW=
UyMDA5NWVjYTQ2ZjljZWU1ZDNhZGFiMTNhMWZiYTQ3" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DODE4MjM2YmFiYWIzZ=
jIyNDU0MTRmMTQwY2Q0ODBmYTk3YjRjMTQ0NmVlNjc2YjVlZjdiY2M4MjFhNjExOWFhYTU3ZmRk=
MjQ1M2ZjZjRiYzUwM2VhNzA3YzFhZWIzM2Y5MDQ3OGI5MmQ2ZDRjOTllZjZhY2NlNGU4NGU3YjM=
wMjBmMDgwZTExYzI3Mzk3ZDZmMzViZTNhN2IzYWNmYWM5YWVhOWM3ODE0YTU3NDkxMDNkNWVmNj=
lkM2M5ZWFmZjdiNTVkYWYxZWMzMjhjN2RhZmNjMmI1YzRiYWM1ODY1NzM1ZDQ2YmRlNTlkMGRlO=
DQ4MDAyMmQwMmI3M2I4NDc3ZjRmZDA5NGM5OGRmY2ZkOTAzOTZlNDA1ZDcwZjNlZTNkNzdlZTcx=
N2YxYzdlZjcyNTkzZjM3MTJmYTNlZGNlZWYzYzRjNjJkM2RmYzhhMGIxZmMwMThiOWU5MmQzZDB=
lN2JhYmY4MjFlNWI3MTU1ZGQ1NjJhOTUwNzNl" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMGI4OGRiMjMxN=
zJjMTdlNTlmNzA0MmRjZTdmZTk0NThlMzQ1OTdhODQ1ODRjOWYxZmEwN2M0MDdhOTI3ZjAzYjhj=
ZWY4NWIyOGI0ZGE2NTZiNGM3OWYwODUxNzY0OGNkY2U3MWI1OWQyNzYwNzAxYzYyZmVmODhjYjR=
kYjYxNzM5ODEzY2JhY2E3ZGExN2I3OTcyNWU0YmNiZTExZTVhODIyMGMzZGRkOTEzNmNkODI3Mj=
ZkMGUwZDQ3ZTMyMzg5ZDA4NmNlNWYwMDU3Yjc4Y2Y0ZTU1M2I2NzA2MTYwOTRiNThiNTJiZTA1Z=
DlhYzQ1ZWYwMWU4ZTQ3MzkzNzBiNGRmZmQ1ZWU1OGJjMWU4YzJiZjgyZmNkNDEwOTUwMzA2OGE3=
NDg5YjIyNDMyYmY4MzAwODkzNDNjODVhOGZlNDYwYWM0MmMyN2U5YmYwZGU3MjQxMTAyYzJhNzl=
kYzA4Njk1OWU4NmU0NjVhYmY2ZmQ2N2M1ZjA0NWY5" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYjNiNzZ=
jNzA4YTUyMTg0NjIzZTAxY2FjNjQ1NzU2NzUxNGI0OWJiNGI0NDVhNmU2ZWUwYTU4ZDRmZGJmMT=
dhNjgzMTNlODExYjdhOTExNDRlYzllOWQ1ZDJmYzNkMzg5YTg5OTI2YWQ2NWNhMDQzZThkNzc4N=
ThlMmU4M2M1N2RiMTI3ZGQzOWEyNjMwY2Y2MDgyNzc5ZmU5YThhMjIzN2RjOGRlYTgzYmIxZTJh=
NmMzMWM0MzE4MGVkOTQ0MDkxNGE1ZGJkODFhZDljOTFmMDI1OWVhZDVkZDE3OWNmMjQzMGIzMDh=
jZjdmYzFhMzExMGI2NmRhY2U0N2Y1ZGRjZDgyNzBmMjJkMmRhZWEzZmJiMjU1NWI5MzIxMzNlND=
E4ZjZkODkzMTFiOWFhMjg4NjM4NzBhNThmY2RjOWZiZDc2MWE2MjA3MmRmYWViNGEyNTYwZDg4M=
Tc3MTMzM2UxYzk5MDAxOWFhN2Y1N2U4ZGIxMWNhMjRkNzk5NWM2Nw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNzkyYWMyYjQzNTgyMTUzODNhMDk2MD=
I4ZWFjMzgyNWJhNmNhNWI2MDZhODkwZmNjZjVhMjdlM2YxODM2MGU0ZjU3NDNhMGE2OTM5Yjk5Z=
WExN2FmODVhYzA0Mjk5YTJiYjM1ODExMjYxMDU4M2IyMzY2YjM3NTljNGQwYTMxMWE1Y2QzMzlj=
OTMwN2VjZjAwY2E4NmZjMmNiYmJiNWFjYzA1NjJkOTY5OGM5MjBiNmQ4NjZmOTRjYWE0NDBmMGU=
2YmQxZWU1ZDIyODRiMDU1MGYxNTk1NjViMTdkOWMzNjNkZWY2NGFlOTM0YmFjMjFlNzliNjg2ZW=
Q1N2NiZWQyNTc4ZjdiZWQyNzk4NmJhNDEwMGI5NGUyMzQ4MzFmMjExOWYwMjRlZDMwNzYyMzFkZ=
GEzYmVmMTEwNjcyNGQ2OGZmZmNmZTBkYmRmY2NiMDYzZTk2NGE1Mjg4NzAyNDBlMDY2ZjgxMzJl=
OTk1YmJiODhjMDQyZTFiZmNl" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DOWQ4NjM4ZjA2MjdmNWRkODNhZTk1N2=
FiNWNhYmViMzYyYzdlMWJjNzM0ZTdkYzA4NTMzYzY1MWQ0ZmQxZWYxMDdiYmRmOWFiY2Q3YWRjN=
zc4ZjM4MzM3ZWRhZTA4OGYyYzk2YjNkNzU1NWY1NzYzNGE5ZmMyZGEwOGE1ZWQwNDgyZWZmOTM0=
OWUzMzdlODNjMzFhNDc2MTQ2YjJmMjc3MDIwZmQwNjllMzc0MDM4ZDI4YWM0OTNhMGU4MGU4ZGF=
kNTMxZWE2ZWZmYTU2MTQzZGJhODEwZmM4NzBmMWM0YTA4OTRjNDk3YzJjYjgwMzFhOTMyY2JlMz=
UzYmMwYmM2MjRlNzQ5ZjEzMDZjNzUyODczNTAwNjU4OTg1YThjMWI3MWI2MjMzZWQ3MzRiNzVmZ=
mYzMjc0Y2ViNjBlNmFmOWNiZDI4YTQ1MTE5ODJmYzFjODFjMGEwMWQxMzhjYmIxNWY2MTk4YmUw=
ODU1YjY2MGYyYzQ3MzMyMzdm" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNmY0YmY3NGM2OWNm=
MjllYzlmNWRmMTdiNWU0MWRiN2RlNzIzZWIxZDRiYTQyN2U4MDQzOGJlZTA3ODgxNTA2NDVhNDY=
1ZWFjZWY0ZDIxNjE2MDliZmRhMDEyNWU3ZDNlMTQxYjA4Y2ExYzgyMmI4NDE2YjFjYTU5NGUyND=
UzM2ZhMWU5MjE2M2I5NmM2ODYxNDJhNGUwMDQ0YzNlMjM2YmNmZGZlNGVhMDQ0ZTg4YWU5ZWUxZ=
mNhYmNmMjE1OWYxN2MxZWI2NWE0ODkxMmY4NjhkMTk3NzA5MTk1MTYzNjk1ZTg2MTAxZjVmMzY3=
MmExMGU4N2VkNGVkYWViYjkyZDIzMWJiZGM0NWRkNTUyMjM0MzAyMTM1Y2I1ZjcyOGVmZGM3ZmJ=
iN2ZlNDgwMGM1YTU3MjdhYTAyYWY2ZjJkMzMwNTFhYjBjOGU0ZTZkM2FhMWE0ZTZkZThkYmRkM2=
U0YTg0NDg3N2Q2NzFmMmJkNzhiNGNkOWVlNGZmZjA1MQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDhiY2I4MTRjOTEy=
NjM4ZTczYzAwMjVhMTE0MGViNTgxNGJlMjMzYzg2MTAwODI1YzI3OTkxMWIyZDQ2YjUzMDFhZjk=
2YWZiZTI4MTQ3ZGQyNjQxZjgyMzhkYzMwYmI0OWMwZDUwODVlMzdiM2MwYjM4Y2NmOTk3NzFlOG=
ZhZWJkZjEyYjZkZjg2OTdlMGFkMTVjY2JhOWMwNDNjZmY4YmU5NDJhOTgyMzlkYTM0Mzg5Yjg4O=
TgxN2M0ZjJhOGIxNjEzNDhhNjM3NTY1NjU1NWE2ZjRmMmYwMTBhODMwMTIxYmFjZWFkODQ5ZDI0=
YjdiOWNkMDUwYzRhOTc5YWEzMjlmY2FiYjdiNjJjYWNjMmRmZTc3NDU1Zjg2ZDFiMDVhZGFiYjh=
kNjljMzk1MTg3MjJhYmI3ODA3MjIzNjRiZGZkZTNkODRmYTUwM2U3ZTZhZjU5MjRjZGRlMTExYT=
RmOTBkN2Y5OGIzNTY4NDBlZmE1YjUxYTU4NGViNTk1NQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYjczOWY1MzczODI0=
MTNlN2ZhNGQ2M2UzYjk3OGVhMTFlYTllODMxZjMwNGFmNzgyODIwZjcwN2NkMmM2MzMyMzZjZjk=
4ZTZmY2Q0M2RiY2E5OWYxZGYyNGZmNWYyYjMyYWNkYmY3NTAzMGY3OGEwYjEyYmQyOGQzYTFhOD=
g4NjYxNGY1NjQ4ZjJiZmUzMjU2NjdlNTJkZGQ5YzQ0YTVkNDQwMTdjODhjZTMzODI0YTY1N2RjZ=
jZiMDlhNGQ0ZDBkMTU5NjEyMzkwOGNkMDVkYmU5OTg4ZjM3Zjg1Y2E1MjlmNjBmNjk0YWE2YjFm=
Nzc4ZjcxNTI5OWQxN2U1MmVhODk1YWJjMzJlY2I2Mjg1OTE4ODUzYWY2ZDU1ZTllODAyYWE0MTk=
4MjI0ZjI5NzBkYmI4MDdhODJlNjgwNTFlOTU1ZjUwODBlZWZiOGM5YjU5NzhiN2I0YjVjNzI0NW=
Q1ODY1MDEwODMzMDJjZjEwZGRjYzRiMjNiMTIzMTY3ZQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGI5OTNjOGI1OTE2=
YjJkMzRiNzVlNTdhMGEwMjZiOWRiNzA0NmRhZjQ4YjA1YmFlNjBjYjE0MjlkYWZhZTI3ZTI2ODd=
lODNjZDk4MzIwOWIyZjcxNjE1YzU1NjUwNWZmMDFjNTEyMTY5ZjBiMDk4MmZlZjI0NWIwYWJmND=
lkZTU1N2FjOTUyNmYyMWVmZDIxMmFjZWJhYzc4YjgyM2QyOTY1M2U4ZWZjZTQzMTAzZGI4YzBiM=
Dk3YjkyMTgzM2EyNjI0ODFjNzJjZDExYjMwODFlNDFkOGY1NjgyMDdlZGFhZjlmZWM4YzE4M2Ji=
NjQ5MzQwNzM0MmQ1NmY5OTIwNDYwNzM5NDc3NWNhZmY0YjQ3M2MzOTRkZTk1YWJlNGE4MTI1M2V=
mM2I2YmZlMWJhOWYzYmVjYWEyYjM1YWRjZmJjMGMyOWI4Yzg5OTQ1OTUyNThjZWJjYTU2Y2MyM2=
RhZjQ2NDhlNzg5ODgwNDU3OTY2ZTUxNDc4Mzc2M2NkYg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMzUyYzA5ZDcxNzdmOT=
lkNGUyMzU1YmZiYzE5ZDIwNzE3NDhjMjBiYjRhNDA5ZTZlYjQ4YjM0NjZmZGFjNzc5YTI5MmU0Y=
2E2ZmY1ZGJlMjk4ZGY1ZjY4MjU4ZDM4MmJlMzFlMjc2ZjhjYmIwNmFlOTFjYjNiZjQyZTM1YjVj=
ODhkOThjODc5ODJmYTRjYzA4MzI1MzgyN2UwYjQxNzcwYTUwMjdiMzQ0MjA5ZTg3MzNlYTMzMzB=
mODczZmRkYzIwZjVmYjE0MTU4ODdjMmI3YzMwOGFjNTZjYmMzM2Y0MjBhZjBmZGE0MDk4ZGMxZj=
c3YzAzNzcxNDQwZDE2MDUzMTQ4ODZhZWQyYmYyZmE4ZWQwMDIzZjk2MjEyOTEyOTliZTVhYTA3N=
zQyZmVjOThlMzUxODAwMDMzNDExYTUyYzY3YTMxMmY3M2Q3Mjk0NTgzMzNjODQ0YTcwMDlkNTE2=
ODIxZjFjNGE2ZGViODcyZTIzNmVkY2ZmYjlhYjc1Mw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DOWRiNDdhNDJkM2Fm=
YTM3YzM3YWVjMzVmNzQ5Y2RkZjNiOWU2ZmQyOGUwYjg5N2QzNWNmMWMwYzc0NWQxN2I5ZmRmMjE=
4MDAwN2EzMWVkNmY1ODNjZGQxZWIzZDRjZjJiNDM1YjdiYTYyMTBkNDA1ZmE1MjhkMGI0MmIyYT=
I3YmFmMmNjYzhmMmZmN2RkMzk5MDEyY2YzZGVhMTBhZDg3ZmI1MjFmNGNkODk2OGRlZDc5NmYyM=
GEwZjY0NjAwZWJlMzU0YWQxMjNlMjRiMDNkZmRkNmFjMWFhM2IwZmYxYmRhNjNlY2I1MzQ0YmFi=
MzkzODc0YWNjMzEyNmJlY2U=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DOGVkYzI5MWFjODQ3YjI4ODE1MWMxM2ZiYmMyZ=
WI5NzE4N2M5NGRmMjYzZmFjOGFiYWIwZTIyOGY5NGQ0NDY2MzlkNmVhOGQxY2MyZDIzZjYyOThk=
ODJmM2FmMjgyNTBkYWM3MjQ0YzlmYzY2NTllYWE4YzdiZDFhOWZhZjQxNGU5OWUwMGI2ZmVmY2R=
kMzA2NzI4NmY2YjQ3NjgyNDdjYzYyOWZmNWY0ZDU1NWUzZWJjMjU1YjJjMWRlNjlhZjUzMTUyOD=
ZjMjlhNjIxZTA5NjcxZTljYWY2ZWE0NGM3MGJlYzQxZGQ3NWNlZGQ0MTA3YzFkMjNlMmMzMWJiZ=
DgxOTc5OGNjYThjNjExMDFhNDY3ZDQ2MzlhNmY4NTU3N2Q5NzdiMTAxZWRmYWE3ODM4YzZiNGFh=
MjhiYWE2NzJjN2Q1MWRmZWFiN2YzNzRkOGU1NjE1YjM5MzYyMDM2YjE2NjBjNDRiNTA5NDA4MTE=
5NGI3NjM0Y2VjOTc0ZGU4ZjhmOGUwNzMyYjg5ZGExNjhiNDdiMGIwZDI4OTgyMDg3NDhlODA0ZD=
llMjBmNzNiZWFlZWI4OTI3Nzg=3D" style=3D"font-size:12px;line-height:134%;font=
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
