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
From: localhost:1333?u=3DNTk4ZWI2NmU1MzhlMzkwY2FkMDkxMjY5MzlkMDM3YzY5YTBhNT=
djM2FhMTc5ODRiNjFlYmZhZDMyZjc5OTE0MzNiZGYxMGI2NGI1OGNm <mail@eg.expedia.com=
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
<localhost:1333?u=3DZTEyY2QwZjk5NzZhYmFjYzBiOWU5MjIzZWFiNzc4Yzg4MmExNWYyMTh=
hMmU0YWU4YzgwNDk1YTA0NDA2YzNhZGQwZTk1YjZlNDYzMmRiYzIyNjExYTliZjg2YTkzODc3NG=
YyNmE5YTU3YmM5MmYyNzJlNjk3Y2YxNWM0OWI2ZjZlM2FmYWQyY2ZiNTE5NjAxMzQxZDBmY2FmM=
zU5ZGQwYzAzMTI5ZDRjZTQxMGJiMmJjZDYzYTYzYTBmM2E1ZmRhOTA3MjNhZjZhMWUzZDc0ODA1=
NThlMmM1NWQ4NDNiYmU3ZTQ0MDlmMmQ1YjVhODQwYTU1N2I3MjU5YWVlZDM0MDk0MmRkYzQzZjh=
lNjNlNjIxM2Q0ODBiZGU5YzI0M2Y0Nzg2MGEwMTU1MzFiZThjNTJlYjNlZmVmNThkNmNjMTA0Mm=
RlNGI3MzUwNTY2MTMwMjVkNWVmNzk3OGY3YjAzZGRkMTQxYTE5YzE5OTA1NDIyZTA0MmJiZTQz>

