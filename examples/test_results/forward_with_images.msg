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
From: localhost:1333?u=3DNmI0MTI5ZjIzY2IzNTE4YjZmZGU5MWQxYjMzMDQ0MTYxMGE4YW=
U4NGE2ODllZDhjNmQ0NjExYzE3MTRmZDhjZTAwYjUwNDVjZGI0ODMz <mail@eg.expedia.com=
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
<localhost:1333?u=3DYmNmMzAxMmJlZGQzMThjNGQwMzBmZWQ0NWE4ZjhjODMzNDM4YWE2YTc=
0MDM0NTZhNmExMzcxYjY5ZjIwZmFlYzdhNjFkODdkNzMxYjU4ZmEyMmUwOWU4MTY0ODk3MTA4NT=
RlZWYzMTdkMjU5OWM2NThmYzNjNGYzMzE0Y2M4ZTU0OGFkOTllNGZlYzRhY2MwNDE4MDNhMjI3M=
jg1ODE5ZjMwYjAyNTJiYzYwYjA3NjE3NTRkNmFmNzMzNDBkNDcxNTk2NWJjZjNhNjhlZDNjZDRm=
MDU1ZDc1YmQzZWY2ZGE4ZTdhOTU2YzM4ZjZhYzk5ODIxNmU2MjgzYmMwOTYyMzBlNGQ2YmYyZWR=
jNjY5NjNmNGExZjc1MDBlNTkzNTRjMDM2N2M2ODQzYTVjOTY3ZGViNTM2ZDhhZWRlZGEwYWU1ND=
hjODBiNTM1ZGViMTUwZDY4ODQ5ZTAyMmIzNGZmY2I0NjkzMzgxOTAyMzg5ODU1NjQ2OTE1Mzk0>

