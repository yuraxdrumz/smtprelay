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
From: localhost:1333?u=3DZmRhODQ3MmQ1ODZjMjUwZTc4Yjg2YTNkMzI0NGNhNjc4ODNhYm=
ZmZGNhMTVjN2ZhZmRlMGU3ZjQ3MjRmYmNjNzZmYjZhNjk2YzVmMDRm <mail@eg.expedia.com=
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
<localhost:1333?u=3DZTZlMWIyZTM4Nzk0N2M5YWU1Y2YzMzJiYTk4ZjM3NDY1N2FlMmIyMDF=
hZWFlZmViOWFhMjMxYmQzMzliN2NkMThjMTUyM2U4ZDc5N2UxN2QwMzIwMjQ0ZjE3ZTY0M2ZhMT=
JhMjgxNjZlMTQ1NTUzMmUwZmVkNDgwYWFkZTlhODFhMzAxNDgzZjdlMDNmZGI0MTRjZGI0NzJkM=
jI3NDIyZDQwNTRkOTFlODM3YzUxZWYwYTMxMzY2MjE1YjQ2ZjM1YjJmOWE3NjRlNjJjYmY2MjBi=
OTk0MGIzY2JmN2U4NDUzZDFiMDM0ODVkM2UwZTJlNTk1Njc2Mzc0NGUyNzUxYWQ2YzUwMjNlYmZ=
jZTljNDdmMjg4Yzg3MDViMDMzOGEyMzQ1NWE4OGU2YjM2YTg2NjM0M2FlMzIyZTFjNzNjMzFhZj=
IwOTAzZjgwMmM5MWM0Yjk3MTlmMjU4ZDk3NjIwYzIyNWE3YTE0YTFkZDcwMWQ2MDE0N2I5NmJh>

