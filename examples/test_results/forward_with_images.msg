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
From: Expedia.com <mail@eg.expedia.com>
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
<https://click.eg.expedia.com/?qs=3D4262744522a25ac756ef08dbab55f8b55e42972=
7258a4d20dee809a81a589e287e6997077b5dee5ef8865f352e7ebf1c8991d6c452755257dc=
29fa89cf3f09ac>

* The Travel Edit
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7aca55aaf1d61de7559f2de2=
31504005c2bbf1f01d2d21cad016fdb5f3fe43b7233a5b931a90cf03e3546bf1427732d1512=
482705cb7afed9>*

[image: Plan your fall getaway and save with Member Prices.]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7faf79f758baacbc25cc9d4a=
41fefb8e2a57ad321ce3b17408f7df41714ab7939c48dcf555dedad766b01677f60ffc0ec6d=
37331d6ab98ddb>

[image: Plan your fall getaway and save with Member Prices.]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7faf79f758baacbc25cc9d4a=
41fefb8e2a57ad321ce3b17408f7df41714ab7939c48dcf555dedad766b01677f60ffc0ec6d=
37331d6ab98ddb>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7a1e3f3dc2f076567fbcc5d3=
ff37a2704ad1c6872e5128a5d0794f14c277eb97baa040c6ff2cb0005b4477e86c9c9f682d6=
6d9915182ec4b5>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7aaf2602dcc7abff356dcb05=
603641ebf6e80d4b64789046229eee1b3fa3fd4766617dc710384f0d8a8fbae0072d7bd17c2=
fe8a497ce103c3>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac7aaf2602dcc7abff356dcb05=
603641ebf6e80d4b64789046229eee1b3fa3fd4766617dc710384f0d8a8fbae0072d7bd17c2=
fe8a497ce103c3>

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
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac70c33430abf012aadc8269=
2f88d30431aa043362549d37309954720d11cd4d1bcf90c732854f5312cb2386db86097b73b=
03de19b6e2c7537a>


Download our FREE mobile app
[image: App Store]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac70082c2833b57c2bcc1fbafd=
92ed13d7cc0931363b56184ce7fad8d587b1139c55de0289172d7dee7080ac2ef9dbcb42e68=
09544787ecc74c>
  [image: Google Play]
<https://click.eg.expedia.com/?qs=3D4262744522a25ac77de39585b7fa0b618e8bb0e=
d38856b85733883dc20f7eaf54778f1812fada0f43a9b6bd9eeaa72f6ae5b2238955362877e=
15260a5d530647>

Unsubscribe from The Travel Edit
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac79e7da72c03b8d38e1fef2=
d6afe384767591d409fb338cadf4e54e3f162ab5d59173d41712717a5e264bb7fcf8286f202=
b6398c2621d8a072>
   Manage Preferences
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac7248e87469c051de840f34=
8a62b04505ba731bcb0d37e9d8ece1aef209f1ed7df93f4a40fdb22a43b51a605aad4983ceb=
320de7fc8451a8d0>
   Privacy Statement
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac7b10747c422a9e4fc79550=
d6dfd90e5f63ccdbcddbd59a455d30dff1eba6d1c5aeaeb3e4abf139939aa9e8b62ad94b0e6=
3e0e210e09ddcccd>
   About Us
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac70c3cb3010d89a50193603=
31166c5cf6cc4973a013eb4eb8dae617a255ef378b9bd2fa3ad480fe245361612993b4e79f1=
29adc9e6d2c42c00>
   Customer Service