* The Travel Edit
<localhost:1333?u=3DOGNlZTZhYmNkN2MyMDRjZDc2YWM4ZmM0ODYxMTM4ZGUzZmU5YzVjZDd=
iYTAxYWE4ZGQzNTM0YzBiZTJiMGVhMzc2OGQyODFiZjA4MDdjN2MzODcxZmI1ZTA5ZDQ3ZGIxOW=
I5YzRkODY3NDgxYTI1OTgyY2RmOGJiOTY2YjhkZjNjZDEyYmYwNWU1ODE0YWEzNTFhMGQyMmMwN=
jhiYzhkYTdiYmZhMDBlMDM0OTlkY2RkZmZmZmNlOWVkYTNkNjljZGViZDUzN2E3NjVkNmYxNTE0=
NzBjZGE0ODhhZDc5YTUyNGU5YmI0MzcwOTA4MmVhNjZmNGQ5ODBhZDAzMDg4NWM5ZGM2MzgzNTd=
lNWYyNTgwZGY2NjkwNzA0NzRiMTAwNGVkNTcyZDRlOWI5MDYyN2YxZDAzNzEwOTZhZGY1M2ZhOD=
QyZTFiNjJjYzY0NTE1MTRkYTczMDgxYWRjZTRjNGUwMDAzZDkyMmYxZjVlMjM4NDhhNGQ0OWQx>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DN2I5YTcxZmI3MzZlY2Q3YWYwZmFmNmZmMDk2YzljZWMxMjQ1YTQ5MGM=
2OTBiZTNkZDJkNGY1OTRmMTRmMjZhNjUxYTdkZDUzYzdjZDdkMmJmNjc4Y2Y4ODMzMWYxZjM4Mz=
c4NWRhOWQwYTk2MmM5YmU2MTg1ZGIxZGY4ODdhMTNkNjU3NmIyYjM5ZDBlOWY3OWJlOTNkMWVhZ=
TVlYjRkNmQ1YzQ4MzM3MTc2Yzg4OTBiMzE4OTlmNDllM2JjMTY0ZjQzMzY1MzVlMzhjMjFiY2M5=
NWRhM2MyYjVmMjE2MTkxNmM3MTdhNTNlNGEyZTI1YTkwMmNjMzM0OTNlNWI4YzAzYWRmNWI0ZWI=
3YjE0YTE1NGI1M2QzYzM5NmFjZDFjYWUyNDQ2OTU0NTkxNGQ2Yzk0ZjBjMDMzZDUzMWRlZTNjNm=
FjYzUxNDVjMGY4NDQzOTQ2NGE0M2RlZjIwYzM0ZTEzOTgzZmQyMjU5ODU1NWNjNWM4YTIzMDMz>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZGVlZjkzNTY1MjdiYWZlZTRlNjdjZTQ0MDdjN2Q1ZWE4OTQ4YjZlZGM=
0YjNhYjI0NGNjMmU3YTMyYjNkZjM2NDYxNjZlODFlNTI1MWJhYmQ0MWJiZDQ4ZDUyOTIzZTQ1ZT=
k0MjE4MzIxYjhiM2QzNzIwOTIxY2NlYzBlZDczOGRjMzhmMGY1ODRhYjFjZjY5ODM0YjZkYmM2N=
DY5YjJmNDYyYzllMjg4Mjc2MzJjMGUwNTczNjg5OWE0NWJiZDgzMTBjOWQxMmRmODBiZjAyOWZh=
NmRkMjNlMDYxOTA2ZWNkNzRmY2E2ODMzMWU3MTExOTQ0YjQyMmNkM2U5NGE2ZTY0MmQ4NzJlZjM=
3NTU2Y2YxZTRhNzJlMjc0MjFlOGZjOTM5OGZiOTFhNDdkODU2NmRlN2ViOGI1NmI2OWFlZWRkMD=
VkZjQwNzU0OWRiMjNmM2IxYjg3ZDZkOTZhYTg1ZjdiMjkyMzE2ZjlkMjI0YWZiN2EyYjExMzc1>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DZDNhYjU4ZjEyYTMzY2E4MzQ4Y2QwODlhNWY1ZmViNDA4MWJjZWQ1ODl=
hMWEyZGI4ZTUyMGNjMzg2YzcwZTliNTIxOTFmNDcxOTFhODRiY2I3OTZhZTIwNWRkMjBlYzYyMz=
dhZjU5NzlhMzVlMjIyMWFiODM2NTllYjA5ZGUyMGQ4NmU3OGY3N2M2MmM4NDA5ZDM1Y2Q3YTdmY=
2FmNDZiMTIzNzVhOGRmOWMwMjM1MjgxNzhkZDRlYzQ2MWYzNmJlNWRmOGQ2MGM4YjU5YWZmZGEx=
OTBkYzgxYzE2MjNlMzk5Y2I3OGM5YjFlYzgwYzcxM2VkNzhhNDZmOTQxZDJkNjYxYmM5ZGEyNjg=
0M2U4NGZiMTQwZWY2ODc2MGQyOTVlYmY3NWFkZDQxYmMyMDAzMzU5ZDU3M2I0N2NkMGRmNzI5Yj=
g2NTYzYjYzNjg0MDAxYjQ1ZWRmYzJmNmJkMGFlZjQ4NzhhYzFlMzZkYmQ0MjNmMWYwMDUxMmY3>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZjJmMThlMTg3ZGUxMmE5YjIzNTVkY2VmYWRmNjhiOTI5MWQ0MjNkODl=
lZWQ0MjJkZWNkNzNhZTRlMjcyODNjNmQyYjk0MTU3ZDdkYzJlMzU1NDEzN2ViZjgwODFkMWYxNj=
YyNTM3M2I0NGNmOTgxYjI2NjMxNjI2ZjJlNTNlNTRlMjZhNTA2YjQyZDg5ZmRmNWFlNmQwZDk4Y=
WQ0YmE1MzFlOWU4ODI4Y2VkOWEwM2Y2NDYyZWZhYWQ5NGQ0YmM5YzE4MmI0YzU0MTU3NWFlNTIx=
ZjgxMmEzYTI4MDM3NjlmMGM3MWRmZWVkYzdlMDA3Mjc2M2ViYjZjNjg2NDU0ZmY0ZGZlMjliZDg=
0NTE0Y2IyY2I5YjMwY2ZkNTMwNmU2M2M0NjUxNTc3Y2I2M2I4MmRhMTU4NGE2NmE3NWVhNWZmYj=
liYWRjNTJjMWQzNjljYzUzZjk1NTU3ZTkzYTlkNzVlNGQzMDg5ODNmNmM5ODgzMmFiMzc3YmI0>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMDk4MTcxYzRhMTM3ZWVjZjkxZDk5ODQxODI3NDM5YjVhNTg3MTg1ZGZ=
jMzhjMDZiMjJiNTY1ZDg3OGQ4MTJkYmMxNTVjZDYzOWY4NjgyZjcwM2FlNjgzNWM0OTUxZmI3OG=
M2Y2IyMDYxN2UzZTkxOTEyYzFkNDY3ZjI4ZjFmM2VlYWZiZjM1MmRhMzBmZmJmNzk4NWJmZDRiO=
TMzNWY0NjdkMWI0NjMzMGUxOTYyMjMzZjNmYjk1YjYzMDQ1MTgwZDlhNjhmOGNmMjE5Mzc2Nzc5=
OTI2MDMzNGRkYjZjMzFkZGU4YTE2N2Q2ZDYyNjQzZjRjYzU2MjMxZGJhYmVkNWNjYmVjZmI4NjU=
4MjNiNTIyOGM1OTVhMjVlYjc0NzM1OTZlNjQxZDYwOTRiYTBjMjgxYTlhMjRiYjljMWU4YzI1OD=
RiZmRmMjE3ZjkyMTdlODAzMGIxNDc1ZGU1NWYzZTkwZDMyMjIwNTQwNjBkZGFkMDQ3Nzg4OGM0>

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
<localhost:1333?u=3DOTBmZjEyNDYxOWNlYmUwNzNkMTk4ZTk4NDIwNmExYWQ2MWY2MmQxNzk=
wMDg2NGY5NjIzYjFiM2EzMDA0MDIwMTY0MjEwYWU5ZTg5NTZjZTBjYTNiMzFhMzBkMjQ5MmNkOG=
Q1YTFiNTM2ZTA3N2NhZTZhMzM1ZDdmZDQzZjQ4NjM2Yzc4MWNiNGY4MjM3MTJjNGZiMzIzN2ZkO=
TliNzhmMjQ4MzdkNDRhM2RjMjUzZTg3NzExNjZlZDlhZWIxYTNlOTQ3NGFhYjI3ZGFjZGY5MjYw=
ZjI2ZjM5ZjkwMTdmYWE4YjIxZGU0YjBjYWY5MGI3YjZmNTBmNTRjYTAwNjQzODc3NjkwZmNiYmM=
0NjFlYjAwNzM0MjYzNWQ4MGIzMThmNWQxZWQxYjlhMDM5YTk0MGU5OGJjYmZhM2Y5ODE3ZGM0Mj=
AwNDYwZTY4MTM0NTZiNmFiZTdhMzIxZjNkYzc0Mjg3NmUzZWNiNTRlY2RhYWU0YThkM2JiZTcxZ=
DVjOQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DZjkwZjc1ZjQ1MjUzNjY2NGNhZTM2N2VjMDc0MDg1ZGM1MzU3ZjA0N2Q=
1NDRhMWYwN2M1ZDg3YTYyYTVlYWEzNWNmZDgxZjFmNDFjZTBhMjA3YjI4MTEzNmI2ZDFiNjk3Y2=
EwMmEwZTRmMjc0MzQxZjRmMTBlZmZkMTQxMjMyODhlZDJjYjlkMTEzZTE4YWRkZmNhYmY3ZThiY=
zY3OWE1NTUwZWViODg5MTYwNzIwOGUxZGExY2Q5MWI1Y2Y4MWYwMzU4Y2E2YTI3YjI5YTM2ZmQ2=
NzA5Mzc2ZmVlYWUzYWM3ZTUyZGUxNWIzMGQxZjEyYmQ5ZTAyZDE5MjgzNDgwOGY0MThlYWYzOTc=
0MDcxOTQ4NGJlZGZlNmE2MjAyOWFmZmZkNjliMzE4NTY3MTAwNjAzM2E5ODU0ODJkOTU0ODc3MG=
U5ODE0ZjU4ZmExMGJjNzU3OWZhZDg5MGFkZTE1NmM3ZjdkNTE0NzMzZjE1NjE5ZTE3MzA4YWQ1>
  [image: Google Play]