* The Travel Edit
<localhost:1333?u=3DZjQxNTFhYWQzZTljYTk3NDVjYmM4Mzc5OTk5YmMzMWM4ODQzMmJlMjZ=
jOTVjODEwMDAwMDc1ZDExNDIwODFkM2EwZTFjNGY1ZDcyMTJmNTEyMDI5NDNmYmNlNWM1OTA3MT=
A3Mjc4YWM2OGVkZjk3ZTdlY2Q4MGUxYzgzMTA3OTdjN2EyNmFmODQxOWRjMWU2ODY0MWE4Yjc2N=
2E5NDM2YjFlZDhjNDk0YTU3YmVhMzc4NzZkM2IxMTcwYTZjMDlhNTM2ZGYwZjIyNmI2YWFiMzYx=
ZjUzZTMzNDMxNWYyNjI1ZjNkYmU5ZmJmMDc1Y2Q1MDUzMTEyZWQ4ZWIwYmRkOTEwMDE2Njk3ZDc=
wMGU5ZjJlZjUzZTJmNzZlZDFlNDMwZGNiMjM0NTc0ODY4Yzk2ZWI0MmU5M2RjMjI4MjE1MGU3MG=
NjNTliNzUxOTQ2OWE5ZmIzM2Q2NzQ4ODc4OTBjM2EwMjRmNWQzMDlhZTY5NmMwYjc3ZjM0ZTM1>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZGVlMjEzZTNkM2U5YTI1MmJkN2RkZTJjZWE4ZjE4MzFkMjNkNTBjMzA=
xMWM4YzdmNjJiNjFhOWUwNGM1M2FmYWQ5NDc5NTEzMWE2ZmNjNTU0ZmQwZjk0NmNjYmFkMTViMD=
lmZTkzZTZkNzBkMTU5YzY0ZTdiZWVjOTljMjA5YmJjM2U0YWZhNWFmMzk3ZTNlMmYxMTg2NDUyN=
mM1NWRmYTE2ZGNhYjg0ZDYzZDFjMzE1MmY2Y2Q2ZmViMGJlYTg4NjA5ZmQ4ZWE2ZTk2NTcwNTlm=
MDlmZmMyNGQzOGVmZTU4ZWVlMWUwMjdkY2Q2NGQyYzU1MzQ0NzM2ZDZjMGUzYjM1YTQ1YmUzYTF=
iODNjMTc2YzM2MzFjYzFiOTkxOTZkYjcxMTg1YjIyZmRjY2ZmNjdhZDEyN2UwNmI5ZjMwNjk2YT=
M1OGFkNDc5YTU3MjJjMzE3ZTAyNTZhMzc3ODJiODMwODhlOTE3ZTZkMjBmMWZhZWU1NzhmZjk1>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMDc2NjI3ODM5MmM0MGM5OWZhYmE5YzJjOTIwMTY4NTdhZTNkNmNjMGE=
1ZmQyODA3Njc0ZjFiMGQzZjc0MzM2Njc2MDdmNmJjMTA0Nzc2NTU2YTM5OGJiNGQ0ZDBmOTJiYT=
U0ZmUxNjZjNzQxNTkxNDY3YmI0Mzg3MGQ2YjhhOGYwNDUxZGZhODY2OGM2MzExN2QzNjhiMmFjN=
zY2ZDc4YWFiMDUzMTg5MGUxYmQ2NzhhNjFlNmUyOWQwYTMwOGI1NDFkZGNmYmQwYzVlYjliZGRh=
YmMzMTljYzhlZmY1Mjc5NmU2YmYyMjE3ZTdjNjgyMTBmNTY2ZDE0MTgwMmNkMGQ4MmZiMzdiOTJ=
jMzUzZWMyNDg3YWJjMjUzNjYwZDkyNGUxOGU0ODcwZGNhOWNjY2IzNWEyMWE1MTgxMjE2OTYyNz=
dhOWQ3MjA4NGIzYzQyOTMxOWMzYTY0YTZiNWNjZTZhMDUzOWZhNDQwM2FmODM0NGY4OTdlZGE1>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DOTVhNTk2ZDMxN2UyYTI3NTI0MDE1OGZiOGI5MGU5MWQwNGVmOWQ0NGE=
4NzM5ZGEwNTlkYjJlNmIzN2YyZDI4MDJjZDBlMzZkZDkzZmE4MTczYWY3MjdjZjc5MThmOWE1OT=
E0MGU3ODY3MDU1ZGY1YjI1YWI2ODMxZDE3ZTQ3ZmM1MDlmODUwNjNjYmNmODBmZGMyMzc0OTYyM=
TY3OGE1Y2YzNjY3ZGYxNDIzZDc2OWI2OWNlMDRiYmM1MzA4YTYxMGYzMGY4YWM3M2RhZDk2N2Q1=
NGJlNjljNGZiZGJiYzU3YjFhOTZhYzk4ODhhNWVlYzAyMmE5YmM4ZTVkNzNjNTAyZmI1OWNhNGI=
zMDJkYzA4YzVkOWQ3ZTNmZjE4MzVmZjA5NTIwMjZkM2Y3NGNkYTEwZTUzMzFkYmI3ZDNiM2ViYz=
liNWQzYjdjOGRiMzM3NTUzNTAxMTg4MTRhYmRhOTg5ZjAxNDQ0NmM0MjliMTQ2M2VjZDllYzdh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYjdkMDA1MzdlYWY1MjNhNTMwN2FhODcxYjVjYTcxMzU3MWU1NTg1YWF=
iODI4NWUwOTRiNWFkOGU2YzFjYWZhNjY3OWEzNDE2MTcwN2VlYzgwMzVhMzUxNjM5NmIzZDQ5ZG=
E1YjlkYWYzNmRmZTBmZGZmMzM4ZjMwNmY0OGNkZDZjZTA5YmE3YmIyN2I3YmU2NGU5OThkYmY0N=
zQxMDE5NmM5MzJkMThlZTdlYTg0ZjgwNmEzMjZmOGE4MjA2NWMxYTI1ZTdiNzVkOTNlZmE2MWRh=
MGY3MzZjNzU3MDFkYzkxMWIzY2VjZTE4YzRjZTY4MTU0NDZlZGEzOGM2Njc5ZjllODhiNjE5MDB=
lNWQ3ZTMxYzI3ZjQ2YmQ0ZjAzYTgwOTA3N2Q1YTEwMzJiNzhlYjE4NzhjZWZmZjg0MDQ0MWYzYW=
UzMWUxZTE4YWRjZmZjMzg0ODQ4ZjY1ZjFjNjkwOGRiOTA0NTBlZWRjNzllMWJiYWQwODNjMDYy>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYmNlNDc1NTE2ZWNjM2MzYzI5ZDU4NzYxMjU2YTZhN2M5OGU2NTY2MDU=
1YzkyMmE5Mzk4YWUzNWJhM2U4NmY3YmUxNWI0NjQ5YzkwMmIxYzZmMWQyZThiYTIxOWYyMWVjMj=
UwMmEyMzAwMTcxNzBhZGZkMTMwMzUyMzQzODEyMDY1ODUzYjJmMmRlMGNiY2IyMzhkMDE3ZTU5Y=
jRlZDU0MjAzNTM1MDRiNTUwNjE0MGQzYWIyNmY5YjA1NzIxOWYyYTBmZDE1NjJmYmRjNDJjNjQw=
MzlmNDE0MjFhY2RkOGFhNTg1YTFmNDEzODJlZDZhMzViY2IzZGUyMTY3ODlhMzExZTU0YWEzZmE=
5YjFiZDE3Zjc5MjE5YzU2ODUwZDA2ZmU1YWYwNmY0ZDA3ZjlhNmRjYmRiYzVkNzIwMTdhZWQ0MW=
JkZWQ5ZGE2YTNkOGJmMTdhNjhkMzI5MTYxOGZmMmIxYWJiNGE1YTllZmY5NDc1MzBhNDkyNzJm>

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
<localhost:1333?u=3DMjUyNTQyOWRkOGQ2YWU0Y2Y1Y2MyNGI1YTMwNjYxMDIzZWQ0MjFmNmZ=
hYjY3MWIzNWQ0ZmRlY2U5Yjg1NmFiMzUyMGYwMmVlMzk1YzRmMjFjODg3ZmI1ZWQxODM3Y2ZlM2=
U2NDhkODE4NjdmNzExOGMyOGQ3NzhlZmIyOGI1NTNjNDBjNjcyZmYwYjgzYWY3NzdkNjU4MzNhN=
mIwMGQyZGE0ZTk3Yzk3NzIwOGZlNjViNGMwZmIyMTM5YTRhZDhmY2IwNTg2ZThkM2FhMjY2MTcx=
ZGY0YzYwOTkwODY0OWRlNzcyZmUxMzkyYjY5MDU0OTg4MDkyZTBjZWNiYzkwZDUyMWYyNjRlODh=
lZDVhYzg3MzljOWI5ZThjMTg2ZmEwZThiY2ViODJkNzkzNGQ2ZTViY2JmZGM0YmYzNjRjZjBiND=
IwZDFkN2M2ODNlMTQ5MzE1NjZlOWM0YTk4ZGY3NGQzYzcyODFiZTcxZmI1ODcwNzNjZmE2MGNmN=
GFiZA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DODM3MTU2YWE4MDg5MDE3OTllODVjYjBlYjk3NDM2MTg0M2E5ZDRhZDc=
xN2VkMDAxYmQwZmZmNDhhODlkOTMyNmJiYzc1ZDYwNWNlYjFlOGU5MGJkZjJiZWYxNTIwOTY4Zj=
hiMzdiOWNiMTcxYWVmYWFlM2JkZjg5YTMxMDFlYTQwMDI1ZTIzM2RmOTM5MDI0ZmFmNDA1ZjVlZ=
TMxM2Q2MTNjZGZiZWEzN2JlMGRkNzcyYzFmMWVjMGJmMWUzNDlhNmE1NWVkYzY5MWZhOTIzYTVm=
ZjQ4M2VkZTE5YjdkZmE0NjIxMTQ0MDhhZGVlMjMyZThmMGU3ZThkM2EwNTJhNzE4YzdkMTlhMDZ=
jMzFhZTE4ZjQ3YTYxMzk5OGJiNmQ1NmNjNjk3ODdlMDJjODAyNjlhMjhjNzhiZDE5MDNlODhhYz=
Y3ZDUyYjExMzY0Nzg5NTRmZmMwYWEzYjI4OWExOWY3NzRkZjFlYjU4NWJkYTY4NGQ0YmE0NWNj>
  [image: Google Play]