<https://click.eg.expedia.com/u/?qs=3D4262744522a25ac75b1f0fe44b5bcda537b76=
d74534d05ddc3a61f50e0f6e9baf3a08a01768e1f7178515db45bfc702025fad1fd77d9887a=
b4cc1d98e2fe215c>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<https://www.google.com/maps/search/1111+Expedia+Group+Way+W.,+Seattle+WA+9=
8119?entry=3Dgmail&source=3Dg>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<https://view.eg.expedia.com/?qs=3Dc44a114bafaa630043eda34584fbf4e1d1706651=
16637e0d3752fdae39027b9801e08b9469d60891932a4adc432f95910888739e9c95a9db638=
57879e69ff1193778c5d6f0dd8f6a1cea6e26ed2ceb7d>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DMTZkZTFjODAzZTJlMGJm=
MWI2N2UxZTJhYzM1MDY2N2Y4OWU0ZDc3ZTYwMTIxMGI4OTRhYTg5MDVmYzY5OTZhYjQ0NzQxMzJ=
lOWUyN2U2MzNmMTM2YjEzOTVlNjgzMWQ1ZjUwZDRjZjlkZjczZTc4ZjIxMTZmMDE5ZmJhOTFhZT=
JhOWEwMDAyMTE5OTczNzg2NWM5Y2QzZmI2MGRjYTZiZTc3OTM2ZGM4M2E2YmRjOTk4ZjhjMTVlY=
jJiODcyOTMxYmJhMjE1YmM5Y2M0YjdmMTNkMzhjOGEyOTM3YmEzOTJhZGViNjczNGJlY2MyZTVj=
ZWVjMDUwOWJhOTYwZWJkZjM2ZmVmOGVmZDU1NWZkYjA5OTc3NzNmNWYwNzc3ODE5MGIxZmMxZDh=
hYjE3NzM3MzYyOTA0Y2NmM2I1NDg5YzEzNjY1ODY5MDY5MmI1Njg2MzFiZDA2NmI4NjcxNGE3Mz=
FkOGMwMGU2MDFhOTg1NDRjNmViYzhlZmY0" target=3D"_blank">
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
?u=3DNjQ5OWE3MjY0OTFiN2I5MWViYTEyMGNiYmRhNjcxZDU3Mzk0YjAyMjFlOTM4YjBmNzZkND=
YyOGM4YzUwNmRiNjA3YTk3YmI4NmI3MmYyZDM3OWJkZDJhN2U2YTNjODI1ZGE3OWY0ODg5ZjIzY=
TFmY2YwZGQ5NjVhZmRhY2M4YmVkNGExNDc4YjEyOTM4ZGRjYjZkZWFlYjY2NzcwYTg4YTAxZDRk=
YzZmNzgxYmZlODAyMDExNTg4ZGFiNmI2OWRkYzVlMjg0MzFhYTlmZTEyZGFjNmQzMWM2OWQ1OTk=
0ZGYyNDcxMGI0ZGQ4MDBmZTRhMTNlNzZjODY5NmQ1NjA2ZjE0YzdkNWFlMWQ5ODFjYjA1MzY5Zm=
NjMGEyZTg3MzBlNGNjZGRmYjE2OWI1YzhlNzVhOGFmMTc2OTAyZjhlMGI4NjNkMjVmYWMxOTkwY=
zUyNGUyNDhjZjQwOTlmZDU1MjkxYzI3ZmUzYjAzZmY0ZGQ0NzUyNDAzOThm" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMzExNTk1Z=
mUyOTgxZGQwMDAwOWJlMGE2OGE1YWZhNDAxMDg1MmUxMjIzODM3ZDAzYTdkMTMwMWYwOTc5M2Vm=
ODRmNzI0ZGYyZjBmZTVmNGY3ZTA0OTlhODc1M2Y5YjU1MGU2ZGY3MDg1M2Q0YzA1ZjI4ZWY4ZDU=
yYzBkZTIxYzUzYTEwN2Y4MjA3YzAxY2NhYzY0NTJkODZhNTY1MjFhODA1NmQ0ODY5NjQwZWJhMG=
Q0OTUxN2U0ZTNmNjZlYWQ0ZTg3OWIwNTMzZmU4Y2IxYjgwYzY0NjhiYmIwMzcwMTZlZTgxNTM5O=
GU4NmEzYThhNmI0NmZjZDNmNzkzNzhkOWE0ZDMwYTZmMjRlOTY0MmE1MGE1MmEyZGViYTJjNWZm=
OGY3ZWJiOGM1N2ZlZGYwZmJiNTUxOGVlOTkxNzIwOWM0ZTdlNTI4NjNhYTI3ZTNlYTdjYjkxYTU=
xNjkyNjE1OGNjMzNkN2JiMzkxNzRjZGY1NTJmMzJlODY4" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DOTM4OTF=
lZmI4Nzk2ZmVhMmFjYTc5YjZjYzEyMWJkZTJjMzc1YmVjYWFlOTBlN2NiODZhODg3MzYwZDhiZD=
Y4ZGE0NDg5OWZlZjg0NmY1YWZlZDQ2OGU5Zjk0NDM1MTQ4NGRmOGJlYmE2Y2ZhZGZlZmY0M2VjM=
DYyYTc5OGZhYjM5OThlMjZkMDRlMjQwYWIxMzE1MmQyNjU0YTA4N2ZiZTAwMGVjYmFmOWEwYjE3=
Y2RkMGE4OGU0MTAyMjRlMzg2YzcyZmVhMzlmZTQxMjAzZTkyMWYwMmZjNmJjMDJjYmUyMmY2NmI=
zM2E1NmQwNGYzYjZlZWEwZGI0M2IxYmZlNjY2NGFjNjhlNjlkMzE0YmM4N2RmZTBlYzkzNTY0YW=
EzMGZhNTRhZDc2NDU4ZDA4NTk4NjhhNWYyNmQ0YjFmNjJiZmY4YmY1MWRjOTRhY2E1NDFlMDEwO=
GQ5MDM5ZDQxOGRkMmVhOTAyYjM0MDRkZmJiYTk2ZDc3MWNi" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOGI2N2EyZDEz=
ZTMyYmQyZDM4NzU5OWRhZThlMjlhYmEyZTBkYTc0YWEyZTUzZmUzZmJmNjJmOWJlYjdjYzVjNTc=
2OTA4OGE2M2Y2NTIyNjIxMjcxZjc4NWZmODgxNWY0NDc3MWYzYmNlYjMwZDRiNmE1YjVhMzkxYj=
I3ZTU4NzJiNGRlZmRlYTNmMjU3MGJhN2UzZDNiNDQxZGZjZWI4ZDQ5Y2E0ZjQ4MmQxNDkzOWI3M=
jNkYmE2MzYyOGFmN2I3OGE5ZmRjZDYwNDZmZTNiODQ2MjcyNjQzYjIzODIzNWExNjgxYzE4YjAx=
MDU4MWYxOTQ3YmEwZTQ5NTE1ODRhODQ3NDUyNDU1MmU2ZDRjYzNmNDkyMjcxZDM1OTJiYjVhZWR=
hOTFjYWQ3YjI3ZWUxYTYyY2Y3NmRkYzA4NjgyZDFmN2QyMjU1MTE3YWE2MmUzYzc5MmQ3NTE4Mz=
dkYWI4ZThkOTMxYzdiNjQwNmUyZThiYzAwYjdmOTc2" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMjk2NDE2NzkyNjIzO=
DgzOGJiYmZiYmIwOWE4MWRiYmE3ODBjYWI0ODUzYjdkYjA0N2RiMWNmMzQzNjBmNzQzM2FhZDA3=
YjVjNjkwMzU5ZDUyYzlmNmQ2MjY4MjNkYTZmODI5MDQ5NGI1OTIwOGMwYmI2NDFkOTA5MGM3NDU=
wZWVjNzExNTY1YjQ4ZDZkMmZjZjhiMDA4NjIxMDI0YjFkMGQ3YWZjMTU5NWFhMmMwMTFhMWVlM2=
JiYTYyMDQzNWJlZWM2YWFmNGIxZjExYTBiMDlkZTFmMDRmZGM1MTc4ZjdhNzQ4MjNmODdkY2FlN=
DJkMDcyZDJjYzU1ZTZmNmJiNjdkMzJmNTg5MDU1NzlkMTY5Y2MzMjg5NjJlYTViNmQ1ZmE3NTRh=
ZjQ5MmM4M2FjZjhhNTBlZTEwODQzZWViYWNkOWU1OTM0MWZkZjBiZDllMGJmMTAyNmNkMDU5ODY=
zYzk0OGIyNGQ1YjE2MmZjMTZkZTcwM2FjNmVj" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DZjkzN2I1ZGVhY=
jI4ZThjNDRiZTEwNzhiMTc5MTRkZmFkNTUxMjM1NzkxNzA4Yjc1NDE3NDkzNWMwMzQ3MDlmZDBj=
MmE1YzhkZmZmN2VjNDY4MWFmYWFlYjM1MjQxYTcyYTJiNWE3ZDQ5OWI3Yzc5NGM1ZjM4NjNhMGJ=
mNDc4MDQxYTM2YzZjMmU3MDNlZjU5ZGVkZTQyOWRmZTNiNGU2MjliZWQ3MzViY2UyYjczOTY4Yj=
BjMmM1ZjU4YmQxOTUyMTY1MTdiNzc0ZTlkNGE3YjBlZTBlYWNlMDEyNDBjMDMzZDQ5NWVhZWI2N=
mE3ODU5NDZhM2ViN2ZhZGQ1ZGRlNWQ4NWYwOGRkODJkMjNmMGMwNTY5N2RlYWU0ZDYxOTAyMjUx=
OWIwYzY4ZDY5MGVmNjkxMWY1ZmM0NTY5OTIyNDIwOTNjMzliN2EzNmRmN2UyZTllMzAxM2VhNWE=
2NTBmNGQ4NzAwYWY5YWQ2ZjYyNGUwZGIxZDYwZTA3" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DOTEyNzV=
kMTVjMWU4YzJlZTY2ZTgzNTI1M2U0ZWI3NjRjNDFlYWE5MjNmMmQ4MTJiOGI3NWNiYWRmMzQ3OD=
A0NjFhZDNiM2YxYjdkMWYyNjI3ZTg4Y2I2ZDFhMjMzN2RmYjgzNjhlYzBkYzQ2ZjQ4ZWUyNGExN=
mI0Y2MyODYwY2FkMjRlZTI0Y2M3ZGQzMTM3NDMxZWI4OGE5MzQzM2QzYTgwNzI4NDU3NzRkODUw=
Y2FjZDQxZGFlNzJiMTY2OGQ4MTdiNWMyZTk0ZWYxNGRjYzdkZDZmZTU3YmI3MDI0NTUxOWM5ZDd=
iZTk5YWRhN2M4ZWE3M2NlOGFkYmJhMWFmYjcwYjk1MWM4MmRlZTYyNDA1NWFkNzFkMDQ2NWRkMz=
YwMDM5Y2FiM2U3MjhmNmI0MDExYTA5MWQ4ZjJlZTdmZjZhNzI5MDRlYmY5YjMyYzRkN2M0NGJlN=
Tc0NThlMDJiNjJmYTQ0MDY2NjM1MzFhZWYxODZiNGFhMzE2Njc4Yw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNGU4MGE4NDQzMmZjYzI4NWEwMDU4YT=
g0YzdhNjJjYTA0NjViMWQ1YzA4MTJiYjY3MjU3NGE2Y2JmZjU5ZjJjODU2NGUyNmVhMDUwZGM5O=
DVlOWI0OGFjYzgwMzk5MDJhNGU4ZGNhYmNlMTYwODdmMDZmNzBhNmRkYzQ3YjM0ZmE3ZDY1Yzhh=
MWQxZTViY2UyOGJjN2I2ZTU1Nzc0N2VhYTBiZjRjZmY5NDcxNTU2ZGZhZTc0Y2VjZGZhNTY1ZDY=
4ZDllNjZiYTRhYWJkZDc2NDZkNmU3NDhjNWY3OTA3ZDc2NjNkYmZkNWY5NWMyOTc3NTJhMmNhNT=
lmMmUzNjZlYjA2ZjVkMGViYzE0OWIzZGJlMDM5ZjZiMTQyODFiMjJkM2YzNGY2ZDAxNjQzMjBhZ=
jJkNzhmYTA2ZjQ0NmRlOWVhMDNlMWE2MWE0YjJjZjA2NDNkMTE3NjJhYzAxNDI5ZjY0YWFlOGU3=
OTZhNDM1Y2IwODE3OWI3ZTRm" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZmU5ZTBkMTM2OWI0YTNlMTI3MWJhY2=
YwMWUzY2JhNmY0ZmJhYTE0MzA5YjJmZDEyYWMzODUxOGFlOGJjZDc5Mzg4NDkzNTRhZjRmNTRiM=
DMwNDlmNjEzMjVkMTM3ODgwMzE3ZWY1ZDNkMDE5Y2NkZWEyYTM4MzJiYzY1NTlmMDc2YjZiYzhl=
NmU2MjE0N2YwMDdlNDE5OGRmMjdmMTBmMGI2ZDIzODJkZGFlOWExZTBiOWY3OTU2NzFlYjhjYjU=
0NmU2NzU5NmE2YjY3NGY0MGJhNDU4NDk0OTJjNGJkNWM1OGQyZmVmMTYxY2M5MTZmOTNlZDRiYz=
FlYzk2OGQ2YmRiZDA4ZmQxOGE1ZTY2MmVkMmRlOTViYjVjYzllMjQyZTU0ZGYwZDk5YjRjYjdiM=
TIyNmI0MDUxMDg2YTYwNGI2YmJmODA3NjhmMWVjOTgxN2ZkNWQ5MTY2ZGZjYjM0MzJmNWQ0OGM0=
Mzg3M2Y1ZTYzYzI2ZGM0MTJl" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYWQ3MDliMGY1Mjk3=
ZDJmMTA2ZjVjOTlhYTFjOTdlZTIwNjk1MzVhOWM3YTlmNjBlYzYyMDA4NDRmZDhlZGJmYTYzZmQ=
zMzQwODNjYjM2MWZmNjM3NDJkNDRlOTk1YjZjZGFiYmFmZDUxNzQ0NWY4YjAzZWU4ZjM4MzYyMm=
U2YmM3NzJmMmE2NThiYjNkNGM0NDZkODQ1YWZiYWUzOGMxMjZiNjA3MTZhNjBlMmMzMGQ2MzE2N=
mQxZjIxMzRjMWNjZGEwYzg2OGE1MTlkNDVmMzFmOGNkY2FjNjQzN2U1MzIxODU5NGE3ZTQ2N2I4=
MWUwZWEwYTQ2ZGQ4OTE4NGZhZTJiZDRjMjI4YzBiMTM1NTY0ZGI4MjY1N2JjYWI0OTdlZTQwMDU=
wODI5NWNlNTQxZDdhODc0MjViNjE3Nzk5ZWJiNjFjMWU5NDA5YWY5ODQwYTY3OGI5MmQ2NzBlZD=
NmMmJhZTQ1NzViOTg4YmE5NjBjNjFiOGZkODUxZjBiNA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNzY1MjI2NzNmOTg4=
YWFiNzliZGI2NDc3OTQwMTIyZTYyNmFhMGU2N2RhMmEwOWMzYTJmOTBkMGYzYmE0OTA0MTNkNjZ=
iYjVlZjI2ZDRlMjQ5MGIxMDIyMzA1OGNhZmJmMjdiYTEzZWIwYjQ1YTg3NDQwNzg2OWI3MjIxYj=
A1YjQyYTM2YWE4YTcxYjQ5Mzc4MTQwMjdiYTg5YWE5ZWZiYjZkMDVkYmE4ZjkwMTQ0OGRkMDE4M=
zhhOTFhODM0OWJiMzhmZWRkYTlkNmM3OTBiNzQ1NDNjNjY2NjAxNzVkMWI2N2QxZjI4NmM1YWI4=
OGU5NWU4ZjQ3ZmY4M2JkYWZkMjA0ZGZhOTAxNTI3NjliYTA3NTIwOTlkZTAzMDVkYmQ4NmY0MjF=
jY2U5NzU1YzNmYmQzYzE0ZmU4YTBhMjE3OTMwMmFhMmIwYWZkY2FlNWQ5ZWU0NmMzODZlOTAzMj=
ExNjY5MDc0NTUyYTVhYmRjZGRkZDRiYjI2NDE1M2I1ZQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmEyOWE3NmUwY2U1=
YTlmMGJiYzdlNjA0NDU5OGJkMTJiYzMyYzNjYjE4NGI3YmZjYmU2YzBiYjBhZjI2ZGY4NDhiYjM=
3MGM5MTcxODUxMGMwZGQ2Njc3OThhNTlkOGEyYmFiYjI1ODg2YmUzMjI0ZGEyOTlhNTQzZmIxNG=
EwNTQyMjczZmU2ZjIxZDg2MzU3OGQwZjM4MDA1Yjg3MTdmYmNmODkwYTNkMmEzYzljYThmMjFhO=
GUyNzA1M2U5ZWZiNzg4ZTQ2ZWUwMDJiODdhZTdiZWIxYjUyNjc2YTAxNjQ2NWIzNDQ2Mzc3Mzhj=
YjRhYjYzYjg2ZGRlNWJiOTExNjg3MDM5NDA3N2U1ODQ2Y2M3YzEzNzM2NTM1NDI2MWFmNzE0MGR=
kMTcyMWFhYjZkMzcxMzJlMzVmYTQzOGFiMWVhZjkxM2M0ZDNhYjg4ZjU4ZmJjMTk5YTBkMDQyOW=
UwZDI2YjdmNmI1OWJlMmE0NWI1MTg4NzU5NjIzMzNhMQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZTg2OTBjN2Y3YzM1=
NjRiNDllYzNkMGIwNDAxYzY5NzVhZWU0YzllY2JlNmZlYjA1OGYzYzkyMTRjZWY0YmI5OWYzOWY=
wYjM2Nzk0MTBlYzRkOGY2M2Y4OGFlZjgxNGNlZDhmOTc0NTc5MzU5OTExYjEwZjcxNjYwMDI1ND=
U3ZDRhM2U0YWEwZDJiMzQyYTZhOTkyNTQ1OWFkZDQzNDY0MWUyZTZhMjRmMDAxOGUyNDhmNGYzZ=
WMwODhiMDA5NzJiNTYzMWYxYmMyNWMyNWIwMTVmZjJlMmI3OWZhMDRmMDk5M2UyMDFiNzcwNWIw=
MDdhYzJkOGU2MWRmNzExZTc4NjU1MmQzZWI3YzhhNjA5MGI1NzcwNDQ4ZjMzOWRkM2VmMzcxZmV=
kOTIxNTU5YjM4NTM3MTcxZDk3YjNmMDJjZWE5MDk5NDJiMmZhOGM1YzE4NDJhYzgxNTMzODQ5ZW=
E2ZjUzOWUyZmI0OTNlZjI5OTU0NDMwNTE5NDBmY2E2OQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGE5MWU4YWY0NDY5YT=
MyZGViOWQyMzBkNzc4ZGU1NzA3N2FhZTMyYTNlNWVlMTcwZDJmNDIwOTllODcwODQzMzE1MDE0N=
TVjYTU1ZTRlNzU1NjhlNDY1MGZmMjE0MTkwNGVmNGNiZGQ4ZDY4NDlhYzBlMjUyM2E0OTczYjdk=
YmUyZmUwNDQzYjcyMjNiMGE5Mjg0MzEyYzNlNWRiN2IzZjg1NzBiMjdkNDVhOTBlM2U4MWE2Y2Q=
yYTg2NTI0NjU2ZjEwMDJiYTU3NGE4OTViNjViYmUyODdlMTY3YWE0MzYzYzUwZGU5NGU0ZDRkYm=
I1MzYzZTYxM2I1YTEzMWI5ZDc0NDg2ZTNhNDE2ZWEwMzViMDg2MmM2M2Q5ZGJjZTUxNGY3YzJkO=
GYwNmQ3ZDliN2JiMjYxZDc0MGZiMmJkMGFmYjIzYWZlZWU0OGEyYmQ0ODdmMzM0ZGI5NTQ0ZDA3=
MmRiODg3YTkzN2E4NzI4OGM0ZWY1ZDgyMWY1YzllZQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNDIwOTg0M2MzM2Rk=
ZWZmODhiOWEwYzRkNjQ1NWIxZGM0MzE2Mjc4ZDM0OWM5Zjk5MjZiNmI0ODFlYWExYjQ3Zjg1YTc=
yYWI5ZGJiZDZjYTFiZjdhMDU5NDAyZTBiMWI5NjBhOTdlMjhlMGI3MmM0ZGZiMmY3YmU0NWRiYm=
FhYThlODZiZDhmNjk0MGEyZTRmMzk3MmY1YmEyMzJmMjQ3YmJjMzQ0ZjliZDBiYjkyYzM3MmM4O=
TlmZjJjMTI0ODI0ZTQ2Y2VmNDI2ZjM1MTkwMWE1ZDlmZDMzZDIyZDhiMjczYjQ3MmQxYjhlMGI0=
NDA0YzliOGY4OWM2MWRhNWQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DMTFlMmI3OGU3ZGI3ZTMyM2UyOTlhNDI0N2I5M=
jY4ZGJlYjA4M2UzYTUzNTRhNzdjZWM2YTI0MTM2MGQzYzczNDc0ZTkyNTkyY2Y3ZDRhMDViNzA2=
MWVkMGIyMTA1NjkyNDk3M2Y3ODNiZTNhMTIzYWM1M2UxYWYxN2U5YjRkZmJhZTdjZjI1ZGJjNDc=
5NjE3NDNmNzNmNjc5MGI0YWMzNDkzMzM3ZjcxMzRkYzQ1MTNiNzI4NTZiZGJmNmFkZmZmOTZhNz=
ZkMmEzZmUwZTc2NzM5NTI1MWM3MjRkZThiMzgwZTdhNGIzYWQwYWI3NDhmNzE1Y2JmNjUxMmIxM=
zg3YWZkYTlhYmE0ZGIyODQ4YzFjM2UyOGUxMjc5M2UyNmE0Y2I4OWQxOWExY2JmYzYzZWJkNGY5=
MGNjMWExYThlMGRmNWQ0MmU2ZDQ4YTc3ODg3MDMyZmM5NWYyN2I0ZjRhOWMwYjEyMDk5NGM2MmM=
3YjNiOWM4NjIwMDI3MWMwYzY3OWIwNDQ1NGJlZWQ2ZTdjNDE0NDI2YjBkNGY5MmEwZjljNjk4Mj=
djNzkzNDNiYmIwNGE4NWQ4YjM=3D" style=3D"font-size:12px;line-height:134%;font=
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