<localhost:1333?u=3DNzUxZmE2Y2Y3YzdhZWI2YmFmZDViOGZkMzE5OGM1MDVhYThlOTQ2Y2Z=
mYzI4NDFjMTA1ZTgzNmViOWExYjVhZTJjOTQ0MjE5OTg3ODBlOWExMGUwZDM2NmQ2MGQ0MjQxZT=
FlYzU3ZTY2YWIxY2ZkNmVkN2JiYjRlZGE3NjMyMTRiZGU5YmQ4Yzg2NGZiYjBjYmJjYmFhNmExZ=
GM0MzBlNzFkMjMyODk0MTU0MjgzY2U5ZGEyMWJkYjQ4OTIxMzQwY2E0MmQyMDMwNjA4NTIwNWZk=
NTE1N2NmYTVjMTRmYjIyNWI3MWQzM2MzYTQ1MzlkYTk4OTFjYzk5ZjMwMTUxMDA1NGQ3NWJiNWV=
mZWU0MWZiZWNjM2YyMjAxNzc2ODEyMGJiNGIzZGY2OTkyNWU4NTMxNTA0YmZiOTEyMThhOTlmOD=
U2YTkzNzljNWY2NmZjNzAyOTZlZTllYWQyZmUxMTQ2MjdiZTFhNDAxNzM1ZTc0YzI0ZTg0MGNi>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DMDVlM2Y3NDEwZDk1NzIwZDEzNDdmZWY2YzcxNjU1ZjM5YTIwMWI5YzB=
lYzlhMjkwZTQ4YWRjZGM4Y2Y2MjQ2OWVjMjY1NDZjMzc2MjFjNWQ3NTFiMjhjZGEwNjEzZTYwZT=
M5ODk3NzdjMzkxZmQ3YzU2ZDJhZTkwYTM5ZTE2MzZhMzk3MzUxZjBmMDQwNzNmZTBlOGMzYWMzN=
WZiY2UwZDYzY2FhZDEzYjE1MzgxZThmNjNiNmI5ZTY0ODVhM2YyNDU0YzJhNDA4NWUxODA5NmU0=
NjlmN2MyNzM1YzAxM2JmZWFkMzIzZmVmMWMzNmQwMzRmZTE1ZWMwYzg4YTAxNzhjOTA4YTkwNTc=
5YWVkMGZhMDU5N2Y0NjUwOThjODI3Mzk4YTE2MzcyZjJiYTA4OGRkNjBkZjUwZDczMWYzNWY5ZT=
k4OTg1MjZkY2Q2Mjk5MTJlNTA3MjliNGVjZjExMjEzZjQ1OTExMGEwZjUxMDI0YzBjMzRjMGFkZ=
jY5MQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DYjI2YTg2N2RkMGQ5MDgyY2RmNmVhYjI4NWQwOTM0ODg2MWI0MzJlNzY=
yODI1ZWNmNzU5ZTlkZjgyZmFmOTRlMGJmN2RiM2YzZTEzYTA0NjcwNGViZGQ3MmQ3N2RjOTM4Yz=
Q2ZDcxY2Q1NTA2ZmJmMzlkYjFiOTM1ZDAxZWY5Mzc2ZWIxMjFkMmU2ZTM5MDhiNDQ2OWU1MDFiY=
TI2YjFjZmJlMzA2Yzk4NGZkMzVjMGIzNzQwMTg4NzJiOGZkMTIyNjliYjM5YWQ2ZWVhNTMzMjMy=
ZGZmOWQ2NWIyM2E2ZDY1ZWY3MmZkNGFiYmY4NjIwOWE3MWM5ZjgyZGZmNjQzM2MzOGMxZTNlNTI=
xZTkxM2I1Yjc1YjRlMGEyNmNkZGU1ZTc3ZGRhZThmZTQ2NzYzNDk0NTY5OGEwNGI4ZjRjNmVhOG=
QyZTUwY2U0MDFiNDczYzBmZDM0NjMzNWY0Y2ZmOTQ4Y2E3MGY1MThjODllNzc4ODhiOTE2OTc0O=
DYzOA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMTVjYzUxNDhkYjZjY2ZlZmVhMWE5ZGZmYTY0M2VjNzI1NjEwMjBjMzI=
4NmNjMDJkZmZiMTkyMmZiMGU2ZGI1OTQ2ZTliNjM3YTg4ZjE1Yjg0MzIxNTUyZjQ0MDQwZDgyN2=
NlYWI1ZmYzZTk4YWI1MjM0NWY1ZjQzNWIwYjAxNzc1ZjNmOWY4MGNhYzdiMjRkMWUyMmUxYmEzN=
GU1MWZmMDVhNzZjMTY1MWRhN2U3NGViMWViODlmMmJhZDgzNTk0YzNhMTg3MTZmZWQyYmNlYmIy=
ODk5NzQ1YTZjMGRjMWVhYzQ3MDVkZWNlOTM5MTc1ZDQxNzk4ZWNlYmExZjJlZDliMTc5ZThlMTk=
0M2U5OTk5M2I2MTU0YjdhZWI1ODNhYWZmYjc2YzBiYjcwNmY2YWJkOWU1ZjZmMDIyOWYxZGZhNz=
ZiYjFlMjViMzAxMzE3NzI3ZDI2YTg5NWQxYzA2ZDNhZWI2MzQ1NmJlZjRjM2Q5ZWU4NjliZDkyY=
WViMA=3D=3D>
   About Us
