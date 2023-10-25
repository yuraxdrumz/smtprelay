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
From: localhost:1333?u=3DNDdlYjUzYTVmN2FjNDY3ZmQ2NDk1NTgwYmJiMjc0MTljMWQwZW=
UxNzVlZjdlNDllOTBhYzgwYTk4MDMwOWI2ZGRkMWMwOTM1ZTZmYjM5 <mail@eg.expedia.com=
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
<localhost:1333?u=3DNTM3MDE1Y2FmNTUyNGZkYjAzNzA4MTAzMzJkOGQ5OGY3ZDExZGYxOWY=
wZDViNGVjOGYxNjE1NWQyNGNjZjIyMWIzYTRiZThhZDZjMDhkM2U0NzBhYjVlZTMwZGRjMTlkOW=
UzYjY1MzgwZmNjYWUzMTQzNThmYTRiNzAxNjY2NzhlNWY0N2ZhMjhhMGMxYzM0Y2VkYWRmZDA0N=
jA5ZjM3YTg1YWQ1YmQ4YzYzNTIzMjhiNTVjZjgzOWE4NzYxMGZjODE0ZWE0ZTkzNDVjYmUyNDE1=
ODFmOTIxZDdlOGRjZjM5ZDA2ZDE5Zjc3MmJjODRkMDNlMjM3MmJkMjFiZTFjNWIyODFhZjE2NTB=
hMzNhYmViNmQyMTY5NzAyMDc4NGIyMTIwZDIxZmU1ODIyMGExYWQwOWI1ZTNmNWQ4NGIwYTZlY2=
RhMmQyY2U5NGVlMzIyODQzZWQ3YzI5MWRiODIyODQ0ZmJlNDJlNzY0YjhiYTM3MmM3NjA3YjBh>