* The Travel Edit
<localhost:1333?u=3DNDc5MjEyMDRkNDJkZjJhNzlkOTAyM2RkOGMzOTJmNmNiZjMzYzMxNDR=
kY2M1YjIxODJkNjA0YTY1MDQ0NTlhOGE3YmVhZmI3ODAzMDYyZjM1MjY1MzEzYjI2NDgyMmE0Y2=
I3YmY5ZjE1NThiNmUzZTUyNDliNjRkOWI2YTdkYzBmZDU1NTI4NDk3ZmZkZjJhZjc1ZjEyYzI5Z=
TNlMGViNzJkODViMzFmMmE4NTg1MjhmOGRhYWNiMTc4NzE0ZTIxZWZkYjk5ZTMwMzk2ZTY3ZjQ2=
OTI0MGNiZmI5OGJlMjkwYzJkZmJhMzc1MmRkMGU3ZWY4Y2QyMWY5OTM3ZjE5MWY0MTU2YzAzMGI=
0YWJlNTMxZmE4M2QyZjg2NjI1ODJlOGIwNjcwYmVlZGI2ZjZhMWRjNmNlMzQ4N2UyN2FiZDNmZm=
I1N2MwYjNkMGUwYTViZmMxNWNmMTBkMjJlMDVhNTk5MzA4MWI0YzdmZTU5YTdkNmJlMTNjZGI4>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOTAzZjI5ZGUyYmRkNmIzZGQxNzA5NDAwMjIwYWJiYmY3MzEwZjI1NjF=
kODBkNzZiZmZkMzE3YTUzYjI0MzQ1M2MyNDA0M2Y0ZGEzYjMzYzk2OThiNTZiMGQyMzFmMWMzMW=
YzYTZlYzc0YTk5YWVhYjNlOGJhMmNmODk5ZGMyNjJjZDZlZmNhYjBhOTY0YWUwNzM1MjczNmU1N=
2VmNzk2MWUzYTNjNjI0NTYxOTY2NTM1MjMwM2FhNGNhZTdkZjk0YjlmZTM3MDhmYmJhYmM2MjUx=
NzY5OTRhYTA3ZjU3NGMwMzFhZDgyODJjMTA1ZWY1ZWQ3NzQ4ZjkzOTkwYzRmNmUxZWI4ZTM4ZDk=
4OTZmODk4OWRiOTYwNWQ4YzcwYTJkNTc1MDI0NDQ1MDE4NDM1M2ZmMjAxYWEzMjA3MTU1ZGE4ZW=
FkMTNmZWMwYTc0Mjk1NjkzMmJkNjEzMDJhNGI3ZDJiMzgzMTBhNzJiZjk3Y2YwYjZlZjQ4Njhl>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMTY1YmZmOWY0NzRkY2Q0ZjllNDM1NWM2MmNkODVkNTQ0MGI1MmFiODZ=
lMmExMjM2MTM2MTg1MjI4ODA5MDczYWUyMDgwMGFlZTNjZmQ2ZjE5YjY1MDViODFhY2QwOWFlM2=
M5ZDk0NDg5NzlhYWFjOTUzODM1NWNmZTNlODliZGMwNTZhMWExYmJlYzg4NzcwMzkzZDQ1ZDZjO=
GNmMGI2ODJlY2JhYmFlODNhYmJmMzUyZTk5MWVkYzM5M2Q4ODlkZWNlNDI4YTE0OWYyOWFjNGMx=
NDM0NzZhY2FhMzVlYWM4ZDkxOWQwNmZjMTdkOTkwMmYxODZjZDlhYWM5ZjQ1ZmQ1YjQyM2NmMGN=
mMDlkZTViMjViNDMzZTBmYjE4OWM1NTI5ZGJmMjkxYTc1NGRmNzM4N2VlMDFmYjQxMDhkZWJlM2=
ZkZWU1MDg1Y2ExMjRiMzRjYTczMGQ0NDUyNzdiMmY1YmY0MjZjNTViMzIwMjBiYTg3ZWY5NTY5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMTczMzgwYTRjNWI2NGVkODUxZGZlNjBlY2ZhZjI4ZTY3YTA2ZjU5M2J=
iOTQyNDE4OWZkNjUzN2U1NzQ5ZDY5ZjZhMTZhZjBiM2UwNTQ4MjkxOGJlMzk2ZmViZTE0ODM4ZG=
VjNWMzNzUyNzdiOWYzOWY2MDA1MDBjYTcxM2ZkZjJmZGZkODM5ZDk4NzRiZDI0M2MwODE4MTAzO=
Dg5Y2EyMGZmYmNmZmI4Nzk3ODc1YzIxMGZmNmEzZDA2MjgwNTFhYWYxMzI5MzRlM2ViNGRkMDUx=
MDQ1YmY4YjVmMDM3YTQzYmNiNzA2ZDI3OGNiNWNiODk3Y2Q0MDRhODBiZDFjN2QzNjE2NTZjYzQ=
xNzJjZTg2ODM4YzkyZmVmN2JhZDRhZGJiMGZiZTZmNDY3NTc5MTIxOGI2MjZhZjk0OTE2NDY1MT=
RhODgwM2E0M2YzYTY0YTU0NTYwOWRhZDE5YzE2MDUwNzQzMmQ0MWNiZmJmYjY5MGE3MDcwNGRh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNmE1NDc5MzY5ZjUyYTg1ZjQ4OGE3MWQxN2IxYzZiODdmN2I3MWE4MDM=
yZDg5NmRkNmVjYjdhZWU5MGM3N2QzMzEwZjc2N2VmOTJkODg4NmIyZTJiMGNlZjIyOGE3YTM4OD=
Q2YTZjMzlhYTY1NjQ0ODk2ZGUwOTc1MzBiN2M5MDgyNWQyODkzNzg3ZTcxYTYzNDEzMjE2NjdkO=
TFiOTliY2IwM2FlY2I1NTMyNjdjOWMwNGQwYjE3MDFiZTU0ZGEyZDBkZWU3YWQ2MWI1MTMxMjU4=
MjNmMTE4ZmI0NmYzZTkyM2FhYmQ2Nzc5OGFmN2JmNjY2ODE5ODc2ZGMxODkwZDU4MjNhNmM0ZDh=
hNDZhNjhiNjM3ZGYwYTc3MjM5Y2U0YmI0NDZjYTBhMTIyMzRjZDc2ZDIzNWQwNWE2YjdlNjhhNT=
gwMGIwNDg2YmUyZGQzZDI0NjUwZjUwMjllNWE2OTRkMzgxNjYwY2M4M2I5ZTAxM2NjZmI1OWJh>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYjFhMjg1ZmE5NmQ5YmUzYTBhZTQzNmJkOTdlZjZkNjExODY5N2ZkODQ=
4YmZhOThkYjNjOTRhZmI5M2E5Y2MyMjA5MTQzNjdkZjUxZWJjYjkwOTRhMTUyMGE0Mzc3OWY5M2=
U2OWI5MmNkYWM3ODYzZDdkY2UwNzQ1MTc5MDI3NTJhYjc5NGViNjY2YzFjN2M5MGZhMTkxYzM1Z=
WZhYWY3Y2Y2YzlhZWM2N2FjZTlkZTVlNjExNTc1NmQ0YjFiMzA5NzJkM2JiZWMyYjllZmI2M2Yx=
MTZhYzhkYzA5ZGNiMmM3MDVkZmRkZjhlYzY3ZmU3YzVmODEyYWNmMWIyNDg2M2JlYzMxNmRjMzE=
zMTgzZGVlMmFjYzU3NGUzZDRmMGU0OGI3YjdlNTA5MDIyYTE1MzczZGFkZDY1YzgyZTQ1MDg1ZW=
VhZjc0NjY5ZTU5NGQ0M2IzN2Q5MTI0NTE4NjYyYjFlODdmZjM3ZWRmOGRhNmEwMmI2MTY5YTM2>

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
<localhost:1333?u=3DNzc5NzI2OTc3NzcwMWMxYTEwNTcxZGM0ZWNlYmExNjBkYWQ0ZGE1ZTA=
zYjNkYWRmNzg4YmMyNjgzY2Q3Njc5YjEyNWYzOGI4NzY3Y2ExZTk5NmM5ODA2YTgxYTdmOTFmMj=
NhNmRlMzA2ZDZlMzVkNDlmY2VkZGZiOTNjODc5ZjI0NWY0YjllYTI5OTE3YjQ0NjgyZjZkYWMxN=
2UyMmE5NmQ3ZTU1ZGQyNmM3MjNhZDA4YTU0Njk5OWMyMTFhYTkxZGM0YTIxNWIzZDRjNmFkZWRi=
ZjhjOWVhOGE5MzQ5ZWFkNzA4NmNhMGY2ZmM3MWQ0YzQ3YzBhNTVjNGIwNDAxMzA3OGRhNmVkNGN=
lYWZlMTYwMjI1ZjI1NmQ5NDRkZGNjYWU4YTUxNWNiODFmMWQ3NTdjNzFiOWM5MjNhMjgwZDk1Yj=
hmMDliN2E2ZTEwOTc3YWY2MzMyOTg1ZjlmM2FkZWI0NjNmMDc5MGJhYzgzZWU0MTQwMmIxYjQ4N=
zM0Yw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DMmFkYmY1NTIwYTMwOGZkZDJiNmM0NmVjZWRlYzJkMjAwYzA5YmM5Y2F=
jODk4YzU1ZTlmNDVhZWI0MGRjODQxZTM0OGE1NDk2OGNhNDNjZDg5MTA1MjkzOGY2MzI1YWEzOT=
QzYTIyZWIzZjhiNjkxNzE0ZGVlYjAwNTM4NTg1M2RkNzYxNDYxMzlmM2RmODdiZTAwOTNiMWM0O=
TE0MGZjZWRmNGFiNDc2N2Y3ZWVlZjhjMWRhNmU1ODI0ZmRmZjBhY2JiNjRkMGE0NTBiZTMzMmMy=
NDYzYTY0NTJjOGNkYjM3MzEwMDY5YThjN2NhYTZmYmFlYzAxZDMzOThkMGEwODFmYzE1NmM5YWJ=
jN2I5NGIzN2FjMjI2MzI2NWY5MWY5NjIzY2YyZjNiYzBlOTljYjljMmQ4NmQwNWViZGE5NmFmMj=
EzMGQ5OTM4NzM5N2VjOGRiZjEzOTExNTU0MTMxZjY1YTkwZWY5N2UzNzUwMWRjMzczYTAzODE5>
  [image: Google Play]