<localhost:1333?u=3DZDVhNDdhY2M0N2EzY2Y5MDk0ZGZmOTAzM2IwMDdhMDMzMDY4YzhiNDQ=
yMjdmMjc4NjU2ZDQ2YTMwYmM0YTI1ZTE2ZDVjOWNhNTg1ZDkxOTYzMThlOTFiZTI2NDc0MDc1Nj=
RmYWZiZjMxNzg0MDJhNGFlMmI0ZDdkZDA2ZGQ0MTUwYmNkOWM3ODk1OTI0MDY1YTkxNTgwOWQxN=
Tc0NzQ4MWZhNDI0ZmY0ODk0YjZlZjNjZmViNzViY2QwOGFiYWFmMWFiMzUyNTI3NzVmODlhNTY4=
NzczM2E5OTA5OWM3MGQ3ZjZlNDY1NWVjM2Q4Y2Y5ZmVjYWFiMmFjZTIxY2YwMTU2OTc5ZjBmNjU=
xZTY4NWU1MzhiNmRmYjA1MGZlNGRkMWFiNDQ5NTA5YmJjMmEwNDg2M2VmZjk5OTg5MWRkZGNkMW=
M3N2FhZDYzMjM4MWU2YmJiYzlhNGNhMDQyZmQ3ODNmODJmMjVjOTJhNmExMWU1OWRlZjkwNGVhN=
jU2Mg=3D=3D>
   Customer Service
