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
From: localhost:1333?u=3DY2I0YTljNTQ4NTg0NjE2MDllMTYyN2NlMjcyN2U1MTZjNDU0YT=
Q3ODI2MGUwYWM5ZWU2Mzk1NmFkZmQwNTM5NTAxY2Y2NjNhNDlmOGE2 <mail@eg.expedia.com=
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
<localhost:1333?u=3DOWRiYTFlZWNkNDk0OTJkZjQyY2EyZjdkOTFmNjQ4MGYyMGRkOTVmNTB=
kNGM5NGU3NGUwOTAwYWVjYTQ4ZmE4NDY2YTdkMGUxMWEwODkzMjEyNGJiM2EwZDYyMDg5OGI2MG=
MwMzllN2Q1NmYyMmE0ZTMzNGU1OWEzYTYwOTk1YmI1MDQ1ZDJkNTg5OGYxYmYxODE5YzFiZGRlO=
TE3YTk2NmEyMmNhZjE1ZDI5NTcyYWEyNTFmYWYyMzQ0MzM1YTkzYTNlNDIyNThmMDgwNTQ2YzVi=
NmE4ZDFlZGI4MWU0YjM5MDc0ZDhlMGE0MDdlOWUwY2E2OTMxNTQ2ZDdiYjcwODY1OWY3NTI4ZWQ=
1NzM2OWIzYzE1MTI2NTE4YTU5MmEzNmQwMTNjMDE1MzkyN2I3ODk3YWQ5NjM3ZGIwNmUzZDk1Nj=
JhOTVlYWRlNTdjYmJkMjgxMjEyN2UzMzZlZGNmNjgzNTFjMGMyOWJkNGEyOWI3NjJmZjBiOTFm>