* The Travel Edit
<localhost:1333?u=3DZWZiMGI1NzI1Zjc4ODNhNGFmZTU2NTIzMjhkZDM2OTZiNjQ1OGE2NjY=
1MWExZjNmZTE1Y2MyM2I3MGE5Mjc4NzkxNWEyNGVhMWJjMWE4NzZmZjIzMTZmZGQ2YzUyNmVkOD=
A4NTRiMTVkMWU5MWIxZWYyMjhkY2Y5YjVlODU1NTA1MDczZTQyMjlmMTFlYWYzOWJhNTNiYzRlN=
DdiYTgzZmI3OTg2ZjNmMTY4NGQzMzdhODcxNmM1M2I0ZGZiN2JjZDA2NTUwMmNiYzkyNzU0Mjdm=
NzY3OWY4OWJlYjU1NjJlM2U5OTI4YzAyNzFkNDMxYWU1NTkwNTIxMTM0N2QzNWE1NWRiOTQwOTc=
zYmMzMjU2NGJjMDM3MDVlNTIyYmFjYThhMzBkYmY0YWJlZjhlMTIzNTMyYmJmYmNkNzEyOGRmNW=
U4OGU5YTE3Y2M3MjYwMTQxNTUyMTY2NDk3MWIyNmRkMmJmZGYyMjgzMDRlNzlkODhjYjFiNGNi>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODY0ODMxZGVjMGE4MmE5ZjhiMjY4NjJkYWQ5N2Y5MjQ1ZTM3MzQ1YmZ=
mMWI0ZWVmMGQ2Zjg5MmNmYzdkYjJmZDMzOWY1Y2YzZjYzOWE3N2E1ZmQyNGMzYTYwMzVlM2EzNG=
E2NTVkOTQxZWVmNTk1NGNhM2E4ZGY3ZTY4MThhYTU0YmE3N2E1MTc0YjIyOWNlNGM5ZDI5MWUwM=
mRlNzQ5Mjc2MjU0YTQ4ZGUyZmZiZTc3NTc3MTBhM2ExNWY0MjQ1YWE2YmNkODI2MGRiMmI1M2M4=
Y2Q3ODRlNDBhMTdhZTZmNzhlOTZlYWFmOGYyNWU5YjE4OGE5Y2I0ZTdkMmM4MjE2MGZlNjYzNzV=
iMThkOGJhZDEwMTliYjA1MmNhNGFiMjBjOWRhM2YwYTFhMDZhOTAxYjQ5OTE1OTQ4NDA0MjAyOD=
hjMjdiZjIyMjE5ZDM3NWI5YmJiZWY4MjM3MWRhMTc0YmNiZmIzNWVhNWMxZmJlNWQ1MDlmNzAz>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZWYyMGJiYjQ0ZDliNDZhYTQzNjc4ZWI2NGVlOWEyMDMyZGJhZmVjMGZ=
jM2Y1MDI4MjAxNDUyYTU2MWQ5MTc0N2NjYjVkYjQ5MDRmZTc5YzU4ZWU1ZTQwYTNmOWRjZGQ1NW=
FmNWMxNDIyNTRmNTc0MmI2ZjBlZDE3YjZjMzViNThhOTA1ZWY2YjQzNWJjNzEzMTM4MjIzYWViN=
WE4OGNmNzdmMDliZDFmNTJlNzZiYjA0ZjIxZWZiNDQ4YjI1NGZiYmJmN2FiYzgwNjY5ZWJlOGEw=
M2Y2MWFjZTA1ZDIxZDQ5YjQxMWJkNzRkNzJlNzBhNzExYmY1ZDlmNjc3ZDViZGFjOGVjYzVkNTY=
0ZGUwYzA0MmMxOThlNGIzMGYzNTk5ZjQ2MmNhMTA5MWFlNmRiZDZkMTRlOTlhYjgxODM1ZDM1ZT=
EyNjRhMmVhNjVmM2E3OTMzNTYwNzRhZDJkZWVmNmE0MWI1Yzc2NjAyNThjOTY5ZTM2MWM1ZGIw>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DODJkNzYxZjUyNTkxNTBkNjMyYTliNzk2OWEyN2NiNDYyMTkyYzU5Mzh=
iMDFhZWQ3Yzk2NThkZDAxYzAyOWFiZTY1Mjg3OWY2YjM2NDE3OGRmMjU0ZTRkNjYxMzZlYjVlMT=
g3ZWYzMDdiMGMyMjAyODUxNGFlZjZlMjNiNzIzZjU0ZGNmOGZhZjk3ZGFlNWFjNzZlN2JmOTg1Y=
jNkN2U2YWQ4MmVlN2NiMjgxMTgxNjhmYjAxOWFmNmNiYmUyYjgyZmUxYTI1MDA2NTNkMGRhODUz=
ZTQwYmZmMjYyNzYxNTk4YWY5Y2JhMzMzZjM3NzU1NzZkZDYyMDg3NjlhZWY0YmYxM2E2OTg5NmM=
0NmQxY2RiYTNhZjQwZjY3NDFmOGJjZGQ1YzNmNDM4NzE5ZTAwNDY2OTY4YTVlYmExM2MwYTEzZD=
cwNjU2MjM1MGY0YTY0MmQ1ZWY5MzQ1NThjNzNjNTdjZDA5YTJjNzRmOTA4YzlmY2JiNDI1MDQ4>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZTA2YTBmYjNjZTNiYmM0OTM3M2E2MDNlYjQ1MjA4NDg2ZjA2Yzk2Yzh=
lODUxYzllY2ZhZWIxODNlMGVhYmZiMjUxYWYzOTAyZWRjNDNkOTdiOTBhNDA1MDVkMzI1YzM3Yj=
hlODUzNzJlYzg3ZGNlNDk4YzQ4NzIzNzU3NzJlZjRkMGE2YWZlODI2NjgzODI2YjViZWRlOTdlN=
TBiNGNmNTkyOTBhOTQ0NWFiYjg5ZmNjYTgwOThkMmUwNTA3OGFlM2JjZTc3YWRhYmM4ZGQ1YzIz=
MmZiOWNhZmQyODJhZmE3MGEzODJjNjViZTFlODlhMTYxZWUxODQ1NmIzODE1MDdkZjQxY2RmNjI=
5YTdjODJmMjZlYTgzM2Q4ZTc5ZTgzMDU3YjczOWJjZjcwOTEzNzg0YTgxMjA3NjgzMzY2YTRlN2=
NmMjgzZDBkODgyOTAzMWE2YzNhZGUzNGNjZjJiOTk5NTgyYjNmZWJmYzcyYjI2N2NlOWM2MjEz>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMzZmNmNiZTFhNmQ4YTQwNzU3MjQ4NTAxZWNkZDMzNmE1ZjA5MzdmNmY=
1Yjg5NTIxNTc1MzZhNTU0ODIyMmVkZjE3NDk2YmNmOTA4YWYyZWUzZjZlM2NhMGM5MGZlMTZkND=
c1NmY1NGIwOTdhZDdlNTUxMWY4OWZkYTIwMTE3YTc0YThlOTRjODYzZDA1OWMxZTZkMzhiZTk0M=
GM0NmY0NWVkMmZhOTUwNzEyZjRmMTI1NDQ1MjY1NjE4OGRjOWM1NzQ5MzhmMzkwZjQ3ZWFlMDhh=
M2M5MDc1MmMyN2JhNzY0YTU1ZGM0MmIyNmI1MTVmMmQ5NGVhYzFlZTFmZmRlMDFlN2VkMDdlOWF=
lYTBkNGMwMjRjYzExOTk3YmMwNzllMThmMDg4MDNkMWI4MjM4MDJmNTg0YWIyODg5ZTJiNzg1N2=
Y0MmUyOTQxZWMwZjMxMDBiZDQyYTAwOTk2ZGRkNDMyMTBjMDgxYjA3MTBhNGIwYjhhNzcxZWEx>

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
<localhost:1333?u=3DMzJjZDU4MDcyMjZkOGFhMzhhODQzZmNhYjhiMTk1NDc0NGE5MDlkMWY=
5MGI4OGFhYTY2MDk1ZDBjNjlkYWVlMmMwMzE5OGFmZmU5YzMzMTY0NTVkNmUwZjZhMDViMTlkYj=
liNzA5YmM3ZjQ2OWFiNzhiZjJkZWViNjk1MjBmODM5MTQwNjY4YTE3OTgxZDMzOTcwNzRlMWIxZ=
DhhNTM2NjI5OTcyYTAwZGJjYmI2NTJlZTAzOTY5N2M5OGIxMzQ5YTY1YzIzMDA2ZjdiYWQzMzYw=
ZmQ3YjJhZjFkNmNhZTcxNmM2MDJjNGZlOWY2N2E0MTM4YWE5NWRlZDJlNmY5NmE0NTg5MjI2ODh=
lY2FlYTU0MzEzMDNjYmVjZjdiYjQwZTZmMWUyZDNiZGVkYzU1YzhkODlhZmQxMDJlODI1ZTc1Yj=
hlYzgzOGYyYWE0ZTQ0NDZkZmIzMzU1ZDBmMjk5NmIzYTIyM2E1YzdiNjM5OWJjMzM2MjNjMTc0N=
2FjOQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DMzQ0NWUxNzM1NTVkZDZkNjFlNTFiNTVhMDdkYzA4N2RiNTA1MmVkODc=
yM2NiZDMwMmVjMjU4YWQzMzZkNDg5NTZjYTUyZDVhYzFhNGY2YjBkNDc4ZmM2ODMyZTFhM2E5Ym=
RmNzNkYThkMWFkODNlZjI1MWY0MjcxOGMxMTIyYTBkOTAwZmI4ODc4ZjEwN2JhM2MxNDM3YjI3O=
GM3ZTQzYzdiYTdhN2NjOGM4ZTVlZGY5YjIxYzg3MGZjYWM5MWQyMGYyMWNmYmVlYjdhMDczODYz=
ZmUyNDY3MWIxNjVmOTA4MTNlYTA0ZmM4ZjJjMmRlNTQzZDZlZThiYWU1Y2JlNTEyOGQxMzE4NzV=
hYTk4MTc4NThiMzFjZmU3ZmI0MjhmYzMwMTQ2MjliNjQwODU4ZDZhMGZjZDdiMWU3MDliNWY1Zj=
ZhMTA4OTBlMWEzMWE3NzRjOTg4MmZkMTA5YjY3Zjc3ZDZkMDc5ZjE5NDQzYmM5OTU3ZGMyNWNm>
  [image: Google Play]