<localhost:1333?u=3DODZkNjBmMzg2NGE1MzcwMDU1MWI3MTdmZmQzNTMyZjg1ZjFlMmMwOTI=
5ZWY0NWIyZjRjYmJjODg0MmQyOTFkMDFkOTY0ZmM3MzhmOTNjM2IxYzI3Y2ZmM2QxMmFiZjEyZT=
k2MjYzZmQ1NTA2ODdmNzkzNDE0ODMwN2I0Y2MzMTcyMzExNTRhMTI1NjY4ZTAwMTMwZDAyZjg5Z=
mI2N2Q0ZDMzZWE1ZDIzYzJlYWM5ZTBjNjU4YmM0ZjFjNTBiYjRlNTFlZTIzMzRjYjIzZTU2ZGM1=
NTg1MmQ5YTYyOTliZGRjMTg3OGVhM2VjNTk5NDk1Yjc5NDVhMjJkYzM1ODBiOWZmYmI0Y2I5Mjc=
0MDUwNTcyNzcyODg5OTYwMDZjNjBmNDgwZWZkMWY5MDAzYzViMGUyZDY4NmU4M2ExMGFiMjExMD=
k1YTYxNWU0NjlmODYxOTYzZmM0NWMyZTk4NWIyODNiM2VhNTEzNWE1NTYxOWI1MWUzODA3NzFh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNjUwYTk5NDNkNDMzNmE0NTg1OWE1ZGIxY2NlMTcxNGU0ODgwZDcwZTg=
yMjY1ZDg3N2YzNjQ1MDQ3MjhjZGZmN2FmNzQwNTVhZmY3ODAwYjgzNTYxYTVkY2U5MTNmYWQ3NW=
U4M2I2NDZlNzdlNjkwNjhhYmI4MjlhYWZjMmFmM2ZlNjE5NjIzNTJiYzM0NmZlZGU4YzI1YzlkM=
2Q4ZDRiOThiMzEzMGMxYzNmOGQ2MzhhNDNkOTZmMDAyYmRmMjBkMjI2ODI0NGM3NTZiMDExZmJj=
NTFiNzE4Y2U1Yjc1ZDA0Y2QxMTFhZDAwZGIyZTJiZjliYjQzMDBjOTMxODY3YjdhZmM4ZWZmMDl=
mMWNiNmYxNTM3NDI0ZDdjODgyMGZlY2I3YzU3YmFmOTY4NzdiZTY1N2JmZjcyZDBhN2JjYzAxYj=
hkNGNkZWJjY2E0YjkwODljN2NlZTdmMTQzYWEyMTU0NjQ5NzNlZmEyMzJiMGRiYzdjYzhkMzc4M=
WNiMQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZTViY2VmOThlYjU2NGJhZTRiYzFkY2NlNjdiYWExNmUyNTZmNzI2NjA=
wMTM4NzYwZGNlM2E0NTNmOTJjNTBhZDdjOTYyYzgzN2RmNWY4MDBhNmJiZjhhNWI2ZmYxNGI2MD=
diYmQ4MTY4ZGFhZjdiNGZiMGI0MTVlYzY1YWZhNDczOWVmMTUwMGM1ODVjMjNhY2IzOWY3NmI1M=
WFmNGI3ZWJhNGRlOTVhNGE3MzdkMjhjODVjZjk0NTA3NzcxNzYxNzUzOWQxYmMyY2Y5M2FiM2Yz=
YTk0ODkxMGFlYWJhNDdjNTViMzJiOGZlYzQzZTNkMTJiZTJiN2M4ZmViOWM5Zjk5OGY1YWMxNTg=
wZjdjNGYzMzI3ODM1YTY5ZGFkNTRlZTdjODBlOGNiNWNlNTYyNWU0ZWZiNGEzODNjOWI5NDMzYm=
MzOWVmMWUyYjI2ODRkZjY0M2M0NWE0ODJkYjIzODMyOTQ1NjA2MGU4ZWJlNTgzMTk5Y2JjMDViZ=
jIwNQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DODIxNWFiOGI4MzBmMTA3MjJiOGUwZmUzYTRkOTNiZmU0MGU5NzAyZWY=
4MjA5MDc1NzgwZmZlMjljN2ZiNzViMGUxY2QwZGVmYzUzZDcyMjhjNzlmNmNmNGM1ZmM5MTRiYz=
M1YzA4YzE5YzcwZGRmM2U2M2MzMTg3OTk1YjU0ZGI3MTk1NTVkNDJjMDIxYjBhZjMxZjJjYzk3N=
WU3MmE3ZWEzNzlhMDkzZTU4MWU3ODNkZjY4MDU2ZjI4M2YxZmI3NzZiZWE1YmM2MTczNzg0YjBi=
NWY4NDU0NTA4NDAxY2MzNWFkNWEzNWU4NWM2MThkOWE4MTZkM2RiYWI1MWFhZjM1OWJhYjU4ZjE=
wMDJiY2IxOTVkMmM0YTU2OWY5NTExMDI3NzkwNmU1YzljN2VlZTI4YWRhYzdjMzY2MDk0NGM4ZT=
RiOGJjMDU0NmYyN2UyOWJhOTA3N2Y4YjE0N2VkOGQzNTlmM2U2YmUwNzU5NGE3NDVlNmRmMGZmM=
mNjYw=3D=3D>
   About Us