* The Travel Edit
<localhost:1333?u=3DNzhlNTQwYjZhMjEyODc3NzczNTEyNTBhMGIwODUxMTFmZGU2YmIzNjY=
3ZGNmODEyYWNmYmFjMDNlM2M4OWYyYmRjZmQ3NWFkOTgxNDIyZDVlYTg1MDlhMGE0NDUyODA2N2=
FkZWIxMTFlNWEzZmQ1NjBmNDdhYzNkMDhmYTQxNTU0NDcxYWE5NjhiOTFjNzJiNmU0ODBlYTdjY=
mU5MjFkMjc2ZGUzZmFiMGFkZDgzYzJmMGMwMDY0MjE0MGQ5ZWQ5MTk0N2ViNGE1OTAyMGM0OWNl=
Zjc2YTdiNzdjMjJlOTFkMzgzODRhMTAxNjdhNzU2YzcwMWYzMTU2MGE5YWI1NDEyODIxZGUyMWF=
mMGMzODBlODU4OTRlMzk4ODRmNmM5YTk5MDI1YmYzZTE3ZmQxNzY5YWNkMWZhNmE4NzFhYzZkZj=
k2YTUzMTExMWE5YmQ2N2ZkMGM3YzM5ODFmMWYwZTViYjlkMGE1MDlkMjlkOGY5N2JkZDU5NzQ1>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNzA5MmU1Y2RkMmYwNTU2ZTllNTRjZGVkZWUwZWNjMmZhZGVjNTZiNjA=
zN2Q0NTdiOTY4NDFhNjQ4NzE0NGE3NWNkODUzNmZlMGM3MTlhZGViZDU4ZGI2NzRkMjA5YTc4MT=
EyMWVlMTFlYmMwNTJlNjk5MDg5ZjQ0MmE0NTJmZTk3ZmMzZjk5YTVlNWYzYjQ4YWM1ZjcyMGM5Z=
WQ5ODExZDAzMGU1NGJjOGUxNjgzMDM1NzgyNGNjODJhZjE4MWY1NGYzMzBmZjE2MmIxNGIxODNj=
YWFjZTg1NDIwNDZkY2U5YmQ2NGY2OWU1YjliOWJkYWE2MTFjZGY2YjViNTlmZDRkNzc5ZTdlMTU=
5ZDNmMTQ1OTE4OTZjNzIxYjI2ZmRhOWNjODUwMTMzNzc4Y2U2NmFkMmMxNjNkZTFiNjQ2YTJlYj=
k4YzA2MDk1MDliZWZkMWZiOWUxNWMxZWU5MDdhMGRjZmE4NzdjNTVkYzIxMzMxNDYxMTIwZTgy>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOTM4ZDg5ODhhMzZiZDUxMTdlNzc3MThlNDQzMjFkMmQ4Yjc3MTFhMTM=
2NGE0NzQ0YzczN2IxY2NlNWJkYjc1NDhjNmYyNGVlZjU5NTZhMGZiNTY0ODQ3YTVmODI0MTE0Zj=
UwNjk0YTdjNTY4Mzk4OWZmOTEyMTQyYzlmZGFhMjM1YzEzNTlmOTg4MmEyZTdlYzQwMjZkZGE1N=
GU0YmVmYzEzMzMxYTMzNmI5NWNiNjZiYTgyMTFhMzAwZmJkNmUxZGJmYjA4Y2Q1NDY0ODY4MTJj=
OTI3MWFhZTE4OTk5NTQ2YzdkZDUxNWFhMDFjNjEwMWMzNDRhMTZlMjRiYTJlY2FmZTExYjJjNzM=
zYjExNmRjMjI0M2IxZjlkMmE0YzZhYjZlOTkyMWE0ZjEwZjQ0ZGI3N2RmMmFlYjZlN2YxYTMwYj=
NlYmIxNjE2ZTVjYzE1ODk5NTA0NzViYzJlN2RjMjkzZWVjODgzOTg5OGZjNWFlODdjOGNjZDI4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DYmVmZTUwZjg2ZDU3ZDhkYjI2YjI0MzMyYmRhYTRmYmRhNjk3ZDg0ZWE=
wNjEyZGU5Y2JlOWE2NDM0NzE0MGNiNGU4MDM1NDE5ZmZlYzc1NDlmMzE3OTBhODI4MmZmZGNjZW=
E2OTBlNGM2NzllMDk2OGI2MjExN2VkMzQ1YzZmNzBmMzkzZWZiMjNlMmI3M2U0MGY3ZmVhMDBkY=
zlkMGI4MDE2OTI5NGUwZDA1YjMyNjljZWJlOWNmMmU0NGNiMjIyYThhNmY3MjJjZDg1ZGI2MjA3=
MzU4ZDQ5ZTkyNWM4YzhlNGE0NGEyODEwNzBjMTFmYjYzMjRhYzM1ZDI3YWNiNjZmOTVmN2FjZDd=
iZmZhNGI3ZjZhZDExNWI2MzY5NzFiODI5MDI3M2Q4MWFiYzczNGNhOTI4ZDM5MjlmM2NkMDFhN2=
YzYjI0ZjZlYTFhM2MzMTMzOGQzYjM5ZDQwYTk4YmY0ZDQ3MDdjNDY0NDA0NjVmMDBhNDNkYjU2>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMDkzYWMwMDEyODI1MTI0MGI0ZmY4MjYwMDg0MzE0NjBlZWQ4ZGJiMDc=
zZjQ3NmI4YThiODdmN2RkY2JjZmFkZjA0NzE4N2NkOGZiYzU3NjdhMDI5MWQ4YWNhMzA2NWE3ZT=
gzMjgzYjBkZjI4NWI4ODU3YzM1ZGY5ZTFkY2QzMzY2NDQwOTQ2N2NlNDEzZWI3Y2RhNGI4NzMxY=
mNlMGZmZjAwNTkyMmVhMmQwMzM2MTM0Y2E3M2E2ZmEwOWJhNTY1OTZjOTk5ZDU4MWEzMzhlNWZj=
NGI4ODZhNjU3Y2Y4YTYzNzAxODg4NTc3Zjc0ODdmOTM1ZmJjY2Q4OTFlYzFmOGY1NDUyZDNlMWN=
mNjBhZmQ2ZTIyZWM5OGJkMTNhYTJkMmRiZDQ0ZjU3OTYzOTliY2VjNjdjYTBmNTk2MTNiZmVhMG=
JlMTI1NDBlMzAzODFmNDkyZTFjNjMzZGVlMGNkODNkNzU4YWM1MDI4ODU4Y2RhMGM3NmYzNjQz>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNzNkOWI0MTI0MjczN2MzMDQ2N2ZlOWZjMGQwYTU5M2EzMjI4ODZmNDQ=
5MzViNTA1MzI3NWUyMTM1YzIxYjcxMDZlM2JmYzZhYjljYTEyMzNjZjc2OTliZTNjNDg4MWM5ZD=
QyNTZkNzU5OTRlOTM1ZTdmYWMxNzU1OWE0MmQyMDAzZDBjMzJlZjYyMmE4YmI1MmYyODYyY2M3Z=
TZiZDllN2JhN2JiNmI1Nzk4M2JmZTA1YTVkNzdjOTQ5OTViMjc5MmY3MDgyNzA4ZGI2NzVlODg0=
ODI0NThjMDRmMzQ0N2UzOWUxYWFjMjdmYzZkYmI5OTU4MmY3YjI5ODFiY2ViNTRhM2U0OTFiMGM=
5NjIzMmVjNzQ3M2FlNTk4MGI4MjAzMzM5ZjU5MjJjZWY5ZjcxYzQyOTEzZDBmYzJjMWNjMjllN2=
UwYWY2Y2JkNWMwNDdlYWYwZjliYjM2ZTczZGQ5ZTUxMTE1NmY0OTMyMzJkYjQ5MGMzMGYzNjI3>

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
<localhost:1333?u=3DMjgxZjhjMjkzYTE5YTczM2E3YzIxODFjMzZiYzFiM2IyMmRkZTY1M2U=
2Njg1OTA1MmJkOGMzOWViZTc4NTBjNThhOGQ5ZDUzNTRjZDczYTczN2RiZGU1ZWY1M2QyNjJkZT=
Q2ZTc0YTliMzQwNzc2MDRkMmU2MDJjZTFiZjhjZGQ2NzUwOTNiYzZkYTY1YjNmZjQ2NzM5ZDMxM=
GIzZWFiMDNlYTYwMWE5ODEzNTU3ZjFhZmQwNmI0ZDJmY2VkM2IyNDNmYTBmNzM5ZjllZjk2MjZj=
NWFjNmM1NTk5ZTIwY2QzYTA4ZGU0ZGIzNjY0YzdkODkwZDIxYjY1MGFjZjNlYjA2ZGUzMjkzMzE=
yYzI0ZjE5ZDIyN2JmODA2ZjYwOWZlMDZmMjM5NmQ1MjllNjFmZjMzNmMwYTIyNmEwYWExNGVhMz=
gzNDg2MDU4ZjAxOWI5NzdhYTFkNDA1YzZkMjYwYzJlMTQxZTZhZjU3ZWQxMzBjMzMyNjk2YzAwZ=
TM0NQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DY2M4NTQ1ZDRjZDcwNmVhMTAyZTA4OWRiYjM5YWQ2MmI5N2E5ODYxODc=
1NjU0ZTljYzNiYjRhNGFjNjgwYmQxOWI2M2VhYjk5NTJjMTk4OTA4MDMyZDdkZWUzNGVmYTI0Ym=
MwZDc5NDBiYWJmZWY3ZTllOTdhYzlkOWFlMDJiYWE1MmI2YzZhMGY3ZmY4YmE4YWMwNzEzZmU0N=
2RiMWM4N2RiOTE4MzMxNjVlNTM2YmNjNGZjNGMzZDYzY2M0ZjhiOWM3NjYzZDcwZGJmZTZhZmVh=
Zjc2MmU3ODlmNDc4ODkwZjQwZTQxNDJlNmU4ZGQ0ZTdjZDVmZTljN2RmODA5ZDJmMzUzMjMwNWI=
3N2ZlOTE2ZTA1ZjhiZDNmODU0NWVjODM4NzEzMzk0ZDJkY2Y5YmYzYzlmNmE4YjY3NmZjM2QwNG=
ZlYjAyODA5ZGEzNTg4ZjNjODlkZDA4NTg4MTBmZDk3NjA0MjkxNjYyNjBkYzM5NzViYjRlM2Zh>
  [image: Google Play]