<localhost:1333?u=3DMzY4ODE3NDExNmZjN2ZlNzUzNWFjOGVmMDBkNDMyZDVmM2I2OTY4YTU=
0ODBlZjc3ZWI2ZWEwY2M2NDMzNDQxMjgzZmQzMjc1ZTlmZDM2ZDI2YmIwODM0MGMxMGFjZWIwYz=
k4OWFlZWM1NTUwMThlMGU1Mjg0MDFmNDhlZGY0ZmRhOTlkZDg3NzA4YjVhNjA2Y2Y3MDdiZGYwN=
jQwMzhkYzljYWJiOWY3NjJjY2Q2NzllODg0MTg0MzU0MjVkYzQ1ZTg1MGQyMDk4OGI5YWJhYmZi=
M2I0MjhlMGNjMmNhOGJmNmI4ZGVjNDVlMTRhODBjYTM1ZTRkYzk1M2NmMTU2ODhlM2I1MjRkODU=
zNTc0YmVkMDBiZjEwNjJjZTQ5ZTIwOWJiZjdiOTAwOWNjZDUxMjdhNjZjM2YyNWU4MjI5OTJiMW=
RlMzk2NTA1M2JhYmMwMjYyNDcwNjZhYTk2MmQxMDlkNTcyY2VjMDBkMzQyMDMwYzU2OWJkZjgz>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZmE5YzE0NzRlZGU0YTk0MDM2NWIyMDBiM2I0NzhiYmJjZWJjMTVjMzg=
yZjVhNzJkZDMxZTMzODBlM2QxZjQ5ZDE0Y2FhMjE0MmRjNDIzOGIyZjliNzI0NWQ3MTQ3NjgwZT=
kxZDJlNDlmZjIzZWQ0ZmQyNTRkODFmZThmNzI0OWI3YThhM2ZlNDg4YTUyNzUyZGNhZTFhMGY5N=
jAyZTU3MjJjMjQ4Nzk5ZmUzNWQ5NTcwZDE4YThkM2U1MzI2NDIxN2UxMGI3MzlmNjkyOGU1MTFl=
NjQ3ZmUxMjQzZGQ3NWY5ZTBmZTg4NzlhZGFkZTVhYjIzODQ2NTA3MWJjMDI4NDU3ZDAxODdkNTJ=
kOWIxNzFhZTc4Y2I2MGM1YzY5MDBhNzZmZmNmMDM3OTk0OWZiM2Q4YTA2NzIyOWE5NmRmOTZjZT=
MyMDlkMDVmYmQ2NDg3NDEzNjEyZDgwM2FhYTEwNWEyMzNkZTc3OGFkN2M0YTdiOTBmODkxMDllN=
TNjOA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DM2MyYzJmMmQ2Y2ZjZTUyZWI2ZTk4ZTFiYTU4NDA1OWRhODQ1Mzc0NDN=
kNTYyOGZkNzM2MTk3NmE2MTY5NTYxOGE2NTk0YTQ5MDAwMDlkMTc5N2EzNDBjZjExOTFiNjhkNz=
g4MWQxOTJmYmZhZWQ0MWNiOGRmYTE2N2M4YjUxZTQ1OWE3NzM3NzZmNDE3OGVlOGFhMDUzMWU4N=
DM2MmE4MjRmMGQwZjg5NWJhM2M0NDE4YWE3ZjgxYjFmZTBhMDIyZDM5OTQ1YWRjMGVkMWE3YzJm=
ZjdlN2FjZDE2ODE0YmE2YTMyODgwMzAyODIzNzljZTNjNjg3YjdhNWZjN2I2ZTM4N2JiMDg4NmZ=
hNGQ3NzNlMGI0Yjk4NzA4MmYzYjJlYjg0MmJhZTY0YWQ3OTViYmM4NGUzMThjNjM1OWYzZTk5ND=
M3OWIxMjFmMmY4NTlmZjk3N2Y3YzgyNjc3ZWVlODlhY2Q1ZTA4YTUzYjg2NjJkZGQyNmE2MGYyN=
DQ4MQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNDMzNzNiZTU0NDkxMzJjNjMwODcwMTlhNzRmNTIzZmQ1OGI2ZDBlNTA=
5OWE1YmIyMDM4OGNhOTEzZjFiMWQwZWY1MTVmM2ZiN2UwNzM2Y2Q4OTJiNTNmYTQ3M2QzZjllMz=
dmMmZmYmQ5YTU0NmU4YWExYTA3MTE0ZTkwNTkzYzU3OTg5MDE0NTRiNGUyYmU5ZjY2Nzc2YTNiN=
jM4YjVkOGMxNjRlZmYwNGEzMWVhNGVhMzMyOGMzNGU5Mzg2ZGFjOTcyYWU3NGMwNGI3NjA3M2Y4=
YjdmYjYyMjdhOTQ5YjQxYTJmYWVlMjhjYzk3YzQ1MGJkNWIyZjZmNjEzNmY4MDU1YjY3YTYxMjd=
lOTFkZGExNzAwYjJkYWM4NjFjMzBkNDQwYmI0ZjhhZjcyYjRjNTYxODY1NTViMzU2NzA3YTQ2YT=
k2NjczY2ZiMTQwNGU4ZWFlMDkyNzU0YTc4ZmMwNzkyNGJmNmFlYjU0MmM2OTgyNWQyYzNmMDA1Z=
mM2OA=3D=3D>
   About Us