<localhost:1333?u=3DNjQ5YWQyOTEzMDgyYTQzNWM0OWE1OGU1MWM3NDFhYmRhMmFlMWIwOGQ=
yNmYxN2EwZmM1OWMyMTYyOWNmNjRjMDgzMzMxMTkyY2Q2OTg2ZjQ4M2QwNGI1ZGVjODU4Y2Y4NG=
FlM2EzYWM0ZjVmZjBiM2RkODIzOTI2MzI2ZjVhNGQ0OTEwN2FhYjZjZTBjMjJjYzE2ZmFhMzAwN=
2E3ZDNlZWNkYTY5YTExY2UxZmEyZjE1NWU3Y2M5MjhmNzRlMzQ5NzYyMzA3NzU4ZjcyYWZjOWI4=
OWRiMmRhZDhjMjgxYjg3N2M2N2YzYTIwM2MzM2YwMDA4Mzk1YjU0NzE3Nzc3Y2JjODA2YWEzN2Z=
jNzUwODg5NWE3YWE1ZjRkNTEwYmE3MzI3NGViNWZkMGEwOWZlZGEwNTljYzUwMGIyMDdjYzFkNT=
YxMzIzYTQxZTNhYjU1OTVlZTAwYTFiNDMwMmE1NjIyMDQxZDEwNDA0MWVmMWU1N2VlN2U2MzMw>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZTQ3Mjc1YjM3YjM3M2JlMTUyOWUxZDk4NjExMTY4ZTMwZTNjYTkzMTk=
wNDNmODRiOWFkMGQwNjgyZjNmNTVmODNhZmRmNmRjYmIwMzJkZjAzYzRhNzYyZWI3Y2M2ZGFlNG=
E3Y2Q0MDJhYTQ1OTE5OTNkYWZjZDQ4NmQxZTFmNWE3Y2RkNmUzMDQwMDNlM2MwMDQ1MTdjMjBhZ=
jFiMTNiMWVlZjU5ZTA4N2ZjYzU5ZmI5Y2M5MDkzZTUzZDRlMzc5YzJhY2VmN2YxNmMwNjE1NTAz=
MGI0YzA1YmZmMWI0MGZlMzk4MjdiOTAxYTllNjU2NzM2OGU3YWQxYWNkMGZiYzgwYzkwOTFhYTU=
4MmVhZjc5N2ExYmY5ZjRkYTE2YjUzZTdmZGE5ZDdkZDYyNDkxYzNjNzhlMWQyZmVlYThiNTdmZD=
FmZWQxODQ5ODFkNDI3Y2I5Nzk1ZGI1MTllODJhNGFiODg5N2EyYzYzZmMzNGZlMWUyNjhmMmUzN=
DIxOA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMDMxZmY4NWM0Mzg5MjczMzBiMDViNmU0ODc4OWRkYWZjZDVkNGY0ZGR=
iYTNlMTk1YjAxNmQ1MmE1ZjEwZGY4NTVlMjhiZjU0MGNkZWYyNDEwYmRlM2ExYzViOTU3N2FlOT=
Y0ZGY5NDg0MTQ0YTJmZTM3MDRjMGIzNDA1OTZkMDFhMWI2YTJmZmNiMjk1OThkZDgwNTBjNDBjM=
WY1YjM2YjdjN2RjZDVmMDk3OGQ3NTEwYWJlMzdkYmE2Y2VjOTZiYzhkZGU3M2RlMzQyNDU2YmMy=
MzRmMWZiZGZkMDNjMDhiZDVlMjYyODFjNTc5NjNkYzY2ZDk1MTM2MmVkYjk5Mjc2OTRhODc0NTI=
5ZTU2ZWQ1NTA3MzFlNDk0MGQ0MjU2YTcxODAxYmI5MmZkNmMxNDM1YWQyYzVhMzQ0YTI2NjFlNj=
E5ZDczMDI5NTEwYzZiOGViZmVjZmQ3MzE3YjBhNGQ3ZTcwMWI0ZGVkODY1MGE5ZmJlZTgxMmE0Z=
GU4OQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMGQ1ZjM2ZGI3NTc2YjRmNjU5ZWY3ODg3NTJiMDZjMWM5ZjAwMjIyNzE=
yMWUzMWNlMGRjNWQ2ZTdlYzE3NGRiNDhjZDUwZjFjZjgwNWIzODhhZjJjOThjNDZjMzJjYjA3Nj=
QxNjI5NjBjYjQ2OGJjZGQzYTk2NWY0MmEzOTQ1ZjRmMzJhYTAzYWFhOWM4ZjIwMDY3NjViNjJhY=
zczOTMyODlkOGY1MTkxZDcyYjM5YjI3NTI3Njg4NmNjMzBjNDc5MDc1YTY3MDEwZTVkMGM2MGFm=
YjFkNDQ4NGYwM2U4NzgwYzk3YmRmOGFkODYwOWFiMzdhZWE0ZmI0Mjg5MzA1Yjg0YWI4MjMwNWY=
0OTdjZTgwNzY4MTM5NmIzZmM4NTgzMzhmZjM4MGFjMDBkYTFhOWYxYWI4ODQxMzQ2ZjM3NTc5MD=
I1ZGUwZTRlOTY2NTQxNjI2ODA5ZWZkNmQyYmMzNjM3ZWRlMjI3NGUwNjM3YjU3NGQ5YjdiMTQ4Z=
Tk1YQ=3D=3D>
   About Us