<localhost:1333?u=3DN2I1ZjMyNjAyMGQ5ZjhiMmM1ZmEyYTJkM2I2ZTEwZTMyNzM1YWJhY2I=
wNTJiNjdkYmFiMTNlNTkwZGRkNDUwOGRjZjI5ZDZkZWJhNDIzNmEwNTNhZjA1MDY4MDMxMmJlZW=
FiZWE5NGI3NGEwZWM2YzU3ZTk3NzAzMGFlY2Q2MmY2MjQ5YWRkNjRiZTc2ODZmNWE0NDMyZDNmN=
zczMGNjYWZlNTMyYmQ2MTQ2ZjA2ZWJkNTBkNDZjMzM2YjM5OTE2ZjMxNWE5ZWM5N2NjYjMxNjg3=
OTZhNzlkMGVmMzU1NjJkZDUyNTUwNmY2ZGU5ODhiZjViYWZmNDg3NGU2OGRlYWUyZWI4NGRmMmU=
1ZWU5MDM4YWNjYmZkMTY1MmZmMTBlN2Y5MDhhZGFiOWYxNjFhZDQzOTIxYjk4N2MxMWYxMTJmMj=
JjMjg3YTE2MDcxZTRmMDc0ZDQ3MDFlM2UwMzNhNTk0MmJmNDc3Njk3NTA1MDAyMjBmMDliNjI4>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZDQ2MDgyOGRmZGRlMzlhNTNhZjRmOTAxMjQzZGYwOTdjZjA5ZmJlYWQ=
5ZjJhMWJlNzYzMGQ3ZWUyOGMyNWUzZTIwZGE1MmVjMDA1ODQ0ZWY5OWNmMjlkNGQ3MmQyZmRmOD=
VkMzM5NDU4ZWMyNDgzODg2OTZhNTE0NTllZmI3YTQ5NDQ1MjlkNDlkOTAxNTlkNTNkYjkwY2FmN=
2JmYTUxMjkwNDgzZDdkMDU0OWYyY2QzODczMjM0ODNjMzY0MzYyOThlZTU2ZTE1OTJhNGQxMzMw=
MjFmODQyMmZlNjIxOGU0NDQzN2M3MmY3NTJhNTA3MmFiNDA1MjkzMmMwOWRiODI3YjRmNDJlNWY=
xZDM3NTFmZGI1N2U1NDYzYzU5NmVjMGFhNzdjNzg5ZGM1ZTZmYWRjYWU1YzFlMTIxYjQ1YzJkOW=
Y2ZWM2ODgxMjAyYWI5MWUyMTBhMjYwMmEwMmZkMjdkMTFkMjk4NTNmYjIyMGI1ODRlZjQyNjhiZ=
DNlYw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNWZhMGYxMjhmODJmMWI4ZTUwOTdhZDI3M2U3ZGRmZDQ2ZjhiOTg2MjY=
4YzI1Nzc0NWRkYmY3ZDQ5NGEyMjU1YmJlODNhNWFkMzNmYmMwYmRjNDYyZTZjZWYxNzZkODdlNm=
JhOWRlMmY0YmEzZTA1NjkzYmYwZmUzNmU0MzgzOTAyNDU1YWRhZGNmNTkyNGFkOGJkYTE3MzE1M=
zBhYmIzZjYzMzkwNDRkYzlkOGZiNWRkOThjMGY1MzA1MGZhZjdjMjJjMjA3NTI1MGY5ODhjY2Vj=
Yjg1Y2VlNDBiNzRkZmRjNDk3MTQ3ZjYwOTYwMGQzZGRhYzYxN2UwNGM5NjMzZTk0YTY5MWZlYzg=
3ZmYzNTBlMjJjYmYyNmFlYTVkNGQ4OGE0MTkyZGU0YmQxZmYxZmQ3ZTk4NGM4YjJmNzU2NTJlZD=
hmODQzMGE5M2U5ODYyMTEyNmM0ZWY4ODY1M2U5ODA4OWM5YmU5YjAzNzU1ZDcyYmQ5ODMwMWJmO=
DlmZQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMWIwMjkyZmRhMjM3NDU5NGYyODc0NWM3MWU1ZWFkMjMzZmM1NjA3NWU=
0NWFjNWNlNDIxMzU2NGYzOWQxOTRhYTZkYjRlOGI4ZWYyZjY4MjViMWM0MDdjZWI1MzRlMzA5NG=
IyNWM3MGFkOTU4ZGJjN2IyMTA1YjBhYjQxMzFhNGYwOGYyOTA2NjUyMjc5MTUxOTA0NjViZjk5Y=
TFmNGI2ZGY0M2M5NjdlNzllOWZlYzk4YTU0ODNjYWNkN2FjNWIwOTllM2U0MGIxY2ZiNDBlNWNm=
Yjg5M2ZhMmUwZWZmZTAzNmVmMzhiNWYxZjk2NzBhMDE1YjVkMGYyNzc1NTFmMzJhNzM5NWUwZDI=
5NGQwZGZkZDc4ZTUxNWY3NzVlYjJkOTlhNDg0OTg2M2RjNmQ0YjE5OTI5OWNjNDFiZmYyYzJhM2=
FmNWRhMDcxODE0ZDVkNTBkOWI5OGE5NjM4ZDRmNWU2ZjE1YjJmZTJhZGExZjAxMTMyZWFiMjdhM=
WYxOQ=3D=3D>
   About Us