<localhost:1333?u=3DOGE2YWRmNWU0MTc2NjhhNjAxZjRlOWE5ZjA0MTA4OTQ2ZmIyNjQyYjM=
0NDA0NTk0NmRiM2QzOWE5OTZkYmQ4YTdkNDQxMGNmNzdjYTBlODk2ZmJhNzM2MjRkNTk3MDhmYz=
U4Mzg4YjZmMWIxZTc3MWQ4YjE5OTQxOWNhOTEzZTI2YTRlYzJmM2ZhMDUwODdjN2QwN2QyNTY2N=
ThiMjFkZmRhM2Q5YzlmMWQ2ZTMyZjhkNDg4YjZiNTMzYjBiZjk3ZjgwNmQwMGFiYjQ3YzdmYTZk=
MzFlNmZjOTI1ODVhMzc2ZWU5ZDBlNTExYzI4NmNjNTRjNDA1YTA0NTg2MWMxMmYwY2YyM2UyODN=
hOGJlMDYxZWEzZGIxMDZlMzM1ZWVmYzFjNTBiNDAwMjViYWVkMmUwM2Q1MDMzNjY3MGM1MTQ3OT=
g5OTA4NDVhYjU1Yzc5MTY2ZTBmMDMzNzMyMWQ4MzYxYzA0YTQ5NTBmMzk4MTEyNWY1ZmRlOGIwM=
mM2Yw=3D=3D>
   Customer Service