<localhost:1333?u=3DZDAwODNhZTI5OGYzMzg2M2FjZTM5MmQ4MWYxNjM3NDU5Y2QyNmY5Y2R=
jNjJkMmUyYjZjN2Y0M2U5MzJkMDExNGY1NWUyZTk3NjViOTUzY2U3ZTA0MGY2NTBlNTE2NjU4N2=
YwMTdjNDVkZTQxYjlhMzEzMjlkYjk0ODY5ZDQ3YzNkYTliYzIwNjJhODNiY2U2YzgyMjk4ZmVkN=
2JhNGI3Y2EwMGMxYzE1N2NiODQ4NmUzYzVlMDE1ZWMxZDBmOTkzODZkYTM5ZTM2OGJiYThjZjlj=
ZWJiY2RlM2FjMmRmYWJlYjQ0ZTU4MmNmZGY5NmQyNTg5OTE5MDliNGY4MzY1YTlhMTEyN2ZhOWE=
0MGNjY2YzZjFmMDA1NjY3ZWRkZTg1NzE0ZGIzNjgzNDA1NTUwMzIzZDFiNjEzMWQ4ZTRlOGNhNG=
M0OWNmYzUyYjY4MzVmZmI3OTY5Y2E2N2JhOTZkYTQzZWMwOTJjOTE5YmIzOGIwNjRiZDc1MWE5Z=
jM3YQ=3D=3D>
   Customer Service