<localhost:1333?u=3DYWY0MzliYWY4YjU0NWNkNWZhZjg0MTIyYzY5OGQ0NjYwYTA3ZWE2YTR=
mOTIyYTVkMzZjYjMwOWJkYWFiNzNiNGYxYTY3NWU1YjE1MWJmZDllOTA3ZTMxMGNjYzE4MjI5OD=
NmYzA5ZWE5YmYwYWIyNDc1NjJmZDhlNjc5NGI1ZTk2Mjg5ZTE0M2Y0MGI3OWExOTc2ZTU0NmVhZ=
DRhNTAxMTA0YjJlNzE0NGJmY2JiNWNhMGZmYjg2NjBiY2VhMTk0YzYxZTMyOGNiODNlYmExZmJk=
ZjFhZDgwZjJkYjdlZjcwNTUyZjc3NWRjMzE4ZDVlYWFlOTY3NzI1MjliNTNlYTMyNjhkMTMxZTk=
4ODI3Mzk4YThhMTI4OTU5Nzc2NTQzZmU4MjFkZjc4M2I0ODQ2OGY1ZDYwMjBhMGRkZDI3NTkyYT=
UyZDRjNjUxZmQ2NmE4ZmFmZjJlOWRkMmNlYTFlNDgzMDM3ZmY5M2Q3ZWI4YTQ2Y2Q4MDgzNGU5M=
zY0Mw=3D=3D>
   Customer Service