<localhost:1333?u=3DNjEwZTI2MDk5ZjliYTRmMTVkMDkzYmE5YzJiZDgwODk5OGZjYjE4NjV=
iYWFjOTZjN2M0OTcyNjFjMTRkZmRmYzhiNGI3YTE1NWNmMmM3NDRjM2ZjOWRkNDhiMDU0OGYzY2=
Q3NGQzNjlmMjc4ZmViZmQ2NDBlNDQ5YTRlYTg0NDIxNTQyY2Q2OGYyNWY5NDRmZTU0NWE1ODE0Z=
TAzZWFlODVhMTkwOGY4ZTY5NzZiYzIwN2JhZTJmNWY0YWI2NTk3NmIxMjkyNGYwOTE4ZTI1N2Yz=
Y2U0N2RjNTkyYmY3MTIzNzJjN2RmYzJiOWI5NDU5YTEzNzU2MDY4NmMwYjg4N2IxYzFmNjM0OTB=
lMzE0MjliMmNmYTRlNzkyN2Y0M2YzYjAxNTRjZmVjNjlmYmVmZWUwMWFkYjM1ZDRlNDBkNGU0MT=
QwMTJjNzM2YWI5N2Q1ZmVkZDVhNDA4NGEyNjI4ODQyMTExNzM5NTMyY2JjZTlmYTI4NDg4MWY2N=
2U3ZA=3D=3D>
   Customer Service