<localhost:1333?u=3DMGZjZTBiODUxNWNhZTliYWUxODg4NjVlN2I4NDI1NTBlZjMzMzZmOTg=
5ZGE2ODlmNzBmZTYwOWVmZTBjNmIwMWNlOGVlNjA5N2EzMzc5ZDY3MmY5NzRlMTViY2IxNmZhMG=
RkMjM2YjQ4YjM3OTgwY2M1MmQ2ZjEyMmQ3MGMwYjMxNzk2MmQzY2Y2ZjIxZWZhNDZjNmQ2YjU1N=
TQwNTI0Y2NkNDViOWY3Yzc5OWUwMjJlMjY5MDllN2NlZjMwYjhlMDZhMWQ2ODg4NmE2NmI3MDVm=
YTRjZjMxYTY0ZGE4YjQzZTNhODk4NjliODRmNzE1MGQwZjUwNzNkY2NhMTIxMTc3N2VjODc2OTR=
lOWM3MTIxN2VjOWFkZjdlMTdjNDQzNjMyNWQ2NGRhMjYyODQyZjZlOTI5NzY4YjRiZGM3YjY0Yj=
c4NmYxZTVmYWM2MmFmOWRmNGNjZGI0YzE5OWI0YzI0Njk1ZjI4ZTk5NGJiODY4OTVlNDU5NWQ4Z=
TYzYw=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZTMyY2ExZjc1M2Q4N2E2ZWQ3NDlmMjU4YzlmZGUzNDczMTkyMTEyMWY=
3ODhiNzk0ZjJhOGNmOGQwNWY5MDRmYTI3ZmNhZWQ4ZGZkZWE3OWJiMjMyMDY0ZDE3NzY3ZTI5YW=
Q3YjM4OWU0ZjA0NTFhMTYyNzg5ZmE2NmEyODUwNmU5YzJhNzRkOGRmNDQ0MGVmODM0MmY1NDRhY=
jg5YTFkZjkxNGUzNDdkZThkOTY5M2I5ZThkNDllMDQ0NzIzZDA1ODViOTg1ZDIxZTg4NzA0MmRh=
ZWFhY2MzM2NhNDBhODk5ZWM5MDRkMjcxMjkxMDJjMjNiOGE3YWJjMjM3YzI=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DZDE0NzZjYWRmMjg5NWVlYzRmZDJlZjJjNDc1YWE0NzM0ZjFmYzIwNWQ=
5NzY2ZGFiMjExMTBjMjMzYmFmZTYzM2ZkYTdlY2QyMmViNmY0ODI5YzQ2OGYyNzk0ZWQ2ODA3OG=
UyM2ZlYmE1NjM4NTRjOGZhZDdhNWIwY2Y3ODM5NjgzZjBmZjQxMWFjZDZiYzg3N2IwMzRiNTM0O=
DFkYmExZDgzODI3MjlmYjgzNGMxOTRkN2UzNDZkOWM0OWI4OThiOWZlYjA0MDAwY2YwZTQ0MmQx=
ZTY4ZThhODE5MDY4MGE2OGU0MjA1ZjQ0NjM5YTE4N2M1ZDQzZjNjNTFmZjEyM2ZkYzIzMTQwNGZ=
kYzk0ZjQzNDdmZWFmODQ5MTA4NGZlOGFkZjdjNDJjNTE4ZTVkZTQ3NzgzNTJiYjQ3NTFjNjAyYz=
UwMzJkZTI2Yjc0Y2Y0YWU1Y2Y2MDA3YzRiMTUwMTgzOWZmYzJlNGZiZTA4ODZlMTMyNzViNWIxN=
TIyNzY0MTFmYWFlNmZlY2NhOWFiNDFiMDljMjU2NzJjNDgwOWE1YTQyODIxYTA3ZDBlYmZmYzFm=
N2E3YTA=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYTI1YTIyMzJkNDkwZTNk=
Y2I2MWQxZTFiNzE1MTg0MzE5OWNiMmYzNmNmM2MyYWJhN2QxZDM2NDU2MzI4NGIwN2MyMmM3OTg=
1NjE1MDYzNDFhYmIwNTY5NTQ1OTdkMGM2M2JmZGY0NTgwM2M3YzYwODNkMmU2ZWMyMjg4YWUyYW=
UwOWUxZWU3OWIzZDcxNDJiYTU4MWYxZGI5YTlkMDcxMzllNjAzYmY0YWEzNDkyYTNjNmY4ZmRiM=
2I3NmVlOWQ4YjMwZjU0MjhlOTMzMGY0ZDg2ODdjNjQxNGRmMzRkN2YzNTUyOTdhMDgxMDAxZTZh=
NjdhMjgzMmFiYzhkZGE5YjA5YzJiNWUzOWM4NjI0OGNkMTBlYzVhYmE2M2M1NDVmZTFmYWViMDc=
xMTRhMDk2ZDFjMDE4OTgyOGM5ODNkMzc5MTEwM2E4ZmJkZDA4OWVkNTFlZjhiMWVmMWFjY2ZjNG=
I1YjlmZjU0NTIyNDI5NDNmYzljM2YyODc3" target=3D"_blank">
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
?u=3DZGJkYjkxZTllMmM4NzJlZGUxZmRiZWQ1MGM1ZDI5NDRhYTg3Y2Q4ZmNhOWRlZTgzZTAxZD=
EzMzUxMDBmYjEzZDU3MWIyNDUyYWRhNmNjNDdjN2QxMzVmYjNmYTJkOTBmZWM3ZTJmMDg3M2IwY=
WVmOWM2NDc2ZjQyMDFhZGYwZDA0YThjMmQ2NGU3YTY1NDJlMzk5MGE1OGVlODY1NjQ2Y2I5NjQ1=
ODZmZDljMDczZGZlZjdmZmRiNzQ1ZGFiMDhiYzgzMTI4NTY3MzE5ZjZjZDQxNTM5MzA2OGQzNmU=
4M2EzMjY3MDI2OWY3MGIyNjY1NDU4YTM3MDM1MGE4MjM0ZjJhNTNhNDI0NjU5ZDBiNGJjODM3OT=
QzOGVmNDQ5NmIyMGQxMGY5MmExYTE4YzZlNzg3MTM5OGQxMzNmYjZiZDVjN2UyNzAzODU1MTFhO=
DQ3NzI5MjI1YTgwZDliNjI0MmVjMDg1MzZlYmQ0YzkwMTc1ODY3OWM2MDIx" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DOWJlOWQ3N=
DFmYWVlZjg3N2Y1ZGYzN2JlZjk4NjZmYmJiYTQ5YjdlYmY5YTY0YjZkYWVhODRjNzQwOGU4NWZh=
YmE3MzA2N2QxNDQzN2RhNDAyZTVlOTZhMzFkODcwZTBiZTgwZjg0YzgyY2NkY2YyZjBhZDY1NzU=
1MjVlODllZDJjM2IyN2VmMjg3ZTU5NTAyOTc0N2FhNmI3ODM3NDdiMWRkNzMwMmE0ZTYwMGNmNG=
Y5NDE1NDQyZTk3ODg5Mjg0YmRiNjEwNDFmNzg3NDk0YjRlZDIzNjYyYmZiNGVhNWEyNTFjYThlZ=
mU4MjJhNDAxMDAwOTRhNDQ2NzM5ODZhMTRmZDFhZjY4NDU4M2YyYmE5YWJjMGVhNDcwYzBjYzVj=
NDNjN2RhNDA1NDNmZTc1MTJiNWM3MDkzYWQyMDBjOTgyMDA4YTU4ODljZDc5YWRjMmQxZjk0NzE=
3YTVlNzQ3YzcwNjZkZjg1YmQxYTk3YzdlZGRhYzBiODEz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DM2Q3MTY=
xMTQwZTI4NDRlZDRkN2MzNzlhNjg2OTFlZjA2Y2UzMDdkMTY3MThiY2M1ZGE4ZGE4YWM3OTdmMz=
U3MzczNjcxYWNmNzQ5YjE3ZjUxM2M1NjRhNzFmODVmN2IxYWMxNmJkNjljY2JiNjc2ZTg5NTEwZ=
ThlNmI3N2ZiMTRjYjRiZjkzMmM4YWVkNzUyNjU1MzgwZDFlOTliNjI3NjMxZDY4N2YwNzVkYzg0=
ZjgwZWYwYTRjZTc0Mzg4MzcxMTkzODk2ZjFkNGRmODM0YTUyNmNlNWZkNjY0NzhkZTE3NTA0NDk=
xMjZhZmFmMDllMjY3NWQzYWRjZDc5MzhkYjU0MWNlZDU1NzgyMzUwMDRiNzcyZjdlYTVlY2IyOD=
IxNjg2MzkwMGZmYjE5NDRkMWI4NzMwYTlmYWFkOTBlYTBkYzI1ZjU1ZTExMzg1MzJjZDM5YWQzO=
WQwMDBjNDRmZmI4YmMzMTEwMDUwZWNlYjFhNDcyNTYxZWIx" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZTZjN2Y3ODkx=
ZTVkNzI0NmNmNjEzNjVmNTE0NWE5ZTJhZWNlOTE1M2JlOTc0N2U1OThhNDJmMTVjOWU2M2FjNTh=
kNzE4NTBiOWJmYmJjZGM0YWJiYjNkZjQ2NDMwYmZhNzM1M2RlYjg2OGRhODllZGY0ZWZiNDRlZj=
g1YzQ0NWY1Y2M0NGQxOWYzZjA0Mjk1MGUwMjRjODQwYjZlZTE2MzVjZDdlMjg4ZmUyN2FjZjUyN=
WQ4MTc0Zjc2NjI2ZDMwNTU1MGVhYzYwMWRmNzdlZmJiZGYzMWExMmEzMzlmZGQ4NDU2M2MwODYw=
ODIzYzQwNzkyZGI1NDBmYTMwZWViMjhkMDIyNzQ2YWY3YmFiMTgxZTg3NTRmZWY2ZDc0MjdkOTB=
mNzg1YTM0YTljZDhhNWE5ZjZiYzljMGNjZWYyZmU5YmE0MTJkODIyZGE1ZGY3OWJhMzhlMTM3Nj=
gzMTM1NzBkMGEzY2RiZjExNGJhODZkMGI0ODEwMjFi" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMzUwM2YzMzc2N2YxM=
WM1ZTFhNmMwNWViNzA4NDRjMjViYzI4NWY2YzBhZmY0MGEzMTgzODFjMWE0NzIxNjQ0OTNhOWY4=
MjE2NzdmNDk0MWI2NzQwZWU0MDUzZWU1ZTgxMGUxNjc3NGM3YWZkNTc3ZDliNGFjMDEyMmVkODQ=
zMzZiYTM2ZGUyYjJiM2QyNTdkZmIwOGRjMWFkYmUyMGViODZiZTdlNmU2MTgzNzE1ZGQ2MzBiZm=
JmOTMyZTQ4NmQzNTk2YTA3ZTBmOTc5ZmI0ZGZjYjhjOGJlNzkyNzRmOTcwOTc2ZDE1OGI3ZjkzN=
DdhYjRkMjJhZTkxOGUzNTljZDMwNzU3MjZlMzJhMDYzMWRlMDJhMTNkOGE2ODMyMTk1Y2ZiMjFm=
ZmMyNjA3ZjM0ZjNkNmRmMmUzOTE2YWExMDI0MzFkMzY3ZmIxMTNlNmYxMGI1YTIyOTVkMGFjMWM=
0NDQzZWUwYzc5YWJiNGY5MzdkOGYzZDllZDdk" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DM2JhNjIyODhjO=
DNkMGZmZGYwZmE4NjYwYTUwODJlY2E0OGY5ZTgxZDRkZmUzNDA0ZjgyOTcyNjZkZDkyMDZhN2Zm=
Yjk2NjUwZGJkMWI4ZTY4ZDhmZGM0ZGI3MTkzODllNmVhNGQ5ZjI0MjM3NGQ0N2YyNmNmNmQ3ZjE=
yODE5MDg5MzdjZTk5OTZlOTA0YzYwNWNhZTMzMzA2YmMxMzA4OWMxZjNiNTJlY2MxMzRlZTFiNj=
c3NDQ4NTYwYzkxMzI3ZmRjZGYwMTgyNWFhMzgzZTI0Yjc5OTJhOTc5NjM3MmZlNGFkNTM5M2VlZ=
DRhNDNjYjRjNmE2NzRmNWUzZTU3ODZkNDE5Y2Q5ODFmNTgzYjgyNzU2YjJhOGMxNDQ2NTNkNGEz=
YjNiYWNjOWUxYmI0NjEzNDg4YzNkNzA2ZDYyMTQyMjY2NjUyNmMyYmYzMjA3ZmFiMDMwZDU0YWV=
jZTU4ZjE5NGIyN2ZkMGE4NDA5MjVjYzQ0YTBjMjMz" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DODEzY2Q=
1ZmQ1Njc3NzMzNzVjNWJjNmVjNDgyYTcwYzZjOTc0ZmVkNzQ0ZTZiYWYzMTY2ZjliNTI2Y2M4YT=
YyNTIyZmEzNzQzZGZjZjUyZWYwOWYzNWNkNTNlMDE4OGZiOWM1ZThkNTJlZWQ4OWMyZjc0ZTdhZ=
mE2OGYzNzMzZDZhYTNkODc5ODkyN2FhZjM2NjNmZjI5OWU3ZjQwZjA1NTczZDUyNWYxZWJlNjUy=
NjY1MTQyZGQ0ZTJkMDkzZTIxNTQzZDA2ODQ3YTljNjQ0ZmEzNThkNmY3OTcwZmJmNzNjNmEzZTg=
zNWZhZjBhOTdlODBmZjQ0NGM3MTBlYTY2MDQ4MTRiNzdjNGFmMjM1YTg0NTc0M2QwMDY4ZTU0NG=
ZjMDJiYzU1NDRkNThmNzcwYjdkZDc1MjAyY2FlNGEwNWQ0Y2NkMzRhMDUzZWI4OTU0NjdjOTcwY=
2RlN2YyNzAxYjIwODQ0YWVmNjc4ZDliZDc4MjljMWYyNzM0MDY0Yw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNGU0NGQxZGQ4ZWZkNzcxOGMyMzhkNj=
k4NjU4YzBlMmU5M2YyZTY1MThhM2U5M2Y5ZmY4MGE1NTA3OWE4ZjY3NDhjMmQxYjcyZDY2NDE2M=
WM0YTAzNTRmNGU2YmRlOTM4Zjc2N2QxMWFjN2Y1MWIwZDk1ZTk5MzZhMDQ2NmM5YjQwODliMzk5=
YzliMDZmYzNiZjE4ZTIxNjJlM2RjY2EzMjQ5ZTI2ZWEyYTgxNzIxZDRjN2ZhY2NhZGEzYzRmYTF=
iNTk3MDA4YzFjMTBhYjQxZDQ4YThmN2M4YjY1ZWZmY2M2NDhlOGY5YTZkMmJlY2UwNDYzYmQxMz=
hhMjhhNGEyZTAwY2Y4Yjc1ZTM1YjU2MmU1YjMzNzhiYWU2Yjc1YjA1YjE4MjA0YWQzODlhMTI0M=
zNkYzk3ZmZmZThlMmNjYWEzZWYxY2U4ODE0YjMxNGU4NDc5ZWIyNzRjODRmYjM1OTQ0ZWFiNzlh=
NzZiNmE3Njg4M2FhOGQwZDM1" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNzZhZDQzNzJkMjYyYTVkMjg5YWE3Yz=
cwZjYzOTM0ZGIyZTdhMWRmM2FmNzI3NmVjNjcwZDE0YThiOWVmODI5MzM5ZmNkM2NkMmNmNDQxM=
jZlZTRkZDRkNGQ4NjBiNGZjNjI5ZWVkNTMwOTJkZjAxZmYwOWZlMDZlOGM3MTRlOTgwMWIyNjJi=
ODQ3YTliOGNjOTFhYzMyODFkNDZjZWY1NWMyNmQ1ZjhkM2NhMjRjMWI3Njk1NDA2ZGQ3YTc1MjI=
zNmRkZTE5NjQwYzJhMTBhZjJkMjYxYjc0NmVlOWIxYTNjNGVmZWJhMzdjNDVmMTFmMzlkODliOG=
ZiODBjNjEyYjEyNTkwOGQxZTc5ZTZiODQ1YzUzNjM3NWNmOGI0ZWRhZGUxMmM2MTQxMGYzZTFkM=
DQzMWU4MzUxZDBhNWI3NDE3OGE3NGI3M2U0MTU4YTAzNGUzZTUyYWQxMTEyMTg5NTZlNGExZjI2=
MGU4MzBkN2Y5NmFlNmUzYjVm" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGU3YjA2M2NhYzk0=
N2UzZDc3ZDE0ODIzNDM3YWEyODAzYWE4ZDY5ZDA4YTkzNGI0YTQzYWJmYjYwZTUxMGQ5ODY0N2M=
yYjFjZDZlZDMyM2YzYTBmNzEzYzVjOGU3YmU0M2EwMzBiZGEyY2Y4MDUwMmVjZDI3ZDY3ZGRjYz=
lkZWEzZjczNGExZGZkYTA2YzZjZGFjOGJiNjg2YzBjYTY0YmRjNmJhMjFlMTg4MDFkNmFiZmJhY=
jg3MDUwZGMzNjBmNzUzOTZhMzIyNTA4MDM2YmFhYTJlMzcyOTJhMjBlMDYxYjdkYzYyOGJhOTc5=
OTk5ODk2NTczOTk0YTdmNGQzOTJjODM3MzBmOTRhMThlYTM3MDlkMDA3MWFkNTJhNGQ5NDBiNmI=
0YTRiZTUzYjc0ZWNkODIwYzFhMjhkNzkzZmM5OGM0ZjgwNDVhZTVkMmNjNGQ4ZTQ3MTEyMTQ4YW=
UxYTRkNGM0Njk0ODFkZWEyZWFkYTUzNWIyODQ0NzNkMg=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNjE1MWZjYTM2NDU4=
OTFiNzg4YjY4M2JkMDE0NjhkYTU1MTkwMTIwNWRjMTRkOTE5ZjBjODkxYjgzN2U0M2JjZDU5Njd=
jYWI1NGMxZGZkNzEzMDk5MWI5ODAwMGI1Y2RkY2E2NjI4MzMyNWQ0ZmM1ZGM1NzNhN2Y4NDM4Y2=
E5YWNhMDcwZjBjOWE3NDhhNWFjMGM1MGM5ZDUyMzYzNGNjM2FjNjg2MGNlNWJmZjY4YjRiN2IzO=
GZhMzE1NWNhMjg2YmMyYjE4OWVhYmRmZTk3MzQwOTFmZDc5NjM2Yjg0MTAwOTE0OThhYTc4N2Jj=
NjM0MTMyNzY3YTFlMzYwMzAwMjEwNDRhNmFkYTQ5NzA1N2I2ZWMwM2M0MGQ3MTkxOGY1N2Q5YzJ=
hZWQyOTEzMjk5Nzg0NjI2ZTE0NTFkNGJiNmVlN2FlMzNhMWIzNWU3NTNjYjIwMzFmZTJkNmE0Nj=
MzY2JmYTg5YjM0NzBlNDI2NTAzZGRhMWFhNjc1Y2JkMw=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNWZkMzhhZGRkZGMy=
ZWYxODUzMWU3ZTQwNWU5OTA5ZDhjYWM1ZGFmOWUwODI1ODljMmM3ZGNhZjJiNzg1YWE0YTA4YjE=
5YTBmNmY5ZWJjMWUxMTU3MmRjMjJiMTY0NzRiMWMzNTQ5ODhkOWFhM2E3ODJiM2YxZWRiZjI1ZW=
MwZmUzZmYzZDlhZGJmOWM3MDIwNzZhMzIyYzViNzRlOWVhNDg1YjdjNDkzNjIyZGFjMGQyODI3N=
mZlNGFiM2I3MzQyNDVkZDFkYWIwOTE1NTY3ODQ4MTljZmExZWM4ZDI0ZGMzOWI5MDZhZGM5MWY1=
NDE0NDAyMjc4ZWEzYzIyODJjOTJlYjA2YjUxNDllNGQ1MzM2YTc5OTlkMWRkZDJhYTYwZTAyYzh=
jOTFiYzc3YWFjMTJkZWRlMjI0NWEwYmM2ZWQ5ZDU4NTFlNTk5YmFlYzFiNDk3MTI4YTFmZDljNT=
g0NjMyZTMzMDdkN2Y3MzhkNTI5MjY0MjYyMjg2ZmRlYg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNzljYWU3OWUzZTk1=
MzExYWU4ZGM1OWMzMGQ2YzBlMTE4OWM4NDdjNzBjNjU0MGZiMDgyMDg1N2YzN2U4YjU0ODI3YzZ=
iZGUwZDhlZWUxMTU0OWVhYjUxYzljMzA4YWQ1YzhkYmFhODc4MTBkYTI0N2UxY2RlMzExNWUwOT=
IxZjVkNGZhMGM4ZDM4MjgxMjQ3MjI3NzkzMjIwM2U5MzYyODFkOWJjMmRmNDMwYTg2ZWVkNTU0M=
mY1OTIyMGZjNTY4MTczODZjYmEzMWNlZGZlYWY3MWE5NWUwMzI0ODYxZTI4OGM5ZTQ1MjU5MTA2=
MmI4ZWJkZGRhODgwMTBhYzBiYTUxMWQ1NDRmMWQ2NDg4ODZjYzliYjlhMDJkOTM2ZTNjMmE1OTZ=
lYTBiMTA3NTlkZmFhMGVhNzFjZjQwYjE4MmVhMmE3OTVhMzNmMTYyOTI2OGUzODU4M2I1YTI3Mz=
A1YTNmMGNhNmI0MjJhMTljMGQyYzdkMTNlNDAyZTMxNw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMzI5ZTNkYjlhYzc5Zj=
M4ZGI1NTU2ZDYwZWYyZjg2ZGZlN2NlYTY1NTMwNGY1YTI1MjczZTI2OTMzZjdkZTYzMDUyM2IwY=
mZhZGM5MmViNWZmYTI0ZWE1M2ZhMGVjMzk2NDU2OWJkMzJiNDQ3NmViZjM2ODA2NzhhMWM5M2I1=
N2I5MzRiNDEwNmRhM2Y5NTBlMWVhYzk0NGIxMzZlMTlhZjUyZTNkMWVmOGI2YjRkMzRhYTI1ZTI=
1M2MzMTk0ODliZTA2NTc0YTdhYmUxMmFlYjcyNThjYzYzZjQzODJiN2FjNmEyMDcwMjIxOTE4OG=
ZjZWMxMGVhNzZiZWQ0NDE0ZDIxMmM3NzAxM2NlODQyNjk3OTA1MjRhMDY0Njk3YTg0ODVlODkyM=
2JhYWZiNjI0ZDIxYzBjYzA1ODY2NTgwYzVkMjZkNDkwNWI1N2Q0NDZiNzE0ZTA2OTFiNTlkYWQ5=
MzU4N2UwMWM3MDIwNWUzOGZiOWJiMDI3ODlmNjA2MQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMmM0Y2VhMjkwY2Nm=
OTViYjU0OWZiNDFjMTBhMzFlOTNjNGY5NTY3NzZiYzY5OWIxYWY3ZWIzMTljMzNlZjhkYzJjYmV=
iMjM2NDFmMzBiOTJhOWEwN2Q5ZTM2OTJjNzZkYWRmZGQ5YmMwNDQ0ODAzZDk0MjZmNTAyNGQwOT=
EzZjllMWM4NTQ5ZmZhYzc4OTg2OTViNWRlOGZjNzg4NGJhNmE5NDU1MTMzZDc3ZDg1NDZkNTEyN=
jYxODA2MTdkZTQ0MTI5MzVmYTRjNjcwYTFkZDA2ODZkNWUyNDg3ZjNhOGE5ZGQ5MDc1NWU5MTU4=
OTlmMDMxM2Y1N2RmZTQ0Nzg=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DZjMwNDQxZGRhZjQ1YTFmMzQ5YjE0MDFmZmRlM=
GQzMmI2MjY2OTZlNGE1MTY4MDAyNWIyNmVlNjAzZmIzYjMxZmM3YTcyNTQ1ZjZlZmU0NTNmYjVk=
ZjgyOGIzNTlkZjg2OGEyOWYwMzYzOTk1MWEwMTgzZTc4OGE5NTI0NGU1MDIwODY4OGQwODMzYWN=
iZDMxMzFmYTNkMGIyZDYzM2M2OWNkZDZkODM5ZGQxZDUxM2E1YzI2NTYyNWMxZjQ5MDAwNTI2NG=
ZkOTM4ZDg0OThmNTFjNzgyODMyMWQzYzJhYTBhMDAyZWRlNThmZWI1MDBiNjJkNWMxYjA4ZGI2O=
WI3NmZhMjYxYjgxY2ZiZmMzYzhiNDM1NGJmOWY1MTkxMmM1NjE1MTJmMTAxODkzY2NiNzk5NGY5=
OTQyNTA1ODI3OTJiZDJiM2UwMjBiOWNmOWMzOWRjMWU3NmMwZTJkZjcxNjFmZmI0ZDIyNDk5ZWM=
yOTA1NzM1ZTIzMDNkOGY3ZWZhMGY0ODdmYmNhZGRmZWY4YTA0ZTc5MTc3MWM2OWVhYjk3YmUwZD=
VlNWU5NmNjMjRmZjVhNjIyOTc=3D" style=3D"font-size:12px;line-height:134%;font=
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