<localhost:1333?u=3DYTQ3NzQyZDBlNTU3MmI2MmMxMjA0NzliODM0NzdjMDRiMTRhM2ExMDI=
yZGYzMTFkOWVjOWM0ZDViOTY0ZTc1OTM2ZGM2MWIxNDg2N2VmZmE2MWQyODBlYjUwMWJkNjA4Zm=
VjOTg2NTMxODQyZTRkNTUwOTZkNzA2MTZiNWQ2NmY2ZmM2YTY3NzBjZTA0YjI0M2Q0NDg0N2UzM=
zU2OGVmNmI1ZTQ4ZjQ4MTJmNjMxN2E4NWI3NmQ0YWNkM2Y5NTM3YWQzZTg4ODI0YTUyZTAzYzYw=
NWQ2NzY1YmRlMGQwODllZWZjYjA0N2NjMmQ2YzYxNTdiNWI2MmUwZmFlNjA5ZjViNDExMDJkYjN=
hZDEyZjE2M2NjYjY5Y2ZmMTEzYmZhN2IzZWRhZWQyYmE5YWM0MTMyN2YyZTU0NTJkYTgwOThiM2=
U3MjM1NzViMjVhZGU4N2I4ZjJmZDkzMzc1ZTEwZjU1ZDgyMjIyZGQyZjNlNmNhMGI2NGZlYzBhY=
jE0Zg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZmY4NTU2N2FkMjcwOWNlMTlmNDEyZTVmOTRhZGRmNzY2MjY3NDk3YjU=
xMWUxYTIyMTVmNWJlNzcwNzEwZTMwOTY1ODhkZmRlNDBhYzAwZjAxZTA1YTllNWQzNzBjYmMyYz=
JlMDdkMzRkYjc3MGIwZmY1YzdlZThkN2I0NjE3MTA0Yzc1MmZkM2ExOTY3Yjc5OWJkYjAzZTMzM=
TdiZmZhMDQ3NjNkZGM4Mzk5MjM1ZGIwYzFhZDY3MWVlYjlkYjNhMjFhMGNlM2JkMmE5MjdjMDgw=
OWI2YjBmYjc1Yzg3MWVjNWVkOWZmMTIxNDVhMTk2ZjI2MmFiNThmNDk2MWU=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DYTYxMGY1YmJmOGQ3MWY1YzlmZGUwOWFjYTVhMDcyMTM4ZjgwMzY0MDE=
xMzA4OWUzMzE5NjQ0YWQ0YzJlMmU5ZjQwNDY1ZGY4NzU0NTA1MTUyMTFkNTk4NTVkZjhiNjYyZj=
E3ZGY4YjQwNzMwZTRmY2I1YzExNTc4MmY5NmI5OGRkM2EwMjc2ZjNjZTkxODljMjk0YTYwMDQ0Y=
Tk3NGI4ZDZiOWQ5NzUyOTQ4ODc5MTYwYWIyZTBiOTBlOGNjYWUzODE3MzNkZjQ3NzExODQ0YzI0=
Njg0NmEyZjdlZmExNGVhZTE5ZTc0M2NkNjc2ZDk2MDY2ZWM0MGI1Y2JhOGVkZjhiODU2NzY3NjM=
2ZTYxOGI5Mjg5MmM4NzExMTU1Njc4ZDliMGRhOTQ3MWU1N2UzYzczNWNkOTZkM2Y4MTFhN2QxYT=
FmZWJiMTE1YzMwZTA4ODJiNmNjZWUyOGUyODIzYzY4NTg4ZmQwOTBjMTMyYTMyNmM2ODcxMDg1M=
2E2OTU4ZDA2ZWNlNGJlNTM1NDVkNDQ4MDY4ODg3ZmM4MmVhOGFkNjI4NDliYmZlNGM1YzY2MjE5=
OGU5YmE=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DOTI0MGUxZWY4ODBlMTli=
YzQ2Yjc3OWM0ODRiYzcxMTkwNDk1MDIyMDAwZTcwOTQxYjRiMzg4NjFkZGE1NGE3ZTZlOTVlMzl=
hYTA1N2UwMzNiMjhmMWM2OWE2MTY5NWY0MDUwOGEzOThkMTRlYWNlNjA1NWY4YjQ3YzUzNGI4Y2=
Q3MmUxN2E0OTc1NDg1YjdjNDdiNGMwOTZkZGUyZWM2M2UzZTIyZDYwMmRiZGU2NzJlMjA1Mzk4N=
DNhM2ExYTAzYTVjMzc4ZmE1N2QxNTI1M2VmNTBlMWMyMmU2NzIyZWI5NzlmMzgxZDY3NDdiNThk=
NjU0NjIyMGM4NGExMmEwMWNhM2E2OTNkMzAzMDljM2E2NmVhY2E5NmUyYzkwMWNhZjhjZDY2MzE=
1MzMyZjRhNTg4ODFkNjI1MDNjZjFiZTkzZmJiMjAwODUxNWNhMzA2MDg0YzMxNTE4NDJjNTQyMD=
MyMTc3ZDQ3NjJmNmJhNWVkNzc5ZGM3NjI1" target=3D"_blank">
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
?u=3DMjJiNmQ0NDE2NjgxNWExMWNmMmM5MWExMjI0ZmM0OTAwODJjNzAxNmI5YTdkMzhkZGQ5OW=
QyNzRjNWVlMDAyYzhjN2QwOWY2NzdkYzExNDhlODY2OGU4NDQ0ZDNkOTQzM2NmNzJmYTEzYzMzO=
DE0MWU2ZDU4YzIxNTQzNDVhMmIxMGFkNzI0MTk5NTdlYjRkNjA3NWM4ZmJiNmVhMDQ3NmM1ZmZj=
ZmNmNjU5ODVlNzQyYTA5ZGNkZmRkODQ1ZWIyZDFhODEzNzdiNTJmYTkwMGQxNjA4YTY5YWJhNmE=
1N2FiYTY0NzgwODEyMmY4MTZjNTFmMGFiNzc5M2NiYjZiNGY0M2JjNzQyZmFlYjQ4ZDYxMmFmMD=
MyZjU3MjI0YzNhYTg3NzdmMjBjZDYwZWU5YjU2ZjkwYTE2MmVjZTM5ZDhiY2ZjYTA5NmY0ZTgxN=
zYyYjhmMTJlZmNkOWU2MTk5NWFiNDQ4NWE2OWZiMjdlNTVjZjJiMTQ3ZGVk" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DZGFhMDhjZ=
DJlNDBlZGQ3ZjUyMjgxNzA2OGQyMTcwZTk4ZTYxYTU0NWU2ZWY1ZWRhNjIxNjA0MjdlNDExYmNh=
MGVkYzU4YWUwN2I2M2VjNjRiNjljZjBlMzJjMGVhOWI4MDgwMzU0ZjcxOTBiMGNjZmI3OWVhODJ=
mNjI4ODkwNmEwODRlZGQzM2Q5ZTVhNmY1M2Q5ZDY5OWIzOGU4YTQ4YWE4NTVlZWZlMWZiZTEwMD=
djMzM4NmQ3ODFmM2M1MDcyMTI2ODE4NDgwZGU4MzQ2ZmQ3MzhkOWEyMWM2OGQzODljYTBmZjgwM=
zVmNWY5MGFlNTdlYjUwMWUzOTI1MDBkYWU0ZGFlM2MxNzU4N2FiOTRiOTliNzJiNjM2YTcyMGI2=
ZmNiYzhiYWU3NDA2ZWZhMDNkNmIyNGQzZTA0YzExNDE3ZGY3OGMwZmEwYzc5MDA5ZTkwMTlkYjd=
hZTdlNGZmM2E4NzlhZjEwMmJlMmM3ZWU2NWVjM2FjMzVj" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZmRlNzg=
yMDBmN2E0MzU2ZmY4Y2MyYjY2Yzg5YjU0MmE1N2ViNGIxNWI0ZDJlYWJkNWZmM2VkYjA3M2ZjMj=
I0NzMxNGEyM2ViMzlhYzRlYTRkMzA3OWEzMWNmNjBmNjgwOTI3NjViNjhiMTA5YWU2MTY4MDJiM=
Dc0ZjkxZDZiOTJhNDNmNTNmY2IzYTk0OWY2OTIxZDZkY2I5ZmQxZDM5ZDE4M2FkM2E5YTlmZTZi=
YWZkNTBkMGUwZDhjYjI2MWMzMTZlZTQ4NDM2OThiNWJkYzBhNzJmYzA3ODNjNGMwZmE1YjFhZTk=
2ZWVhNWQ2YmY0YjdkYWZlZGQ1NWY3NmI2MDZiYmIzMWU0NjZhNTQzMTYzYmRmMThmZWYzNjNiNj=
UxMmZiYTkyNTNiNTQwMmEwMzc2MGIzODA4ZmQyMmVjNmY4YmU3MGU2YmVjYjU5MGE5ZmM1NjFjY=
jNkODEzMjdlYjkxOWJhMTg4NWFjOWM1M2M5YWMwYTE4Yjdl" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOTczMDk3Mzc3=
Zjk5YTczZGU2NzdmOTUyN2U0YjljZTJiOWMxMmFkNzUwZjIzZThjYjE1MDA5OTJiZmI2OWIxNGM=
5NTg3NTI5ZmE0ZDkwMzJkYzU5NWUxYWI4YThhMmMwYmNhMTU3MmE2MWYxZDE2NjBkN2Y4ODNiYz=
RkYTM1MzQ4NTE3NmNhZjYwYjMwZmFkNDQzNGM2MzkxMTZlYjg3ZDY0YWE4MjEyYjVjMDg5MWM1O=
Tc5MjQwYTRlMmM3OTBhYjU0MTg4MWZmODM3MWU4NWJiNmU0MjRkYTQ0NDQ3ZWIzMWRlNDhhNGI5=
ZTg5OWNmYWY4NWU2YjY2NzM4NDg0Mjc1MGExMzVkMDE2MDBlZmUwMWQ0YmNlMTU4MWUwZTJkYjR=
iNjc0M2Y5OTBjYmRiMzE1Njk5MDFlMGEzM2QzNTM1ZjE1YjJkNWE5ZDUzZmE5MzcwNDgyNzY4Y2=
Q3ZGY1NTRhYTQ5NjRiMzIzNWNhNmZlNDhkODcxMjEw" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DNzQ1MDlkMjYyZmQxO=
DRiYWZmMWQ2OGE4OTgxY2MwNzc5ZDgzYTJlYTQzNGI0MDcyYTE1Mzk0NTA1NWEwZTE5NjI0ZjM2=
MDRlYmVkYTcxMzkzMTk5YjMwZmE3ZWU5N2I0YTcwNzEwYTljNDg5MDljYjRhYzZjM2JhMDBjMDM=
xMTU5Mzg1NDlhMWMyMjA4NzgwYTRhZTJkZjBjNzk4OWNiYzQyYWM0MGVhNjU1ZGVjYmIzY2EzNW=
NkYjc0OTJjZGJiODgzMmUwMWViNDE2MmIzNjc3NDllZWI5MjM4N2NiMzMyNTIyODQ5MmI5ZTFjZ=
mRmYTM3YzdlNzljYjRiYTAyZjk4NjA4ZDk2NGYyMTQwZjAxYjM0YzM4MjQwYzE4NzFkMjkwZmUz=
OWZhOTBmNzAwMDZiNzcwMTI1NDgxZjMxYTlkZTkwMWNjMWNiMmJiM2Q4NGFjYWYxMjc4YzAxYTU=
yMWEzMDAyNDVhYzhhMzgzYTYwZmIyNmVlOGFk" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DYzJlNGQ0ZDI5M=
zNiYjhlZDgzZjg4MGVkMWFmYWFmMDAyOWNmODdhMjZiNmViMTkxY2VhYWJhZDQyNTQ2YmM4NWFh=
Njk1MTI4M2NmODE0NTAwZTdmYjI0ZjQ2NmU1ZjIzOGQzZjZiOGMxMWZjZTZkYjRhMDg0MTUzMTB=
lY2ZiOGM3Y2ZhNzg2ZTMzYTQzM2YyMTAzZDFmOTFjMzRiYmQ3MTUzMzFkNDdlZDMxNjcyM2UyYT=
kwOGUxMTkzZDAwYTU1OGU2OTlmMDFlZmQzZjgyYjI2OWU1NGYyNDE2MjYyNGIzNTZmMjJiNWQ3N=
DVjOGY3YTU0NzM5MDM2YmE4YWNlY2M5NWQ4OThjY2I0MDViMDFlNmNlOTlhMDYwODc3YmEyMjMz=
Y2VhY2I0YTIyMDY0ZWM4NzkxMDIyNzIwZjQ0MTJjOTU3ZWEwOGIzNzI4YTBlMzI2NDEwMzE1Yjg=
yM2MwOWNkZDZiMGEwMTMxYzdkNDkyYjZjMDE2YjY4" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNjU1NmV=
iOWYzOWRhNDNmMzJmNTgwMGZhNWIyMTFhZjI4ZjRkNGQxMmJmYTc3YzRlNjZmMzIxZjY4MWM3ZT=
c3N2E1NTgwYzU3M2YwNDc5MTIwNjBkZTI3OTA2ZmJjYzQ0M2M1YmIxYmM0YTM2NmMwOTZmZjczO=
DViZWExZWE0NzgyY2FiZTBiMmY4NGY5NTMyZDNhZTc0N2VkNWQzODU5Nzk2ZTIyYTdlYWM5MjVh=
MTljNjA1ODk0ODE0OWYwNzg5MDU3MDEzYWZkMDM5ODEwMjY1MzU3YTYyMjliZTlkMGNjMDc3YzU=
0M2FlYmMxMjg2MTYzNzE4YjA0YTY4OGJmNTI0MDhiZjRmZmExYTk4NzJiMWMxYTE1OGRlNzg0Ym=
Q2MmE5NzAyYTNjOWE0YzBlMjI1NWY1NmYxMTc3MzA0ODY5ZjRjZjNhZGFlNjRmYzhkMDEzYmVkY=
TgxYTM5NDc2MTVmMDcyYTdiNmNkYWZjZjEzNTFmYzBhNmFhMGYzYw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNzk3MDRjMjAyMDE1ZTAyNzg0MmFhNT=
g3ZTNiMzFhN2JlYTI1ZDI5M2JjNTFkODcwYWM0OTNlMzM4ZTM0ZWQ1NWVkN2JiNDlmN2UwZTlmY=
mRiYmYzZTE5Nzg2ZDAxZWVmNDlhZTBhZjcxOTE4NTRiYWFkOGZmZjA2MmVmYzI2MzQ5N2I3ODlm=
MGYxMDA3ODFjMmMyOWMyOTBmNzVkY2YyMTIwZjY1OTlkZDA0YzI0Mzc2ZDYzNzU5OTViNTFlYWF=
lNjZjYjIwNWE0NDYwMzMzODliNzRhMjQ4MGIxYzVkMmE5NmI2NDdiMWY1NmY4YTEyNDIwMmFmMz=
llNzcwN2Q3MTlkYTgyNGM1YzEyNjg1ODY3MGFlOWM2YzExMTQyN2VkZDMyMzYxOThlNTBjOWY2Z=
WVkYjhlODM2NzQ1YjkzOTJlYmFjYjI2NjAwOTMyNDEwNjM2NWY3MTkwYjkzYzExNTQ3NWE0ZDY2=
YzVmYTQ0MTUwM2NkZTFiZmRh" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMGE4NmU5NTRmYWU1MzMxMTQ0ODBiYW=
RlMWQ5NmViNzZhOTRiZTAwZTViN2YzN2YyMzBjZmExNGRiODQwNjNkOWJmZjBiNWFjYWM3M2U5M=
GIyNWQ4NzM3N2FhNmE5NDI0YzdlMzU2NDQ0MmVlYWVmM2ViMDYxZGNhNGQzMmJiN2VmZTdmYzM5=
OGRhOGZlZDdlMTAyNzI1OWE2OGYyOWZhODNhYTAzNTNiMjhmNWRiNWY4MzczZWZiMGUzMDIzNzd=
iMzBjZDZmZjcwMWU1YWVjOGY4NjI1NzM0Y2I3NGE0ZjJiOTBhZjRlNWNjNzIzM2Y4YmU4NzMzYz=
AzYmU3N2QyNTE1MDhkNDIyNmNiOGZmNzM4ZTIyZDFiMzdmZjFkNjY4MDIwYjFjYjM5ZDhkZWIxY=
jI3ZWQyMWQ1MjJlMzA0OTE4ZTE1OTEyOGVlNmIwNzJkYjcwY2VmYjU4ZWJlOGY4OWE1MzczMDZm=
YjJiYzViOTZmNTk5NTUwNzY4" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmUxZWU5Njg4YTY4=
YjExNjMxOTQ1NjJjZjY2OTk4N2RkMTVhYjM0NDM0ZmQwODAwMGUzNWU3MjM1M2MwMDE0YWNlOGN=
lZDQwZWRjYzM0ODY4NWY0NTUzNjg1YWMyMjg0NDlmYWZmYjAwZDQ0ZmY3M2ZmNjZmNmQ1OTk1MG=
NkYWYxMWVhNjdmZmNlMDBmMDZlODUwYjVlN2QwZjFmYzg5OTUxN2EyZmRjNWNkOThmZjkxZjJhY=
zBhYTJhZjQ4ZmE2OTZhNDU4NTdlNThjZjU0MmI4MTY2MjA4MjIxODE2OTE3YTVhMDRmMjc0OTgx=
MDQ3NTM1OTU4YzY1YWExNjNiN2E5NGQ4NjhiZDhmYzdmNGFiMjQ3NDFiMzJhZDIzNjcwYmFjM2J=
jZjY3MTUzNzdmZDE5ZmE4ZDM4ZjUwMmQ5NmUzOTY4YTY3ZDdjYzc4Y2NkYmJjNTA0M2I4YzE4Zj=
I1YjJkOWJlMjcxMzM5NTcxZmMyNmJiODBlMjY4ZTgzNA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZjAzNDYzNjlhNGQ1=
NjIxZTMxYTgyNDRkNmYzMDc0YzdjMWFkYTA5MzFhZmY4NmJiNjE0NmZmYTQxOTUyNWNkNTNiYTV=
hYjkyZTJiMzQ5N2Y2Yzg0YzdiZWFjODQ4ZTAxYjhjNTA3ZTVmMjM2MzAxZGNiM2Y3YWY1ZDNmNW=
NjNWM0NmE1YzAxNTYzNTM4ZTc3OTg3Y2Q5YjIwOTc2MmU0MDg4Yzg2ODQ3YTk3ZjA4MDc1NjFhY=
mYyOThmMjcyNWM1Njg5YzgzODkzMzViMDNiZGIzMmQ4ZjQ0N2NiNzg5MmJiYWMxODU1MDkyMWYx=
ODU5YmZlZDUwOWZiNjcyMWQ5M2EwOGNjODM1MmE5YTgzYzk5YjI2ZjJkZGM4NzE1ZWQyYzUzNWY=
2ZWNhY2Q5ZmJiZmRhNTllMmQxNDljN2M1MmJjMTg1MzU4M2I5Zjg5M2YxNjRmODE4YWZkOGFjOG=
NjMTljM2UyODY3YWYyMjNiYjliNjliYTQ4ODg5YWRmNA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzEyZTE0ODIwMGM2=
YTVhOGMyOGMwZmRjMWUwM2M3YWMyNDlhY2YxZjNhNzhjOTc0YmZjNmVjZDBjZGZiZDc3NmVhYmI=
zYjc1NjJhYTAzMWUwM2M0NDYzMjgxZTEyNDIxMjBmNGY2ZTgyN2VmY2QxZWE4NzY4NGE3NDRhZj=
A3Mjg5NzAxZjdmZTExZjFkNDJhMjZlNzk1NmQzYzc4Y2IyMjI1YjAyYjc3NTkwZWRlYTkzMmJkZ=
DUxNGNkNTA1MzhiOWM3ZDczYWMwY2JhMWRhY2M1YmFhNzk4NDJkOThjYTE2ODA0N2E3NmExYTYy=
MWVlZThlNDdlOTc0MDAxZDVjMzRjNGExZDdkZGMzZDc4MjQ3YWEzNGUxNzhjMTFiOTVhOTEzZTN=
iNzU0NTNhNzIxMTE0YTJiY2JiNjk1ZWU2N2QzMzFhN2YyMDRiMmI4Y2ViMmNmYTk5MTk5MWJkZG=
Y1YTMzMDRiNGZkYTZlNzczZTQ2NWI4NDgyNWJhNTZkMA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNGFhNjM3OWFhMDE4=
ZDYwNDI5MDlhMTZlOWIzMmNmYmRhNWI5OTk5MzIyZWQ2NmUwYmYwMTAyMzRlMWFiMDBhMjRiNmM=
2MDJhODdiOWY1Y2Y5NGViYjQ1MTk5NzkyNzk4MmIyYTVhNDc4NmQ4YmQ3YWRkMmI5OTQ2NmQwYz=
E1M2FjOTFmNTRkM2M3MDBjMmUyYzUwZGE3ZmYyMzIzNTY2YmMyY2Q4NGRkNmQ4YmFmZjg0NjM1N=
WYxYzkzZTZiMWE4ZDQ1N2VjMjRjOWE0OTlkN2UyNmFjMGJkZGE0NDQxNDZiOGIwNWMwNTBlNWUz=
NGIxN2E2N2Y0YTJmYjNlOGQ2ZGI1MjBmMDMzZTJjMDAxOGZmNzM4ODdmZGFjOWRjZTVhYjFmNzY=
yZTNmNjMxNzRiOTE3NTlmNjJhYzAxYjY4Y2NkM2EzY2Q5NzQzZGVhMjhkNzczZGRlZTczZTJkMT=
RiNmQ1NWNjZDc3ZTE2MjY4ZDg1MTE0MDg4NjM0Mjk3Mw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMGRhNmNlY2ZjMjQzOT=
M5NDZhN2E2Mjk1NjY0MzQyNTkxMjNlZDQ2YTQ5NzYwMTI5OWFlN2RlZGI1MTNiMjIzYTIyMjI3Y=
zA3ZDRiYmY3ZjMwYzZhMTJkYjA2OTU1ODEwMGQ4MDllYjg0NGI3YmMzMDE5MThjMTNlZWI0MDAx=
N2NkMjFjZDM3NGE3NTU5NDRhNTQ1Y2M4M2RlZDNkNTM4NGQ4NjQxMzQ3MTQwNWM0NDNkMmI2MjI=
xNTY0YWQ1Y2U5NjBlYmUxMWI3YTdhNWMxMWExODJiNjY1YmFjODhlMjc1MGZhMmU1ZThmZWU5Mj=
g3NTI3M2JmMTQ4OTgzMmZiN2M4OGQyZjE5ZWJkYjM5NGQxYzczMTUyODhiY2Y3NzQyZWVlMjg0M=
WEzNjcyNjRiYWM2MzM3YTViMmZjZDM5M2MwYjNlN2QyNGRiZTQzOGE3ODE0OWRlYjJiMjlmNzFk=
ZTc5ZjI2MDE5MTVjZDdhY2RjNDI5ODcxODVlZjYyMA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMzgwMjJiM2RiMjZi=
NWI0MmNjZGQ5YTlmMjFiYWMyMTk4YjA3NzE0ZDE1OTU1YWJkNDVlMzJkZWUzMDgwNGNiZTllMDh=
hMTdkODRmZjc1MTAxZmEyMzcyMzA4ZmQwY2I4NTcwMGQwYjJkZjU2M2FkMTdiNjhhMTk0Mzc5Nz=
U2OTJlNDhkZmM2YTI4MDE2YmQzMGVhYjgyMjMyMjI0N2M1MDY0ZjBjMDY3N2I1ZTIwOGI4ZTE3Z=
TdhNzliNTU1YTM0NDQwOWUzZTUwYzgyY2JiMjk2OWQzZjZhMjQ4NTBjYTY3OTQxYWQ4NjMxYmM3=
YmU5NjdiYTc2ZDQwNDZiNDk=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYzYzMWY5YjY0N2M5MjExY2Y4OTU0YmI1OGExZ=
GFlYjU1NjIwYTBiMTgwZmVmOGViZjMzMTJkM2RkZjZmZjZjOTI0ZTIxNjczNzI0ZjhmMGE0NmFi=
MjU5ODdkN2U5YmIzMGUzMzQwZmRiNjFlNWMyMzMzZDQ0NjMwZjc3NzJiOTcyYjY5NzhmZWRiYjZ=
kYzViZjFjNGZhMzE0ZjQ4YjA5OGY2Y2MzMDkzNWJjZjUzNGI5Y2ZhYmE3ZDBhMmNiY2Y4N2IzOD=
AwMWZmODg5YTVhYmQxNGQ3NWQxYTE3ODQzYTA1YjI2MzU4NWY4NTk3MDE3YzQzNDY3NzU4NTM4O=
TAzNDQ2ZmRiYmYwZDVkNjRmODZkOGRiNzJmZTM3MGI1OGI2NmE5NWMzNzNhODY3NDYzYzg5ZDgw=
ZDdkNjZjMzNmN2U5ZmQ2NDIzYmMyYTg3MDFhMjkyZGE0Y2QyYmE5MzJkMDczOGRhZDBlMjVmMTN=
iNmZmMWFkY2UwMzEwZDQyNzIzNmI4OGI1NGMyYWQyZTNiMzJjZjYzYzZhMzQ2Yzk2NzI5ZWMzMD=
FjMjQ3ZGVlOWQ2YmU3NGI1ZDg=3D" style=3D"font-size:12px;line-height:134%;font=
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