<localhost:1333?u=3DYWFmZmY2YThhODIxYTcyMzhiMTUyYTkyMzFkYTEwYzc4ODQ4ZmNlZjV=
hOTA1Mjg0ODU2MTNjNWFiMDNmM2ViZjBjYTIzZWY5MTYzYjhjODkzZGQ0NjdmYWJjYWU5ZTc2Y2=
RiNTY0OTgxOTllYTI2ZDBlZmYyYWEyOWQ3MGQ1YjdmNTYxMmUxNjE4ZmI0ZGE5NmVjMDcxNTgzZ=
TM1OTMzODcwNGJlMDY3YzliNmZjMmNjMDE3NWRmODhmODgzNWE3NDYwYjZmMWYyZjRhMGIxZTA4=
ZjQ2MmQ0NGNlYjVlNjU1MDIwNzVlYTgwMTAzNWVhOWRjZTViZjBmOTRhYjk0NDM1ZWY1YTExMWV=
jZDQzMjY3MWYxYjdlMWJmN2IzZDhlMTE4ODI4Y2U4MzgwNGFkZWU0MGIyYjU1NmNjZWE5YjFjYj=
hhZjI2YWY0MzgyY2FiYjM3MGY5MzI3YjBkZjRmYjFhMmQxYmY4ZDM5Y2JiODE0ZDIzYzkwZTI4Y=
zhjYQ=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNjY3MTliN2Q4NWM5MzlmYjE0NDQ5YjgxZjY5NjkxNTJmYmQwNTNkMWF=
lMWQwMjdhODg1NTAwOTA2NGRjNzEzNzNlZGU2YzUxMDU2MmU4OTQ1YzExNGZiNzczZjJlMTJiYz=
JkZmUzZGQzZjdmNDA4ZTI3YTUxZThhY2YwZGJlYjUwMjEyM2M0M2E3MTM0N2IwN2IxZTE0MGE4Y=
WQ5MDQwMjJkNWVhMmEwYTgxM2U4YjY4OWY0NTIzOTJiZGRhMDQ3ZGViM2M4OGNkYzNmNGIxOGY3=
MzIzYTEzZWQ3MjhmOGMxN2QyM2IxOTZlYTVmNzZmYWEzYzIwMmJmMWZkNDc=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNDk5NTIwMmY0NmFlYTk2NzJmOTkwNTM4YzJjM2RiOTVlMmRjM2UxNTh=
lNGFmZWE1ZjljZTc0ZGQ1MjczOGIwNjVhMDFkNTViN2NlNWQ4MDNjNGVhYjU5NTI5YTg5ZTQwZW=
NiMjVlZDgzZGEwYjNkNmRhOGQzMzExNzBmNzAyZDNmMzBiYTM5NmUwOTI5ZTVlNDJlNDc1YWMyM=
zg0MmI0MzA4ZGJhMjQyZDY1ODk5YzZjZmQzNGFiMzNlNGE4ZDE5MTQ2Y2IwNzMwYWY1MjI2NmQw=
YTc2NTk2M2U1ZjUwYzI5YzBlMDZlMmZlZDYxYTdhNjc5NTAxMTJmYjJjNmJkZDk5M2Q4NGE2YTZ=
lMjBjOTBiMmFkNGE5NzBhYmM3NTc2ZGE5ZDNjM2ZhMjA0MmViNzEyYzVjYTFhNzMxMDI1Mzk5OT=
E1ZWUxMzc2MzVlYjAyYTJjNjFjYzU4OWI5M2U5ZThjMTUxMmNkMjc2ZGNjNmVhY2E4NzExNWYzM=
TI1MGY4MGQ3Y2ZhMGUyYTc3Yjc0NGM5YmU1ZTdhM2Y5ZGQwOGM0MDAzMTFiMGQ1Yzc0MzEwZjlj=
OTc0ZTk=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZjdjOTE5NDU3Y2I2ZGRk=
MWVlOWI0MmQ1ZWRkYzI4ZjkwYjU1NDg4MTBlMDdlNzc4ZTFmZTYyOGUzYjI1NDkxYzRjNWFmZDR=
lZmNhYjE1YmViZjU0NjFlM2E1N2Q4NTNmNTlkYjg5MmE4NzgzZmNkNzEyZjYxOTBhYTYzMzQyZG=
EzODFiN2VhZTEyYmFiYWZkMTk1YjJkOTU5NTRjYjA1ZTY5MjgyYTM3YTE3OWZiNzEwNTM3Njc4Z=
DQzZjBkNDI5MTE4MGQyYWExOTJiMzRmMWNiODRhMGU3NWI3YWU2OGVkM2QyNDZmNTYyY2I5NThj=
ZmZjMDAyZGJhNzEwZTU3ZTA0OTg1YjQ1YWZmNWZjODdkYzY4ZDlmZTY5M2MzZjM1YjgyNTY0ZjU=
2NmFmZWMzNGY5YzJhZTlhYmI1MzJjOTliOTcyYzlhZTNmMDI3NzQ5NmQ5MmQwZjQ1MDRjNDc5Yz=
U3NDNjODVmZWFmNGEzZWExNTEwNTY5Njc5" target=3D"_blank">
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
?u=3DOTE0MWNiMDI1ZjJmOTUyNjAxZWQxMDM2MWZiNTQ2YTRiYjliM2FmOGE2NmU4NDMwM2IxM2=
EwZDg5NGE4MDlkNjc3YjNmMTQyMDg0NjZiOTFlNWZlNWVmYzFiYzg2YjlmMzMyN2YxNmJjZWQyM=
DhhNTQ0YjZlNWM0MmJiZTg5ZDJiZmFiYWU4Y2E4NzcxYjFkNmIwZDM5MzhlOWZjODIyNDgxYmZk=
MGU3NzgzMGUzMTYyN2Q3MDU0YzdkOGM4Y2NhMWY0NGI4M2IwNGVlOGIwODA4N2NmNzUxZjE4M2U=
2NDY2ZTA0MWVjZjEzYzhmMGI0Nzk2ZTM0NDMwYTNjM2Y0NzkyYzI4OTQ5Mzg5MzFlMzA5ZDQ1MT=
kwOTkxMGRiYzI3NzdkYzFkYWM2M2NlMWIxZjBhNWZhYjQ3N2I4ZGVhNjcwODIyODA5NzAyOTY4Y=
2ExMzZiY2VkMjZjMjFiYTM5NWRlMTVhM2ZlZjI5YzlkNzEyOGQ1OTAxMTRk" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMTNmNmFlO=
WU2NzA3ZTg3ZjA0YjFiOGExYzFjODBkM2EwZjZmY2NkMTk0Y2Y3NzZkMDBiY2QzZmI5MDNiYmZi=
OGVlMzVkZDJhZWI2ZDQ1ODg4ZDhmZDU2MTBlN2E5MWJkNGVjZDJiZGI2ZDgxYjA4YTE4MWQzNjd=
mYjNjZmIwM2RhZWFhMDlhZDI3NzAwYWIzYjVmYzlmYmJmOWFiMTYwNmZlMTIyM2IzMWMyZTQwZm=
FlZjZhMDFmODVjZmUzN2ZhYzFiNDc1NzUzYmE5NjkxNWNjN2ZmNDFiNTg0NWUxNzkyYzNjMmY5O=
WRhNTRhMjY0MDgzMzhlMjE4ZjM3MTNlMGViYjQxOGQwNTQxN2IzYzIyNTBlMDdlMjlmMDE3ZDZk=
MzYxNjgxMzc5OTQ3OTJjM2M0NGI5NTBlZmUzNjE0MDY2MDcwNTgwOWU5NjdlYjI4OTdjN2U3ZWE=
4ZDFmNjYyZmUxNGI4OTQ4MmM2YTJmYWY2NWNhMzU3ZmI1" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZmQ1Y2I=
zMjE3MTE4ZWJkZGFlNGJmNmNmZmUzZThiYzg0Y2Y1Yzg1YTg4MzA3NDFkYzU3OTcwYjE1ZDRlYj=
EzNjI1NDZmYjViYWQ4YzBjNjVlZmUyMzI5MzhkZDE4NWY0MTkxNzdmMzg0YThhMjE1OWM1ODBjO=
TA5YzRhMDJlMmU4ZGU5OTA2NjgwZDBlNjYwMmJjMjJmZWExNDc2N2ZiZTY4MzA3Y2Q4ZThmMDcx=
NzM3OWNlZjU1NTIxNjA4YWYyOGVlMGU2YjNjN2ZmZWU3NTQ4NTFkMmQyYzE4MjNiNDg2ZjQ1MTd=
hMmQwNzFiZGE0OTRjNDZjN2U1NTVjZjEwYmE2Y2MwMDY1MmE1ZjdhYzU2MTM3ZTBjMzI0Mjg5Nz=
FjZTNmMTE3ZjMyNDRhMTI0MjYzNTM1YWRjMTgzMjA1Njg2YjJiMDFhNGY3YmQzZjI5NmFiNWNiO=
WY1YjU0MjVhZWI4YWI5YWQ3NzYxNDI1MDFhY2Y4OWMxMDFk" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DY2ZiNWM0NWUz=
ZTI4ZTM0OTViYzk5NTg2YzNiMWI2NWMyNzZmZjJmN2I3YmVlZDEyMTVhNzkwZjcxMmRjNjljZDU=
5M2EyNjgyMzIwOTY1YWJiYThkZGY5ODQ2YzgxYTU4NWM4ZWJlYmZkYzA5MzA0MjI3YjcxOTNmNm=
VjNzE1YjJiNjVmMjNiNTMxMmQ2MTViOWQ4ODYzZDQ5ODE5MjI5OTQzZjMwODM4OWUwYmM3Nzg0Z=
jFlOWY1NmRmNWQ5MjUzMjE0NDYyN2M2ZDI0NWQ4YzgwM2E2MmVlMjQzZWJlZWYyZjcxOTY0ZmI5=
NTQ3YjI0Mzc2MGIyMzEyMmRiZTQ0OGE3YzFkYTQ3YTJhNjE2YjA4YTUyMGZiMWIyYWY4MDllYWY=
3NWVmNzA2ZGMxMmRkNzU4MTNhZmQ4ZjJmZGNkZmZlNGEyZGIzYjZhNjg0OGNmMmE4ODlmYzc4Ym=
U1YmRmNDgzMDExNjRhYzkzNTA0ZGIxMjRiMzIzNjNj" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DODZmZDFmMmE2MjM4Y=
zU0Zjk4MTQ0MjAxMjBkNTA3ZDJjZDI4NTIwZjU1ZWQ0MjU4MjY0YmIyOGIwZTkwY2I5YWNjODdl=
OWYyMDVmOWQ5MTU5ODdmMmNmZWI5MWM1OTMzMGU3ZmMwOTdkZjg1NWNkNjgxNTcwYzkwMDlmNGM=
5MGMyNDVjYWVmMGIwZmNiMzU0ZDE1OTQyNTQ2ZDMyOGQ1OTE1YTk0N2UxOGQ2ZjdkY2UxMjJmZD=
JjYTdkMTk4MzI3MmYxMDc1N2JmMTNmNGY0ZGM3MzEzM2QyNzNlNjY2ZjU1NGI5ZWEyZTQ1MDY1Z=
TBiZWM1ODdlYjkzM2ViOGQ1MGEyN2E0ZWUxNjI3MGZmMjVhODkzNmUwNmZhMTdiMzBiNWZhOWMy=
ODI5OWRjYTljOGY2ZmI1NjVkMGY0OTU5YTg0NGIzMTAxMjhhNDJmMDZiMGZiNmQyZTBmMWUxOTl=
lOTIyYzc3ZjM4MmVlZjhhZTcxYmU3YmQ1Yzcw" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DNTc1ZDBjMmY0Z=
DdkNmI5NzZhNTZlMjlhMTM4NWY1YzYzYTY1NzY2ZDNkODdkNmJjODZhOGIzNGZkZGEwOGVjZTY4=
MzFhZjAyZWMyMzBmODQwMDBiMThmNzdkNmMwMGY0NjRkYzExZTUxZmVlNjAzMDA3MTlkYTRhMWM=
5ZTM5MGRjNTBjMzRkMGM4MzJjODY4OThiNjk3ZDFiMmQ1Nzg4YjgxNmNiZDVlYWUzMWZjYTgxMT=
E2MzQzMGJiNmU4ZWVhNjk1MGM2NmE3MDhhMDYyZDYyMDg0MWI0YmZjZWQ5YTU5MjhlZDFiM2U4N=
TUzMTdkYmFmN2ZlOTBlZTA1NDA3OTEyYmMxMTY5ZjgzMDgzZGRkOThlOTdiZTY0NTA1NWU0NGQ2=
OTViYWZlMmM1NzY4MTc0N2QzNDhiN2M0Y2YxYmI2ZDQyMWJmNmUzYWVhZWFlMzI1NGU2NmExOTR=
iZmUyNGMyNWZkOWYxNTI0NzBmMTUyYWU5ODJiZTc3" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DZTY5Nzc=
1ZDFlMjhkZDhlYjI0NmRlNzU3YWNhM2M5MjY3OTIxZTlkNTEwMzg3ZjcyOWJkMDVmOGQ0YWY1MW=
ZkM2I4NTU5ODY5NzRmNDdlMzJhYzJiMjEzZGI5MDNmZTczNDgzMzA3MzMxNTE3OTNkMTY1ZDQ1Y=
mI0YzY3ZDFlYzA0N2M1Njk5ZDRlNGJmMDNhNzNkMGRkYjcwNjlhZjFlNWIyZTAzYTM4MjY1NWEw=
ODRkYTQwNDQxOTZiMjJhY2U2MWI4OTgzOTBmZjk1NzRjYTIyMmY4YWUyOTY5YjY5YjA3ZmEzMWJ=
kYmI2MTQxOTg4NTZkMTU1ZWM4YzExMGI2ZTFiMmExYWFhM2I1M2M3ODViYTdmNzQ2ODJlZjE3Zj=
E4NTQ4MDQ0ZTRkZWEwZDdkMTQ1NzJkMzI4MzU0MzYxMzg2YTFlNDE2MDhmZmM3NmRiMTJhYmZmM=
WExNGY2ZTMyMmQwMTAzMGY1MmRlN2VmYWE4MDQ3ZGU1OTEwMjdjZA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DM2M1YzY5OGYzNmUxYmMwYWNjMGFiNW=
FkMTI3N2JmNWM0ZjdlNDhmMTcwNTEyZDU5MzEwZjM4NGUyZWU5NjhmYmZmMzY3OWJiMzc5YzAxM=
WYzYjc1MTRkNGM3MGJiMmMzMTY1NTg0NWQwYjg4OTU4ZmNmYjJkNmY1OWU2YmE5YTk2MTk1YzFk=
MTYyNjBkMDQxMmUwZmY0M2UxZDYwY2NhNTg4NTYyYzI5Yjg2NmU5ZWE5NGViOTAyMDM0M2ZkOTR=
iMWMzOGJkYWU4YmE1MDEzMzMxZGJjZjEzYjkxMDgyYjUzOTA3ZTBmODFkZTlkZTYxNDkxNTc5Mj=
hhOTQxZGRlYjNlYjI0NGU0YjljZTBiODhhMjU1ZDdlMGU5NmE3NThiZTEyZjA3OGUwNzJkZmQxN=
WYzOGZhZDA1YWQ5YjhmYTIxOTU4MTc3NjY1NzgwOTI0NDY5OGE4M2JkYTIzNzJiZDRiZjNjNmM5=
MThkZmVkNTE2YjkyZDY2ZmEy" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DOTg1MzVmM2M5Y2RjY2NjOTM0NGMxNz=
BjZmQ0OTllZWMxMDZhYWY5ODY0MTk0ZDgyMzdiMDFhMWVhMTAyYTZlYTIzOTUzNmFhM2UzZDVmY=
zRhYzUyNTdkNjVlNDQ3NmJjYzE4OTJhNTkyMWNlYmFiODUwMDVhYzI3NWUyZTYyNzlhOTA3NWM4=
NzhkNzM3MWNmYjlkMWQ0OTA1ZGE4MjdmYmZkYWVmMGM2MzQ3MjI3NjNjNmFlYjMzNGQ5OGI4MTA=
xNTA2NWM2YTZhMjlhYzEyZTg0N2QzZjU5MjZlMzRhZTExY2QxZGJmZjdhMTgxMzkxNGNhZTFiMj=
VhODJlZGQyZGYyYzUxMjI2ZTM4Y2QxNjg4NDQxOTRjY2FkNDk4Yzg1ZmFmZjFjOTczZDk2MTlkY=
2Q3YjY5NzE3MmExMDZhMjM5NTQwMDhlNTM0OGZiMWJlM2UxNTA1MDExZTkyNmNjMDlkMDRmNWVk=
MDA5MGFmY2ZlNGU5NjlmNzQz" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNGFjODY0YzYzNDcx=
NDg2Yjg2MmNkZDZhNTA2OGQ1MjNmODM5YzI5YzIzMjE5MGZjNWYzZWMyZTE4NjFiMWU0NWY1YjQ=
3NWVjZGJjYjc2OGVlMjllMjFiNjlhMDQ5YTE1Y2M5ZDQxNDNkOWVlZjY0YWU1ZmFlYjNjOGE5OD=
YxNjYyZDg2ZDM1MjAxY2VkNTYyYTViMmQ0MTAxNjllM2Y1YzA4YjlhYzI4NGJjYThkMjUzMmMyZ=
GU1N2Y4MzZkODE3ODRmZTExMjZlY2VhODNkZDdmMTExYjQwNDQ3NTY1ZDVmODQ4NjNkYmY4NTIy=
NTg2MmY2YzQzYTFiYTdiMWNmMzdlYjY1YTg2ODAwMjhlNmQ3Y2IyN2UzZjJlZmU3MTU0ZjQyNGU=
xOGNhZDhkM2NjZWU4MjZiYjhhODRmOTM5NDQwNzMzMTgzYTYwNWYyZTBiNWRhNTRmNDhmZTBkOD=
U0MGJmYWEwZDE5OWNmNzk5NzVmNWQxNjE2MmM4NWI4Yw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYWJiOTFlMGY5OWU0=
NDk3NzA4MzY2OGU1MjY0NDM1M2Q3NTgxNzRjYWFmMzM4MDQzZmMzODEzMWY5NWMxNmMxMzJhNWF=
iNGM2ZjEyZmQxMTdiOWYzZmM4ZTJiNjMwZTU2ODY4MWM5MTQ0YzJjYTFkZGZjZmFkNjAyODBiNz=
Y2NGZkNWFhOWM4OGJlMjg5YWZjNTYyNzkxMDZjYzUwMGUxMGMxZmE4NGUwZmEyMDg4YzI5MzIwY=
zhhYjUxNjYwZTM2MDU2YzdkNzVkZGM0NjQwOWZkODEwOTQxYzM2OGViYjIxYWJkMjg3MTY0OTU0=
MjRlMDEwNTYyMzM4Y2JjMDU1NTVkMDAzYmZlODljNjhkM2I5MWEyNzg5ZmQzNjgyZWI4NTRkOTE=
2ZDEwZTYzODZhMGRmOTFlZmI0NjEyMGJkZjZiYjYzMTZmYjkyMjI5NjJmODhmYTcxOWUzNzM2Yj=
k5N2RhZWJlNDdlZTMxODkzNTE1ZTE0YjZjZGZjM2M0OA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZWI0MTYyNjExOTAw=
Nzc3ZTZiZGM0YzlmMzI4ZWI5ODhhNjJkZWE4NDg5OGQ2ZjNhYzllMmNjMTE2YjE0YThhNGQzM2M=
wN2RkOTY0ZTBmNDkxN2IwZmExNGE5Yzc3ZThmODAyZWIyYTNhZmJlZGVhNjNiZWFlMDA3MmE5Yz=
YyNjRmYTk3MDFmZWRhYjI5ZDhmYjA2MTZlNDJlZjliMmE5NWY0M2RmZjAyZDA4N2ZkMmNiMTFkZ=
mU0NGYwMjA0YmE0ODQyYTE0MmE5MzJmZjYwMTNkNmIxYWU2ZTU5MmNiZGQyYTNlNTE2Nzc2ZGY5=
OGVhNzdhZDA5NDcwOGY4NGU5ODZiYTZlMTZmMTdkZDYxMWE5OWIyOTRhZjc1MjY1Mzk2Y2NhNDM=
yNzU3NTU0MjUzYTMxZWVjZmNjNDM0MjczNTM2M2JkM2I1ODE2NGVhNjhmZTk0NmM0YzAwZGQxYT=
kwNDc1ZjQ3YTY5MTczODJkYzkzZjBiMGFiNjI5YjdkNA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOWYzZTlmNjU0ZWM2=
OGFlZmZkZWIxMzNhN2U3NmUxN2FmNWQ5NjVhMWU3MjhiNGMwODAwZWEzN2M4MzhjYTUxNDZlZmM=
4MmY3YzVkYTMxYmMwMjRlNDgxY2Q3NDY0ZTc4MzUzYTQ2NmE1YjkyNDRiNjYwYzhlZjJkNGQzNm=
IyMmE5OGVhNzNkYzAzMDdiNzU5MWY4YTM3ZjE2OGI1NjFhMmRhMGRkMmFhOWIwZWFkNTIxY2QwZ=
TA5ZjI5ZDE5MmEyYWY4OWY2YWY0NTI0ZDcxNWU3YTBlNjY0YTcwOTY5MmJkZDc5N2M0MzA3YmQw=
NjY4NTU4YWIwMTVmOTY5N2JiZWNmNWNhOWYzYjY2MmQ5YzI2NzhkNmJmNGNkOTRhNjlkNWJlM2E=
yMjA2ZTc5MGE4ZWIxYzVjYTVkNmFmODZhZWUwMTBjNzUxZWIyZGViMDcwZWQwYWI4YzZlY2NiMG=
EwMzQ5MDczOGJlODljNWU2YTc2OWQ0MzMyMGI2YTEyMQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZGY1MWQyMGFiZmVlOD=
I4MDUwNTY3YWQ3ODcyYWRkZjJiZmJmYTEzZWY2MGM3OTkyNzA2YWM4ZTkyYTRjNWU3MTliNDRhZ=
GZjZTljNjczNWVhNzQwMjI0ZDA3M2VkNWNhZDM4ZjdmMDUyZjRmMWM1MWY4MjZiZWU4NzUyZjYw=
NDUwYmE5MTJkNWUyOTQxZjI0NDYxOTlmNGEyOTJmYTc4NWI4ZTFlMjFiM2ZhYTAzMzFiNTQ4MDd=
iZjdlOGUyY2U1YzdiZmE5MGRmN2IyYWMxNDhhYzUwOWQ3ZWY2ODQ2MTRjNjAyZTdlMzJiNDhlZD=
c3ZTBlNzg2NjRmZmY0YTRkZjA0ZWYyM2M1YTM3YjA4YTQ3NmIyZjhkNTI1ZmU5ZTU0MDY1MTcyN=
2NlODQwOGNmNjY0NWNiNDJmODBkMjE5ZGQwMjk1MDQ2MGUwNTQ3YzgwZTIwZmIyNTQ4Mjc0ZGVl=
YzhhYzg2NDEwODIzYmQzMjkwNTg2MDBhNDVmNzFmNQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMmQ0MzRiZGQ5NzZh=
M2RhNDc4YmY5MjBhYjgxMDliMmMwNmNhOWU0MGYzOGQ3MWY4MjViMjg2ODA4YTk0MzMyOWExOWE=
3MzU0ZDdhNTc5MzNhYTg5OGY0NWQ1OGE4OTgxYTdmNjViMmE5NTJhZjk3Mjk0NWI4YmJhMjJjMW=
U1NTBkZjhhMzVlYmNhNzZlMDY3YjIwYTdjMDFmNjhlZGYwMjc5YTRiZmFmNDRhZjUxMWI1MTlhN=
mU3NzRiMGQ2NGU2MDBkNWM1OTMyYTBkYWE3ODZlNTJlNzEyZGRiMTMwOGY4MTMzMTg5MzU4MjYw=
NWNjOWJiMDEyOWU4YTZiODQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DNGI1Y2U3MmEwNmM3OThhODBiNjgyYzk3OWM4M=
TU3MzVlNDIxMjM0NTJlN2IwMjM4MDBhZDA3YzUxODMwZWJiMjA0NmZlZThiOTQxY2E0NzM2YTUz=
ZTNlNTlkOTYxYjUwYjRkM2ZjYWVhODQ2OWM3ZTdlMjVmYzIzYmQ2NmI5NDEzY2RiNWE5YzQ0NzE=
0MzczNGNhYTlkMjMyZmU4Y2E1YmQwMGM2M2JkYTdkZjE2MzEzMGY2NWJkMGFkY2MwM2VhMzY0MW=
Q5NWNiNThkM2RmYmY3OTM0YzRlMjI1ZGU3NzA4NWQzN2I4NGExNDE1YjYwNDY2MTNlZWI4YTljY=
mZhNGQ1MjE5Mjk0YzQzYTU3ZjE3OTgxYzZhYzg1ZTZkNzdjNTAxMmU4ODg2MGE3Nzc5OWUxMWU1=
MTljMTNiOGEyNGQ0YzZkYTA2NDUxYjZjY2YxOTlhNjA5NWM0NDE0NzU5MTkwZWM3NjE3MjZiODd=
jYTRmZTZjYWNjNTU4YWVmMmEyMTE4MWEzZDgwMmQ0ZjI0YzBmNDk1MmEwNTZhZDgxYjc4YjVlM2=
U0MmQ4NGJkODI0ZjZiNjJjYjc=3D" style=3D"font-size:12px;line-height:134%;font=
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