<localhost:1333?u=3DZWJjMTRkMGNlN2Y5MTlkMjk1ODRjYjQ3YzdmYmJlNGU1Yjk5NTk2ODB=
lMWQyOTliZjlkZWY4ZDJmOGQyOTY3MzM5NmM5ZTQ4YjlhNDRmNzEzNjAyMDMxNDM1Yzk5MTJlNG=
E2MTM4NTlhNTA3MmYyMGY0MzMyMTJiNTJiNDMyM2NlZmZkMmFmNWFlYjE1NzdjMjM1YmNjMjczM=
zUxM2U4NDc4MDZkNTI1YWYwYmQ5YjAxNjM5NTIzZDhmNmQxYWIyZjJjZTFjNDM0MzM3YzM5OTlm=
YzkxYTQ2OWI0NmUyOGFiNjNiZTRjMTk4YTUxZTIyOTg0NTQ4Zjc1MWY0OGViZGRiZDQ1NmQzZDk=
yODZjOWI3YjA2YjBlMGYwMzUyNGNlYmNkNjgxMjI2NzI2ZTJjYWUwMjk1NWI2NzY0NDc0NDVlZm=
U1NDQ4ZDg4ZTY5MDQ2NzIwMWFkYTZlZTEwNzRhZTFkZmVmYmJjZTk1YzMxMTcyMmYyYTAxMzljO=
GQwNA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DM2EwNjhiMjVhMGQ1M2IxZDM3MzE4Nzc2MzAwZDIzN2JlOWNlNjgyZmM=
xYjY5YmVkMTg5ZmE4MDQ4ZmNkZjNkMjMzMjU5MTRhMjhkYTBiNDBjMTE4YzE2YTA2YmVjOTI3Mj=
czMzJkOTI5ODg1MTZiNGE2YzYwZTQ5OTUyMDg3YWY5NjRkYzhjYjhjY2E5ZDFiNmQ0MzMzNTNkY=
TJmNTE5NWM1NTFhYWYzNjQyNWJiMmFhNjEyODA3NGI5ODE5MzJhMDk2ZmE4ZDRjZGFmOGY0MTQ3=
YjYzNThmNGU3MTNkNzQ1NzJjNzJmY2FmMDI2NTNiMzVmOTFhNzM5YTZiYmY=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNmVhOWUwOThkM2U1YzI0ZDIwMTg2MTAxYjJhMTJjYmNmMzNjYzA1MGU=
1MDcxMjFiMGI1NzhmMzY0MDdiY2YzZTlhMzI2ZThiZDZmNzc1Y2RhZjYwMjlhMDI4YzhkYjllNj=
FhMDFmOTM4NWJkMTg2ZDg5YzQ1NTJiMzkzZDNiYmRmMTZhZmRmMDcxNzQ1ZWIyZjBkNDY4YjA5N=
TZjMzYyZTdjM2Y5ZDEyNjgyOTk0NjFjOGY4NmI4Zjc0ZDI0MjZhYjg0MTQ3NGRkMmZjMWEzMGY5=
MWFlYzFlZjZmM2RhMjRlOTRhM2RjYTc2MzczNjhjM2JmNDc2YjA2MjAyOTY2Y2FmYTQ0NzQ0Y2M=
xZGY2YTQ2MDU4M2NmNmQ2OTE2NGE5NzBkODA0Njc4OWMzMzAyZGU5ZTM0NTJkMjA5NGU5ZDA2ZW=
ExZDc0MjMxZmE4MjBhM2U1YjIzY2JhMWNkY2FhOWJlZDE3NTQzNjhiMDAyYjQ3ODVkYjU2MTAyN=
jRkNmMzZDAyNWM4ZjdiYzFkOGRhM2FlMGQ4NmMyNzMxNzBiMmI3MWQ2NWM1N2EzMjY4OWY2MmZh=
ZGQ2OGQ=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DNjcyMTA0ZmIzMzc0ZjI3=
YmQwMGFkN2ZjNGYwZmRiNzJmMzVmYjZmNTM5OGI1YzNmZmJlODNhODcxZDYwODhlNDBjMTc4YTc=
wNTE3YWFlYThmNGU3ZTFjNDU5MzRhOTAxMzk3Y2RjYWE0MjhlMTNjYzhiMDUyOTMzMzdhMTlkMD=
BkNmE4OTdkNTQ0MDNhMDY0MmI0OGZhZGMxMTAwYzJlM2VhZTBiZjYxZjBhYWRiYzlmOGIyY2QwY=
WVmNTUyMmJhNDZjN2EwZDk3OThhMTBhZjQyMzY4ZGJjMjgzMTg1NWQ2ZDg1Mjc3NWViMmUwYzg1=
ZTIyNWI2NTYyYTEzYzJjMzM0NWM2YTJiMzc4Mjk0NDUyZGRmNWQzNjBiYjEyMzYyYzA0NTAzMzd=
mYTZmZDA0ZTc3ZmM4ZDU3YzJhNDJlMGQ5ZDRjNWVmZTJhMGVkNDhhZDg5YWIxZDBiYzY1NDAzNz=
VkMmRiOGIxYmZiYTEzZmI4Njk2MTYzZTJi" target=3D"_blank">
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
?u=3DNTAyZjlmZGQxNmE0NGJjZDg5YzY4OTBjNTA2NGFiMzMzNDQyYmZhMjRkYjcyYjhhOGI0MG=
Q3Mjg1NjQ0Yjc1NWJkNDBmOTM2NDNkMDEwNTNmMTdiZDdhYjZiZjQyMDAyNjE4NWNlNzExZDhlN=
mQ4YjJjMjIxYzc0YjhhMDIyOWQ0MzExYzQ5MTRhNTU2NzhiZjU0MzhlNjJhMzlkN2Q2YjliMWY1=
NDZjNjBkOTg4MzVjYzJmYTgyZjk2YmYwNGZjNDJhMDRhYTlmYTc4MjE3YjU1ZjQzNTA0Njg1Njd=
lNTFlYWI5MDk4ZWQ4ZTdmNzMwOGNlZDJkNmI3YTI2OGEwYmQ5NThiYzY1YmViMGY0ZjIyMmZmZj=
A5ZTRiMjE1ZWRkN2Q2ODZmNzk1MmVhZjcwN2ZjMGM2MDY4OTcxMTdjNmY3ODkzYjM5NDhlNjQ3N=
DYyNjQ3OTkxZjAzNTY0ODk4OGNhMzQ1MzY1OTZhMjVjZDRlMDgyNjlhNDVj" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMjM1N2RhY=
zZmOGVjOTMyNzZhM2I4MTY3ZWM2ZDAzZjUwMzk5OTI1MWZiMmEwYzVmMWJhYWEyZDRiOTQyMzg1=
YzdhMmExNDZiNWM1MzIyZjI4MTE1N2RmNDEwNjA3MDFlZjYwMTU4Y2EwZDFmMTIzNmRmZDllNmE=
3ODU3MjAwNWEzMTBjMWEwNzE3NmZlNTUwMzNjMDc4MDU3NWMwMTE1ODdjNTNiMzExZGM0MjAyZj=
cxNDIwNzliOWRjZjgyNTQ0YzI3MGVhZjk1NGJjNzYwYmM1ZTE4ZjRjOTM1OTUzZmIxOTljY2Y1Y=
2QxMDg5NjMxOWE2YTcwNTMwNWMwNWE2MDU5MzQ3YTY1MDVmNjA0NTc3ZmI0YzMzZTUwNmY1OGMx=
ZmM4ZjczMmFkMzI0MzEyNDBmNzRlODY1MTdhYzUxODMyYWNiYzQzZjQxNzEyZTRlNmY2ZTljMWR=
hYjM5NzNjMjI1MjIzZmVlOTI2NmIyNzhlMDJhNGUwMmEy" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNWVlODE=
yY2IyOGZjYjZjY2Y2NjU3MGZiMjljN2Q2ODNjZjU3YWFhODQ5MTc0OTUxMTc3NmE5MTE1MWNlN2=
ViNjBiNjFmMTU1ODhiMjkwOGJjYmEyNTgwNmQxNWQxZDg0Nzk3NjMxNjM2NTYwOGRiNjM3ODZiN=
TQ1ZDI4YTRlMjZmMDYzYjUwOTc2Mzg2MDNiZmExNWFmMGY5YTk2YmU5MmIyMjQwMWM4YTYyZDEw=
MDdhMGY4MTdjOWU5Mjg2MGVjYmQzMmRjMjJmYTBhNzU5YmIwNTczZWQ0NDViNjc0MTQ3NzA4ZTQ=
3ZjI1YjczM2Q5YTJlMDFhOWViZjA2MTQ1ZTY2YzNkMGZhMzJiYThmMDg1MmI3ZDBiYjJlNTg1Zj=
YzYzkyNjZkNDc2MTUzN2EwZDFhMGJlNjQ2ZTk4NmVjYWQwYTdkNDg3MDBlODkxZjdjMjdjMjg4O=
GQ3MjY0ZTNjNWQ3OTFiY2QwMTg0NWM5ZDMxYzIyYzE2NjQ5" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZjY3NDM1NmU0=
MDZhYjI0M2ZiN2YwODQ5YzJmNjczY2EyNGJmMDI4NDQ1YzVlYTMyZjFjYzdlOWNjMzUxMjUzNDk=
0NTNmZmRiNjliMGFmMThhZWY1M2UxYzljYThhZDE0NTlkYWJkMGU1ZmRlODkxOWM3MzMyOTI2ZG=
ZjMGM1Mjc3ZmMyODdjMGNkNGFiYTEzNjM2YjdlZmE4NjAyYTFjMDdmYjQzYjIyNTU0ZWZkNzk5N=
DAwMTBiNThiYWVhYWM1MGI0ODY4Yzg3NTc4ODQwNTk5YmQ2YmQ1ZDJjODk3MjE4M2YzMGE0YmQ3=
ZWM4OWVlN2QzMTczOGU3Y2MzNGE5YTgwNTVlYzJhZWNjMjFiYzY2ZTE4ODAxYjczMzcwOTVjNzk=
2YTc3YzU2ZDdmM2Y5YmVjYjYzZmUyODI2YTY2MzMwMDc4MWIwNzE0YzkyZmZiMWQzODQyMzVmYj=
hhNjdiMWY3NDkxMTVmYzNmMTJkMDA4YTUwNjgwY2I5" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DYjJjZTI0ZTBlZDY5N=
TliM2YxNmM5MDc3M2Q4NzViOTk2Mjc4MTA0MmJjMDk4M2YzNmI5Y2VhMTVlZTZmZDQyYTNmM2E1=
NjFiMzZjYTkwZWFlYjhjNWNjMjI4MDk3MTU5ZDMyYWNlODBmY2FjMDQzMjI4ZGQwOTM3YmRmZGJ=
hOTQ3NmE4MGY0MWZiYWY5ZWU2MTc1ODEzM2Q4YmJkOTgzMmJlYTFjYjM3YTJjYTdlZDk2M2VkNm=
Q0Yzc1MmQ5YTdlOWZlZjNjOWE2YjZiZDljOTdmOTUzODhhOTcxYjVmMGVjNmY0ODMyZGVjYWQ2Z=
GRiNTY1NzgxODVmNDA4MGM5NmFmYjgwYjI4YzUxNzdlNTU2ODYzMWExN2RjYzFhNzU4ZTZjZTU5=
MTllZjhiMmVhZmRmZjJiYmYyMmRkM2JmYTk2MmMwNzhjNjdjZTg4YTEwYjhiOGVkYzQzNTViMmQ=
2MTM5ZDczYWQyNzMyYjk3ZWQ4ZGEwNDM0NTRj" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DOGNkMmJlN2U3Y=
WJlNzNhMDg2N2RmOWRkNWExOGI2YjdiNDMyYjk3ODEzOTBhMmU2MWQ2MjNjMGFlNjU0ODg2NGMx=
MDY2OTMxMDM1ZTdlM2FiYWJjNTAyOTdhYmIwYTZhNTA4ODFjN2ExZGUzNGE1OWVkNDNlMGUyNGI=
xZDhkYWQ3OGQzZjdhMjVjMDQ3MDliZWI4N2MxNGExOTg1MDI0YTI0MTYxODNiMGNhNzgxOWRmOW=
Q4ZGNmNzIzZDczOTdmMGQ4ZjU3MTdiOTk5MTQ4MDRjN2I3NWIxYTIzM2IxOWI4NDZjMjI5NWJjM=
TAyNWQxNTEwM2ZjMjUzMmIzYWQ3YzA2NzA0NzBmODI4NmQwZjJjZjA5NGRmMmQ4NWY1ZGM4MDEy=
YWRhOGY2YWE2YWEyZjAwODNjYzQ5YWZmMDI2ZTc1OGZmNDMzNWY4ZWU0MTJhZWFhMmY4NWUyOTE=
2MjM5YjQ0MGMyYTZiOTVlMGE3ZjE2ZmEyNmVjZGM5" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYTI4ZjQ=
3MzhiMTQ1MWQyNjczMTQ1YTc2OGQ5ODk5OTQyNGNiNDEwNmM0NWUxMjEzMGY0YmMxMjQ5MjIwOW=
U0M2Q0Njg3ZGYwYzU0OWY0M2M4OTc1MDNhYjY4M2UzN2M4Yzg5YjNmNzQzYTU2NjBhZWY3MjkyM=
GRlOGZlNDU5MzAyYmQwMTc1ZjRiNTFhNjE3NzRjNTNjZGQ2N2FiYjc0MjU3MGNlMGFmMmVlN2U0=
ZTkzNWZmNTAxNjg5NzlmYzdmNGY5MThjMTZlYWI0NWYzMWMzZjlkMzlkODI1YzYyNzJlNTA4YzQ=
xMmQzYTYzNDNjODM3NzI3YWEyZTUyMDZmOWFjNzY5ZGI3MGE2NjEzYzFlYWEzZGU0YzY0OTE4Y2=
RjODgxZWY5NjI3NjY2ZGM0M2ZiZGNiYzJjOWI1YWNiN2RjYjY4YmE5Yjk0M2U5ZGY3ZDJlN2Q1M=
DNmOWFjOGFjYTM5ODZjYmU5YWY1NGY0NjdlNjQ4Y2VkYTZkZDQ4MA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNTNhNDNiYjcyYWI0MmQxMjAxMjU0M2=
Q0MjUyY2ZjM2ZiMzI2YzJkZjdkYzY3NDFhZTlmZWZmZDEwNWZjNzE3ZmU4ODRhNzk4NzMxOWNjN=
2EyODdiYWM3YjQzMjI1ZWQyZDMwNGRjNjdiZGJlNzA5ZDY1NDg5Y2E5OTU3OGU5N2U2OWRiNmNh=
NmFhZjg2N2ZmNGRiZTU4MjMwYjAyNjk0MmZlYjhiODhmMmYxZjEzNWI3OWI5YzY2OGRlMzZiZTc=
4NjUyNzNlZjdiMjIyNjhkZjllYTBiYzRlNWZjOWJiMzU3OGY4YTJiY2YyZGVkZTI5Mjc4ZTg5Yj=
MxMDMwN2NlYzllMDRmZjIxM2U4ZDM0YzUxZTUxZTQ5NDUzMTQwMWQ5NmI2YzUyMzM5YzdiZDg2N=
WZhOWYwM2FmYTU5NzViMDcwZmQ3MzMwMDEzMDBiNmRkMDRmOTJlMDgyNGVjYmMxNTQ1ZTQwYmNh=
YzkyOGQ1MGY0NGYzOTMyNzQ0" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DYzgwNTBjYTkwZjc0YjRlOGNlMTQyNj=
IzNGMwNGQ3OGQ0MzcxYTE5NDI5ZmI3MzVmZTc1MzRmZWQxMjViYjQ2YWU5MmFlNjM4ZWFmNjY0Y=
mI5NTM0MTRiNzFkYzY1MjhiNGJkMWUwNDM1NjFlMWYwODZiZTdhMGZkYTljOTgzODNjMWQ2OGZh=
ZmY5ZDk5ZGMwYmY1NTA4YTU0YTg4ZjMzZjRiZTkxOWQwYTFlNzhhOTVlYzA1ZGUyNDUwNTVkMDg=
zMjJhYTA1YzhkMWY0NWQxNTcxZTU0MGZlNjZjNTFhZmQ0OGZlNDYwYjcwYTgxY2E5YTA5ZTU5Nj=
ZmZTQ1NmFmOWFiMGViMmJjOGQ1MWFiYjM1YTBjODZkMmEyNTU2Y2Y2MzVjZjRiZmZjZWI0NTM0N=
mJhOThmOWQyYWNiMWRiNmM2OTU2MDY4NTBjODQ2YjlmYjljZjA3NzA0YzcxZjQ3ZmI3YmM3OGMz=
NDk2ZTExYmNlNjY2OWM3ZWRj" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNjU5ZDNkMmJiMTRk=
ZGQwZmVlZmRjNDM5YWZlY2UwMzllZGRjMjc4YTcyOWVmZTljZjMzODQyY2EyMTg1MzVjMmFmOWQ=
5Njg4ODViN2ZkMGYyNTJmMzJjZTQ0OWNjM2QwZTFkNjAxMTlkYjg5YzM5ZTNhMmY1MTc1MzQ1Yz=
JiNTM3MTFhZGNiZGM0NDE4NmYwY2VjMzQyNWRmYTdmYjNlZmY3YWUxYzc1MDNmOTA1NzliYzE1M=
2FjMDRkNDA2OTBkMWI0MjQ3OTZlY2Y5NmIzNzVhNjkwNDgwYTA3NmIyZDc3OGJlODU1YTc5Yzcy=
MWM3ZjExZWJkNTc0MTJkYWVkNTAyZWY3YTcyYzA2NzIyMzdkNWJhNTg0NWUzMjNlYjgzYTk2YTl=
mNTg3Mjg3ZGUwODMwNDU1NDg5NmY3M2U4ODgzZGRkZGI5M2Y0MmYwY2YxM2VjOTM0OGRiYzg2M2=
UzODM1ZTlhMjUyNmZjMDhjM2VkZDk4YzAyYWM5ZWFkNw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNmEyYTI0YzAzNTUw=
YWRkMDk2ZWVjNmZiYmRiZjgyMDI1MjdjMmI2ZmJiOWM3YjQ0OGZlOWFiYTcwYTRiYzQyZmRjYmE=
yMGMxZTIxODQ0MWM0N2VkMDU4NjNmYmU4OTQxMjgxZTgzMzA3NDNlZDRhYzkzYTViYjA4MTE3Nz=
E2YzUyNDYzZGJmY2FlZjc3NWViN2M1OWI0YzBjZWE4YzgyODhjMDFkMWU3NGUwZDNlYjliMzRlZ=
TgzYzlkMDNjYTQ1NGYxYzI5ZjQ4OGNhNWFmNWE1NjI0ZjEzYmUzYzM0OGI3OWJlYWRhMzBlOGE3=
ZWI1N2Q4ODJkZDM5NjUxZDY2MWFkNzg3MTQyZGFiZTM4N2QzM2IxYzBkOGU4NzdjOGJkNTk3NzZ=
jYjg1OGU2MzIzMDUxM2YwNzdjNzU4MmRiZTE3Y2ZhZWQ2MWQ1YTc0ODliZGRiZmY2ZDUxZjJhMz=
lhOWFiMmQyNmY0NGE0MWRlMmVlNzVjZTkyMDc3NmRkOA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTM1MGE5NTZkNzhh=
NWQyZTllMDBkZGU2MWEzMjE3NjIzMTE5NjJiZDcwYTZiZDljYTY5Y2NiNWQwYWVmYzMwYzk5NDd=
hOWZlODRmNDNkZGQyNGQzN2RiYjhjMTk2NzQzOWQ0MmQ1ZmI1Y2IyMjg4YzQyMDNmNzE3YjY4Y2=
I5OThhYjI5YmY4NjFhYjI1MzUxNGFhNjNhZTY2ODc3MTUzZjUyMjA1YzVkOTBjMmJmZGVmNWVhZ=
DYxZTU3NmVjZWZjMDE5ZThiNTY2ZjM4ZTRmNjU4M2U4ODRlZWUzZjU1MDU2Yzc1NmRmMDRhZWNj=
YWJmMmY5MmE3NDU2ZDAzYmZiZjg1YjBmODQ0ZjdjNTE1ZDExMTBiYjZlNjY0NGI3N2EwNWM4NDM=
4NDc1Njk1MWVkNzRlOWEwZmQxOGE5Mjc0Mjc1ZTk2ZDhmYjQ4ZThlOGIyZGI0ODM3MmYxY2RjND=
NjNGYwYjc1YjRhOGZjZjU2ODM5OGQyNWI3MjdhYzkzYw=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMWJhODRhZGVlOTY1=
MWY0MGVjNGZjMmFjYWQyMDYzZDgzY2Y5MmZiNTcwZTIwOTM1MDA3NTJmODk2ZjQ0ZWYxODZlMGM=
1ZGI5YjkwZmVkNTM1NTVjNDEzMTc5MmM3N2U3ODBmYmJiNmU2ODU4MDY1OWFhMGY3ODcwZDRjOT=
I5MzA5MzkwNTE1NDE0MThkNjMyNjgwNmNkYTMxODBjYmE1NTMzMjc1MTA3ZWYxMTZlNGM4Y2U1M=
DNjYmU1ZDc3ZDk2ZWQ5NDkyZDdhZjA0MjRkMDU3Y2MyNWZiOWVjZDhhODQzZjQwYjUxNmY0MjEy=
NTc4ZGRkMzUwODY1YzliYmZiNmIwOTg1NWUyZTkxZjZhM2Q5MTg1MDFiMTVmNzZlODY1NmRkNmZ=
hMjMyNGQ5MGEzMWQ3Yzc5MGUyZDhkMmJhNDkyMzY4M2Q5MDIzM2Q4ZmIzOWZmNTViYzZlOWUxND=
hmZWZjMTNkOWZmYjE0YWMyNjdkMTQ2YzgyMzdiZDAzZQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMDQxNDJhMTIyNDNlZm=
NiYTg5MDRhNzcyNzcxMzc3ZDU2NzdiODEyOGM1ZjZjODkwNjE2NzZiYzc5NmNmZmRkZDRkNzgxM=
Tk2M2YwMWMyMTJhMjcxNDg1YmI3YWUyNTYxYTM1YjE1N2JhMzU3NzE5NjMxYzJiZTlkNGYyYWY5=
NmU0ODg4MWIyZmJjNmNmNzZiYjA1OGUxMDMzZWFlMWJmYWU2Zjg5NjdiY2NmNDQyM2VlMjU0MmE=
zMDFmMTY4YjRkN2FjMTUzZjg0OTJmNTg1NTI4NzNkZGE4NWNjYjliNjA2NGEyZjNhZGI2ODMzYm=
UyOTZlYzg0YTUzMTBiMzA2M2Y2OTJjOTgzNjJjYmYzZTQwNzY1YWUyYTE1MmQ0YTBhMGVhOTRiO=
GJlMWU2MWFiNGVlMTU5YWNmMmM2NjE5MzYwMzIwNWE0MmFmYzRlYjAyYWFhZmZkYWM1ZDU2YThk=
N2FkOWZjZWRjOGQ1MjE1MDBmMzk4NWRmYmVjY2E2YQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMGNhM2UwMDJhM2M5=
YmY4OTg2OTMxNWUwZTU2YTJmYzkzNGQxNDc4Mzc2Y2JjZWRhYjc1Njc0MDAxYWQ2Y2VjZGE2MTU=
2NWRkOGJlNWZjOTZkNTA3ZDMwMDAzNDYwZTdmNmExMzBiMGEwOGE2NDUxMTA1MzQ4ZjZjMGNlND=
hlYTQxYjc2Y2MwODU2MjBiYzE2OTAxNTdlZjY5YzI5NGFlMzRlNDYxZTJkMmFmYjEyOGQ5OGM0M=
GQzODNiYTY4ZjQ0N2IyYWVkNDc3NzM4ZmFkZTQyZjhiNmJkODY3MDhkODg2ZjkwMTM1OGY1Zjcw=
MDNkMDE4MmM0MTZhNGM4N2M=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DNWM2MTk3MDk5NTEyNzAxYzA3MTA1M2FjMTU4O=
GVlODhiOGZkZGExYTMxOWQxNDUwNGY5NWFlZjE5OWFjN2M1NTY0ZDBlMmFkNmQwNjM1ODg1N2Vm=
NmEyZDYwMTc1MDU2OTAyN2M1ZjBiYjMyMzNiYzA1OTE5YmE0NGE1OGY5NGMxOTg5ZWM3MjkwMGV=
kZTZjMDJkNDNjMTg4MWRhZjM4ZTM3NmRjNzE1YmM0MGI1NjhiYmM0ZWMxZThjYWIwYjYzN2ZmZG=
UzMDFiYWJkZThiODcwYmRiOWFjOWVjZTliYzU1MmVhMTM4MjE1YjkzMzBkMjJhMmY0OGZhYzEzZ=
GJmNTk0NWU1OTgwNGFlZWI5ZmNkNjZkZjFiZGZlYzAzOTk0Y2VlY2MwMDE1ZmE0YTg1OTU1NTQ0=
NGE2Y2I4ZTU0OWViZjE4ODRiZWM0N2IyM2E3NzQ5MmNkNzJjNjYwMzc3NjU5NTgxYWZhZWE5ZGN=
lZTlhOWUzOGMzYmViZTY0YmRmZDM1MDM2YzQ2OWNiZWZhZjdjNjk5YjA2NGZjZDM3YjkyMmVjM2=
U4ZTJiMjU1Y2I4OWIyNzIyYTA=3D" style=3D"font-size:12px;line-height:134%;font=
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