<localhost:1333?u=3DNzUwM2JmNTUzZDIzZTZjMDZhZjZhNjJhNGJkNmRhMDIwYTNmOTk3ZTJ=
mODdiZGY1MTQzNTljNzRhMDE5ZTcwMjA3MTNmMDEzYjllMDMyZDJiOWU1YTVmNThmMzI3NWY3NT=
Q4ZGViOGQ3OTAzODFjNjk4OTllN2M5ODM2ZjkyODI2NzFkYTI5N2EwNjJjZDJmNjM0MGU3NTViZ=
TUxY2QzNDEwNGJlNGJiYmZhYjI5OWFhMjdhNGY2OTQwNmEzMmIwMDA4MTliMGYwNTlhZTU1YTQ0=
ZWY5ZGRhYjBjYWY1NDVkNGYxMTZlMjU4M2YyNzRmZjdlM2M5Y2M2NGQyZDFlMGI1YmEwNTBmNWF=
hMjg1MmI4NTU3MmMzYjkyMzFkNTBhNGQ3Mjk2MjBmYjMzNmJjMWJiZDE2ZjVjOGI4MjkzNTA2Zm=
I3OWMxYjVhMWY2NzI4NmYwNTVlMjI5NjUwNmM4NDZjZGVjYTc5OWYwYjg1MGEyM2ZmMGUyZmNmM=
mM5ZQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DM2M3NzA4Y2U0OTZmYjc3MGZjOTJhYzQzYTk2MWMyYTcwOGZmYWJlMjJ=
iNjliNTJmNGI0NjExNjYxNzBiMGEwNDBhNWY4NDI0MzMyNWFhYmJlMTFkZmQ5MmRhOGJjNWVhNm=
M4MjAyMGRiYjNhN2ZiMzhkY2ZjZDUxZGQxNzBjNDVjYzIxNWJjMTVkNGNiZDRiNmM5NDIwMzYxM=
zc3M2M5NjdmMDE4ZTU2OTcyMjRkODVjN2RhNzQ1MDlkOTdhYzU3MWRjZDYxN2YzNjUyMjhhNzJm=
ZmExMGNiNDFiNmU3YmY4N2QyZTVmYTVjNzQ1OTQ0MTc3M2JkM2Q2YjVjNjI=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYTNlMjcxYzFlOTAxMzVkOWU3NzE4YzY1NzVhMTlkMjJmNjQ2NzMyZmI=
5NDFmNDQzYWJhYjQ0MmRkNDFkNzU3OTdiY2VkNWMzOGU5N2I0OWE2ZDc2NTZkYTFmNGVkYjAxYz=
c4MmMzMGU4Yjc2YjE2OTJjNTUwMzVjNGE0YmZmNzVmMTU1ZGM4ODhiMDBkODI5MzYxNGFiZGE0Y=
mZlMjU1YTFhMDJmNWRhMDQwYWI1OTc1YTY3NjRiZGIxMGJhMzVhODY1NmI2NzkxYWFmMDU0ZTJm=
NTBkMWM3NzgxYjdhYmVmZDc2MDExOWRiN2ViMjljNjQ4YmNkMDJmOThkZmUxYzQ2OTRiYWVmZjQ=
5OGNkMjg5OWUyMzUzMjc3YzFjNWQxMmRjZTQ4NjRjM2Q0ZjZhZGFmOWNkMGFjZTA4MmU4YTc0MG=
MxZWM1YTc5Mjc1MTdiODE2OWEwOWRhYjYxNmMzZDgyYjhhYTRhNDVlYmMwYzVmZWI5NGYzMDM0N=
GYxMDcxMGZmYTExYzY4ODM4MTI4YzlhZWE0MDgxY2ZmMDdjMzY0ODYwNWRhZTUwMzRiMjMwNDYw=
ZmQwYjA=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZjQ2YzliYzEzZmM0YmJl=
ZDIyYTFhOTk4NDkwNDJjYWM1Nzc1YTY1MzdjYzM1YjZmNjM2ZjQwNGNiN2U0YWYyYzE1YjAxMDI=
5NzAyYTUzYzdmZTdhMzZkYWRmMDQ3N2YzMWM3MzMyMGNlNzk2YmQ2MGRkYzg5ZjU5ZmJkODRkMm=
ViMDJmNDkyMmFmMDE5Yjg4ZmY0OTY5NjA4OTk2Yjc2ZDQyY2M0N2JhZDdlOTQ4ODBhN2UxODViM=
TFhNmUxZGQ4ZjRkYzA2MmQxNTJjYjgzNWJjMzFiNzU0MTJkMjE3NTBkZDFmMWM1N2EyM2U3ZTU3=
YmZiOTVjYzQ0OGVkMjZiYWI1YTYyNzM5ZmRjYzgyYjk3YzVkOWRiZWQzYWVlMWNjYTRhNzNjYjk=
yNGMzMzJlMTNkNTZiNGRkODQ1NWM5N2QyZjVmYzE1YTQ0NTllM2VjYzZmZjE4NGI1OGM3MDI1NT=
EzNTZkMTM0ZmE4MDU5NDdhNDZhZGExOWI0" target=3D"_blank">
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
?u=3DZTA0OWE1YzQ5MjBkOTVmODRhYTI0NmU0M2Y5ZTc4MDNhNTdjM2U3Yzg4YzY1OGRlYjNmOT=
RkYzIxNDIxMTlmYWExY2M4YWYyOTE2NmQzYzkyMDIyYzY1M2RmYjA1YjBiODBkYTY1ODYwYTBkN=
jhmOTU0NDJlNWEyZWFjYzlmNzJlNWNjMzJhM2NkM2JmYzY5ODY2NjBmZGE0NzgwMzhhY2QxYWI2=
ODY3NmZkNTNhNmNmYzdmN2NlMWZmNDAwNjBhODdjZGY5MDViNTZlNjM2MTJiNjBiYzdjNjEzNTM=
4NGVkNDViMGRmMjU0YTc1YmY5NzUyMzZmMWRiZmQxMThiMDZhMjQyYjc4YTU3YTAwOGM5ODc3OD=
MwNjMxMzAyMjg0NDI2MzY0OThjYzRmZTQxYzI1NDgzOTA0MWRiMTBiY2RlZDI4MmQ3MWVhZmQ1M=
jYwMGZlODU4ZThhYjU1MDJjNTcwOWRlODg3MjZmNTUwYWUyNDc4YmFhN2Ri" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DNjUzYjZiN=
DkyYmUxMmViNjAxZTJkODc5M2YyNjE1NjFmN2RkNDNjYTNhNDc5MzEzYjgxMDc4NGI2N2I4MjUz=
MTU1NDJjOTg3Zjk3OWJiZDg2ZDI1Y2ExY2JhYTBhZDdkYjk0YWQ3NDRmYzcxNzY5MWExOWFkYmQ=
wZDBkZjgxOGM3OWUwZTJiODZmMTU3ZDNjOGIyZjU1ZWNjNTFkYzNhNGRiNThiYzAxZTFhMmIzNG=
FmZjY0NjEyOTZmMDM2MjI5NjIzOGM1NDE0YjI2YWQ1OTQ1NjI2M2JkYzZhYjMxYjk5OGI0NzU0M=
WNhYmM5MzU0N2FlMGYwMDhiZWJjNTY3YWIxZWVlYzZjMmU0NjYwZWYxZWU4OWNhMmYyYWIwMTk1=
ODc1ZDFhNGM5ZDhjNTE3OTMzZGUzODg4YWU1MzczZmUxMWJhNWYwMmYxNGFiYTEzNjhkNjM5ZDB=
iZDc2ZDUwMTgwZTdhYjc2ODA3NTgyZGE4NzgzNGNhNmU1" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DMjU1OTk=
1N2NlYTZjY2IyMmZjNzM3YjJkMDEwZDExZmM1NDU1MDEwMWJjODc4YTA3NGYxZDdhMzk3NDI4OD=
ZkZjNjM2U2ZDU4ZjNlMGY3NTg4ZGY4NzlmNDhhYzE4NDE4M2ZkNTQ5YjNkMzY0MmQzYjdhMjZjO=
GJlMjVlMTcwZTI5ZjVlYmU3MTc3YjI1ZTYxYTkxMGJiY2UxOTVhNjc5OWVlZWQ3NmFhZTk5YzI0=
OTFhNjlkMDBmZGNkMTI4NDU3NjY2NjRhODcyZjM2NGM0ZTg5ZjljZGJlMTM5OGQzOWU2N2Y4NmQ=
wMzA0YWY2YjVhNGM4ZDQ0YTMwZjNmNmQ1MGQ2ZWU2YjBjM2E0YmY0MTM0MWVhNWY0ZDJmMTBmZj=
I2MmY4YmEwMzY3YzFhNzU4ZTRhYTg3ZWE1NTljOTM4ZTIwOGM0NzM4ZDIxZjMwNmQzMzAwNmEyM=
jQ1YmQ5YmUzMTdjMmIxYTk4MjgyYTdhMjI3YTg4YjAzNTk0" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZTQ3Mzg4Yzk0=
YjI2ODU5OTEwNmQ3ZWYyMzQxMGRkMWZiODNlNDIwOTUxZWNjM2FjOTRlZDgwNmZkMGI2ZTUwODB=
kNWRkY2MzMmNjMGRjMTJhYjM0YzIxOTBjYTlkNmE1MjhhNGQ1MjY2MzE5YTA5ZDhmNzAxMmM5Zm=
VhMDg0ZjQ5MTg5ZWU2MmM5YjU1MzkxZTBjZmY4OTZjMTgzNzViMDIzYzMzMDA5ZGMxYWU4ZmQwN=
TBhZTAyMTY3NGYxNmM0OGE5M2ZlNjY5NmRlZjkyMWEzNDNlMDNkOWEwMjE2YzNmYjIxYWI2YTNi=
Mjc4OGYxMWZmN2VjYmViODExZTc0NTA4NmJiN2MwZDExZGNiMWNhY2Y2MTk4N2I1OGUxNzEyNzN=
kMWFiYTBlZTgwZmJiMTFmODYzMjY3YTA5NzIwYTZmMjZhMTg3MTM2N2VlMmMxMzI3M2Q5OWE3ZW=
ExYzJlZDBhN2MzZWEwMmYxMzEyMTA2NDExM2M3NGU0" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMmQ5NjM5NjBkMjkxO=
DVhMTFhMTdlNzI2ODhiNjJkMDliMWFkMmE3MTU1NGViZWUwODdjYTgyNjFjOTdiNjRlOWNkZGI2=
MjU1OTkwNmQxZmYxYWIyMDhkYWI1Y2ZhYWQ4YjY3MWJlMTUyZGE0NGJiNmY1YWY0YjM2ZWFhNWU=
4YTAzYzIwNDNlZGU2MzhjNWUzNGM5M2IyMjlkMTYyYWJhZGM3ZTdkNGFlODM3Y2JlNjFiMjU2Zm=
M1MWMwZTE0NDg3ZDY3Nzc5YmVmZDZjZjM0ZGFjNjZjOTIwMWZlYmJiZjczNjk3OTBlOTY2ZGZiM=
mQ5YjIzODRhOThlYzBjYWI0OTE3MTMxNzIzYTc1OWI2YjY1ZGU3NTg0OGIwYmUwOWM4ODlhZjVj=
NTVjZWEwMWMzMDA4ZGU1MTc0ODM0NDFiMjdjMTc1OThmZmY3NTE3ZGQ2ODcyOTNlZWVhNDI5MTM=
wZjBhYzRjZmYwNTZiY2U5YmMzZjI5MWI0NTE2" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMzczM2M3ZGJjY=
2NkNmYwMDdkYTE5OTQxNjRjMmY5Mzk1ODJlN2NiNDUzMTgyZTZlMWYzZDI0Yzg5ZWEzMTg1OWI0=
NDkxZGQ4MDc5Zjk4OGY4NjQwNjIxNjdhYWVlNjYzOTI5MzE3MWU0YmRhMjY1M2QwYmMwY2E3NzV=
mYmI0YzY1ZDQ2Y2IzNmY2NzQ4MTczYmIxNWZhZTljNzUwYTM5M2QyYWFhNjQzMWYzYWRiZTdkZD=
FiYTM5MTkyNTNiZDQwZWVkYWU3NThjYTQ4YjhlYjFhMjQ1YzRlNzYwYTMwMThhNTI0Zjk3NGJkY=
zI1MGE4YjQ1YjBhZmMyMWFjNGU2NDg0OTUxZmMxMGU3NTZjZmU2MGMxNTBjN2U3ZDRmMDRhMGRi=
NjgzYjRkZTY1MjhmNTQzM2E1ODdjMDE0YWQ1NWE4MDhlOGZhMmU0ZTg0OWQxNjI2YjlkYzIyNmQ=
1MzZlMDE5ZDZlZDBlOGUxNTIzYTlkMTQ4OTVkNjJi" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYjFkOWQ=
5ZjA4MzBkMjJiYTA2MTQ4Yzk1YzMxZGFlZWZjYTQ1MGQyOWIyNmFiY2NiYjM0YmUwMmE0YjZkZj=
czZGQ4YzI1NDA4NzFiYjlmMzQ5MmE5NDNkOTFlNjMzYTlkNjM2YmQ0NjJiNzZjMzRkMmU1NzFiY=
TA5ZjI5M2VlMGZmM2M1YjRjNTQ5MTUzNTZjZjVhYTJiODg5ZTM2ZTM1MThhNTVhMTAwMDMyMGU4=
ZTliODczODQ1NjM5YTNmNWViZGViNTFjMzU3ZjEzOTA1ODZhYzFjODY2NTllNTQ3YzJmZjNkMmR=
iODdiNjJmN2NkMWJlNDJjY2U4MGE1Y2U5MWJlMmI0MjcyMmVlZmIxYzBiMDU2YTU1ZmMyMTEyMz=
Q1YTlhOTEyOGM2NTUzNzIwNGZjNDY1MzE0ZjRhNDI0ZjY2MGU3N2UyYjYyYTM1OTBiYWJlOTMwY=
TBkOTMwMzBmODIwNDNhODRlMjIwOWVjYTdlM2Q0M2E0Y2VhYTkyMw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMmYyYzI4ZDc0NjNjMjM4NzY4NGVhN2=
M1ZjNkZDllYmJiM2JiODk3M2U0ODg1YmU0MmI4NjNiM2VmMWYxYzZhOTE4MTg2MDVhOWExM2QwM=
mIzMWQwZTAwYmRlNmU4OTQ1YmE1NzU2OTE2YTk0NmQ0MmU2Y2ZkZGViMjBjMDFiYWI4MzU5NTRk=
YWNjMzk5ZmE4MzkwNjExNTE2ZTYyNjc0NjE2YjI5ZTE1YjRiMTQ1YThhYjdjNGRjZWZhOTNmY2E=
2ZDAyYzM0M2EwOTBlYWNjNzJhMzU1ZDRiZWIzMWYxYzYyOTg1YzRjMjJlOGM2OWJjYTU0ZjZiOD=
hkZjBlYTI3YzdiMDRlZDBlMjkyOTQwYWUzNGNiOWIwZWVkMDkwMzAwZTQ1MWZjYTI2MTgyYmM4Y=
TcxMDk4MTA1YTFlNGQwYjM5NzBiMGVmOWMzNzQxODZjOGQzNTYzNWY2ZWFkY2UwZjI0YmEwYmI4=
OTdmMmI0YWMzZWRmODI2NDA2" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNWVmODJjMmI4MzY4OTk2OGRkYmEzNW=
M1YjMyMjdkMWJlMGRlOGI3YmUyNzMwYzdkNzhhMTlkNjhkNjJlNGU0ZTViZWVjZTdiMjUyMThhO=
DA3ODNlOGFjYjhlYzliYzVmZDQ1OTZlNjAyMjkxMGFjNDNhYTQwY2UwNmU0YjczZjQzY2Y0ODA2=
YmJjMjVhOTM1YWE3MWNkNDkyOTg5ZTQ5MTQ3MmNkYTM0YjFjNzQ0YzNjZGJmNzQ4YTZhNTA1NGV=
kYWZkNjVjMzIwN2NkNTAxYjg0OWY2NzhjOTEwODQ3ZjA0MTY5MzlhYzE5NmI5ODI4NTY5MWRiOD=
BhZWFjNGI2YTg1NGFiYTk1OWMzZTNhNDk0OWE5YTIwOGU0ZGQ0ZTQ4NDdjNTAyZGU1NjNiN2JiY=
WFjMWVhYjI5YzU3YmU5NzhjOGVhNzE0NzIyNTZkNmE4ZWQzODVlNGVkMWYwMDczZDExYTlmYjg3=
ZThmMjdlMDU0NzZkN2Q3ZDYw" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTAyZmIzMTg0MmI0=
NmIzZDlhY2RkNmEzNDMyZTIyMzY0MmExMmU0NThlMjY4M2E4NzkwYjEyZWVmZDUyNGUzN2IxZTM=
yYjIzNTk1NTQyYzBhZmVlMjczYTdjOTVhYjk5OTI4YjQyZGRmNjc2YWQxZWQ0NWVhMmM2ZmM1Ym=
Y1NWZkN2I2N2JlNjc3YTE0ZjlmMTg5ZjZiODE5NzE2ZGYyYmNmMTlmZjBjZjAyZjBjY2RiZGE4M=
zFiMzhkYmExNDg0ZGIyODEyMmFiNmRiMGNmNzc5YTEwNDQwYWM4NDE4MjcyZjBkOGI4NTFjMTY3=
MjViY2E3YzljMzBlNjZkOTdhMGUzOTUyMzg2OTE2MmZmNzE2MWY3N2U1N2Q4ZDU2NzgwOWZmOWN=
mYmNmZDU0ODkzMTQyNmViNGU4ZjkwMGE1YmM3MmUxZTk0ZDEzNGY4YTlhYjZkMDljOGI0YTJlY2=
EyZGVkOTliYTdmODgyNTk4ODM3MDVlMmQ3MDM1MDEyZA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDczMDdiZWMyMTNl=
NmQ3YmFiYzNiODk3YTg4ZDQ5NTAzMDY5YTI2ZWM1YTcyOTFlMTA4NDU0MzhiYWU3MTEyMDE2ZjF=
mNzA5MDAxMGNhYzc1ZDcxNzM1OTczMjA5Yzg2NTNhMTA1ODQyYjk2MThkNmJiYjBlNjkwNWNhNT=
JkNDQxZjcwYmVhYzMxYTY2YjRlMzcyZGY0ZDE5NDQ5NDdjOGUyN2E4MTAxMDc4NzU0ZTg4MTk1O=
TJhZDIxMjkwOTlmN2M1NTg1ZWNmZWI1NTUxYzk4ZDBhOTZiNzhhNzBkZTFhNGUxYTIwY2FiZjUz=
YzM0Zjg3MTc4MTg1NDgxMzE4ZDJhZDIyNmVkZGMzZWY2NDU1YjEzYjc2YmZhNDZkMzkwOGU2MTY=
yMzA5YWE4MGM5NjAzOWE5YzBkMWIyYzBjOGVkZDQ3MWYzMDViNmUzZGQ2MmE0MzI4YWY4M2Q5N2=
Y4ODE5OTgzOTgwYWYwOGIwZDliYjhhODk0ZTE4MDc1NA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DN2MxNWMwM2IyNTZj=
MzVhZTIyZGQyYjZjZjYwNDExYTUxZmU2YjZjOTVmYTNmZDAwNzZlMWQ3ZDY5ZGQ0Yzg2OTQwYTd=
mM2RjY2U5MzQ1YWUxMGRjNjkyZGFhNzg4ZmUwZDFhMjgyNGM5N2I5MjQwZGRjMjQ4MWIwNWU0Yz=
NkOTgyOTkyNjBlYzE5NjdhZDA3NjViYTQwZTkzNmM5ZGI5YzM0MTllZjA4YzAyZDk4NDg3YjUwN=
mNhNjBjYzUxNzg1ZjQ3NGFjZTMwYWFkYTlkNDEyMjIzYmZlMWYwM2M3OTNlYTI0OTY5OTlkMGMx=
ZmIzNzlmN2Y3OWNkYWRmMjVhNjA3Y2I5MDZiNmI1ZmJhZDhiODRjMmMxN2IyMDg1NmU4ZTU0NWM=
xMGE4ZTI2ZWE0ZGI1ZjI0YWM5MTUzNjc0ZjBjNWFiYmY3MjEwNWM4NTg5NjYzNDc3MDBjNTYxMD=
diZWEzMTY1YjQwODA3M2YxZmY1YThlODlmYjQ3ZDlmMg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DY2VjMWNkMzhhMzAy=
NjMxMDRlNGFmZDc0ZDVkZThjNGY5Mjc5MThhZDMyZjFlY2U3NmNjMzNlNmRlMGIxY2M2ZWZiYmY=
4NDY5MzhjZTM4MTdiMjQ3MWEwNTIxMjk4MjkxZDEyMDQ5YTYwZTQ0NmJlM2VhOGVlNzllZWRkMm=
M1NzA3NjM1YjQ4YjQwOWM1ODYxOGI4YTliOWY1ZjliNmUyNTQ3YmQxMWExZTQ1NTQyYjczOGRhO=
WNlMTJiMDgwYWY4NTk0M2NlNjZmMGY5MTE3OGQxYzg1NTQwMGFjM2Q4ZjIwMmViNGIyMjUzOTll=
YjcxYzM0MjU1Y2FhZWQ1ZTBhM2YyYmQ0YjIwNjViOWQzNjM5ODkxZTgzNzYwYzk3MTFmNTJhZTY=
2YjI4NTE4MWI0NDQ4OWNmNTlhMWU1ZTEwZjBlN2U4ODdiM2U1Nzk4OWU3Njk3NmYyZjQ0MjA5OT=
E2OTFmYmY4ZDlkYjcyYTQyNTFkN2RiZDExNTI2OWQ5OQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTdhY2RkOTRjM2UzMG=
M1MzNkYWM3Zjc4MDZhNGQ5MzFhYzM3OTQyODQ2NTEwMmRmMjlhOTAzMzQwYTg4OTFjZjA5YTE4Y=
mU3ZmVjMDMzMDdjOGRhNThhZjgxZmNmYTFjNmRlM2E3NzhjMmViYTdmY2RkNzhkODQ3OTFjMTFk=
YjM0NTcxODlhODkxN2JjNjFmMmY3OWJlYzcxNjViZmM2MzA3MTdjMzk2YWZmN2VkOWRlNjllN2Z=
hODUzNjdhYzQ0NjM5ODQ1NThiODQwZDQyYjczY2M5ODRhMmJjNmI5YWUxYmQxNzY4ZTU2YmYyZT=
djODIyMmUyYmQyOTliNWU2YzFlNWY3YzcyNGNmM2U2MGU4ZTI0ZDVjOGM0ODJiZDRhYTUyYjU2M=
2MzNWQwYzE1MzQ2ZWZkY2MyNWNiYTAwNDQxNWJkNmZjNmQwZjY4ZGQwODFkZGM1ZTkzYTNmMmM2=
MjJmOWE3ZDBhYTY1MjQ3NWExYTBhZDI2NzhiYjVhMg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNjQ4MzNkYTg3ZDg4=
MDE2MzljZDc1MGI3MmRhNzQ2ZGVlZjdjMTdkNjUwMTYyMTlkNmZhZDQ0ZTIwYWE3NjYxZDhmZmQ=
zZDFlODNiMTM1NDA3MGE0MDhiNzg5OTcxMzljM2JmYzRkMzJiYmY5MGY5M2FhODdiNDM4ZmYwMD=
ZhMzhiMWI5OTAxNWY0NjQ3ZmI2YWE1YTJmNDI3ODU4ZmMxOTA1ZjMzZDc2N2FlMGFlNzYzNDdiM=
GVkY2JmNzc3YjZiYzIwZmFlMWUzYTBkMDgyZTdiYTg4NzI1OTczMDY3NDllZWZmYmJkZjQ2NGMx=
NDYxNjU1YWJjOTUyODJmMmQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DZWM3MWIyOGY0MzM5NDY2MjVkYTUzMzgwZjEzN=
ThiOTMwNWVmOWViNTNmZTk2OGU4NTI5MmM3MTA3MmRhNTE0M2M4OGE0YWQ0M2RmMzMyOTM5N2Iz=
Y2Q5MDBmZGVkNDA5ZWYzYTJlZGU0NTE3NDM0ZGZjYzZmMTVhN2IxODU4MDhjNzJlZWVmNTE4Nzg=
0YWEwZmE5ZjRhMmY2MTc4OGYxZDQxMWU1OWU5YzA5ODY1YTNmZTdlYjQ1MTIwNmNjOWE1ODVlMj=
dhNTQ3OGEzNGMxZTc0MmY5ZDFiYTliMjU4N2FlMzEzNjEwZTVmOWZlOTllY2U3MjgzMGUzYWMxM=
TE3OWY1MWNlNjBlNzA5NzBiODBjMDYyYzFlZmExZmQxZDkxZmU0N2RmOTY5OWUwODdlNDA4Zjhk=
M2U5ODY2NmUxZWUyYTViYzg4NjdjNzFkMzFkMGU2NTIzYTFmZjAzOGMwZTE0MWMzMzU3ZGU5MjE=
4MmI0ZjJjMjdkYTU0OTA4MWRjOGE3OTI5Yjk5YzY3MDI3ZmRhYmRkNzUxNzQ4MzJmMjgwODk2ZG=
ZlZjVkNDA5NDcyYmZiNzdkZjU=3D" style=3D"font-size:12px;line-height:134%;font=
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
