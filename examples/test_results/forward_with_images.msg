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
From: localhost:1333?u=3DZDE1MjNjMTliNDRhNDM3YmZjODkwZjJiNGIzZGM4Yjg3ZjYyZT=
lmYzJmMjEzYTA4MWNjNGY0OTE3NzQxZjEzOGEwNWU4YmViMzI2ZThj <mail@eg.expedia.com=
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
<localhost:1333?u=3DOGJmODY2MTRjMTVlYjM3NzgzMGZkNjhiODEwYjJkNjRlMzY5ZTgyYjk=
zMDhjYWExMTk3NDdmYzVhZDIzMjNmYWViZTAyN2MxMmE5MjRmMGJlODM3Yzg0N2Y3NWI2ZjYxOT=
hjNjFlMzg2ZDNiMTUwOTdjNGU3NjZmYjAwMDUwZDU1MDg0ZjcxODgwNTA3ZTU0MmJhZDE2NTI1N=
zc5NGNhYzY0ZjYxZmFhMzE1OTAxNmMzZDBhZWQ3ZWIzZTU5NDA1MDY3YTA2NDhlOWQ2ZjA4YWY2=
NTIyMTg2NDAzZWMwNzk2MTQ2NTNkOTJkODY4ODU0YTM2YzMzMDM0N2ZmNzJjZTk1YTAwOTVkN2V=
lMDhmOGY4NmMwMDU3MTA3NmNlZWRjYzQ1OTcxZDMxZjgxNDZiMjE3YzQwMDBlOTRhODVkNjAxOT=
I3MTgzZTc1NmYyN2M5YjM2YWQwNTE3NGY0NDE5N2QyZGYzZmI1MGIwMTE1Y2NkYTk4ZTE0ODVj>

* The Travel Edit
<localhost:1333?u=3DMjQ0N2Y2OWNlMTk4ODQzOWY1OTY5ZTIxODU4MGEzMWE3ZTFiNDhlNWU=
xOTAyNDg1YzNlNWU1OTk4Y2FhOWZjZjcwZmVmNDg1YTgxNzA5ZDliN2M2MGYzYWMzN2UyNTMzN2=
ViMzU4YTIwZmI5NmMyMDExM2NmMWZkMjM0ZWRiOGRlYjcxMjY0ODY3MzAzNjVmNjg1YTAwMzkzO=
DU2YjZlNmMwYzQxYWRmOGYxMDhlYWZhYjIzMzE3ZmFlMDcxOWUzMWFmYmM0MDAzNDRjOTQxNzFi=
N2E5M2M5YzBkYmYzMjBjMGY1YTE0MGM1MTk3ZTYyOTBkMzE5Y2M0ZGE1Mjk4NGFmYWJjZjYxZDZ=
kMTAyYmRjMDk1MGE4NzE5ZjhmNzJmYzYxZWRmOWNlYjlhNDI5MWVjNjYzNzliMDVmNmI5NzhkNz=
I1NWU0ODE0ZGExZDNiOTRkMjRiMDJmYjVkN2E5YzAzNmFhMDIyMjMwOTNhMTRhNjRhYTAwNGNh>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMmIwNTA4ZTIwYTY2NDMzZDNlMmM0ZDE4NDBlMWZmOGU5Y2NhOGZiNDc=
xYTE1YWRkMDQ0YWQ3NDZhYjVkNWM1YjU5ODE3MTEwNTU0MDI5YzViMTIwYmE4ZTljZjE1ZWI1Mz=
k3NWQyM2U5ODNlZGM3YjYzNWM0OGNjYTMyM2YwZTNiOGJhOWZhOWEyMDA3NjRlMTQxYTU4MmQ4O=
GJiZjAyNzU1NTJjNzU4MWU1ZTA4NjZkMTNjN2E5ZjVjNjA1Mzc2MjBkYmQ5YWVmYzM2YTkyZTBi=
NzJjMzI3ZWM5MjZjMWZjMTdlOWZiMWFmZDkzNjk4MmRjNWRhNDcwMjA5YmM0MzdiOThmYzVhZjY=
1ZWFmNjI3YjBjODU3OGU4ZmQ3MTdhZjAxNWM5MmU0ODE0ZTlkMTE3YjhhNzY2NzExYjEwYTEzMW=
JlZjc3NTlmMDIzMTljMTVkNWE0MWZmZGY3NzBiODBkYjllMWUxMjM4YmM1NzU5NTFiZGZjNzE5>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYWFiOTlmOTdjMmRjMTFhZTM3YzA3ZTZmMGU0ZmJlODA5ZDg4ZGUzY2E=
2ZThkZjQxZjU5ZWM1YzYyZjgwNGViNDczY2Q2MWQ4MmNmZDhiZTQ3ZGZhMGUzZjVkNWU2NThiMj=
M4MTJhMGM2ZGM1MGNkYjE0NTVlMmJiYTY1ZDc3NjkwODY3ZDZhMGI2NGRiNmNkZWQ2ZTNmYjU3Z=
jFjMjJkMTI1ODc2ZmJjZWIyZmE5NDUwZmQzZDhjZWE0OTI1NjRlNzQzYjQ4YmE3Njg0YjZkODhj=
ZmI0YjlmYjZmYmYyMTBjNzVhZDFkOWQ2NTU5MWNlYzIzMmI2YzkxYjJlMmYzMWZhODE5Mjc0MDY=
5Zjk4NDQ4ZmYwMmJjYzVlMzU3MGFkMGVmNzcwOTBjMGQyOTE5YWU0OTMyMGU2NTc1OWFkYzQ1NG=
M3M2JjMGVhMTY4YWNjZTgxZGNkMDdiMjIxYjRiMDdhZjE3YTk3ZjM0YmE2YTVhODIwMmM3MmMx>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNTJkNDRlNDI1ZjU3ZjdkMWE3YWM1MWEzZmZhM2E3ODY0MzVmZWU1MzQ=
xNDEyODI2ZTNmYmNhNzY4NThlNzJjNmViN2Q4ZWMyNjY3YmU3MWVhNmUzNDM4MzViZWRmZDU5MG=
FjZDlkN2M5ZTRlM2IxNTQzYjg0ZDUxZDllYmM5NDM2YmMzZGI0Y2JlMzc3M2ZjMjI4ZDcyMmNjN=
GQyYmE0Y2YwOGEzYzg3YzE1YjQ0MjhiZmE2MjNjZTI1ZDcyZDU3ZWM1YTQ4MjA1ZDhjYjQwNmI5=
NzkxOTliNTNiMzhhMDI3Mzc4ZWY4ODBjODgwYjNiZGZhOWI3MjZiNGU1NDU4M2RhODZkMmVjNzE=
3ZmRiMGVmMTcyNzlkZmU0N2VmMmY5Y2Q5NDU0OTNjODlmNjJmZGJhNTBmNTI2NzJlYTYyODI5Yj=
MyNWZkMzJhNDUxYzVlNWJjZDM2NGJlMDI2Y2JhYzZjMTFkOTg2ZGIxODA2ZGUyMTM1ZWU0YjUz>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNTI1YjM3YWU0MzU3YzFhNTk4ODI1NWE0ZTE4YjJmM2QyNzZlODI5YTA=
5MmVmZWFlNWE4Nzg5OTNhMDE0ZjI3MmQ5MjVhZGNjZmI3NTc4YjU5OGE1MDliMGU2YmQ2NzAwMG=
UxYTFiZTMxZmZmMzg1ODQzZjViMTAwZmRkYmE2MmM5NzRjNWE0MjVmOWIyYzY1MWM0ZmYyMzkyO=
GU5ZGRhMGJkNDVkZjkwNWIzNWI2ZmZhYzIwMTRhZDIwMzNhYWJiM2RlNzliNmM3MDdhMDJmOTQ4=
M2ViYzllNmNkZTZkZTRjYjE1NjFmM2UzY2U1YjM0NjAwYjZiZGVjZjc3NTZlNzdlZDllYWFhNTQ=
xNDg0MTQ5NmI2YTM0NDQwYzk4NDI5ZjNiODhiNjA4ODcwZTNiMGMyZjk1NTU3NGY0MjI2ZDRlMj=
diNGY2NjYwM2MxZDAyYTBkYjFkOGUzNzMwZWE1ZGVlYjYzZmYxMDRhYzVlNmQ4ZDk1MzY0OGNh>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMWZiNjgyYWFiOTIwNDM4Y2Y3YTRhNGRkNTAyOGEzZTQwNjJmNzRjNzA=
5MDcxNDVjOTU3MGViNzI1MGY0MWM2MjgwMDUxYTJjZTZlN2IyOTNkMTc4NDBjY2E1NWZhNjE1OD=
NmNGRkZTcyNWQwZmIwZmY4NmRjNDc2OTJhNWVjYTJjMDUzMDJjY2RmYmI2ZDc5ZTRmY2M3N2EzY=
TI1YjI0YWU1ZDEwMzcxNzg5OWNmM2NmYzg5ZDVhNTI5MzZhYjcwZjMxYzRmN2I1ZGQxYjM1MWUy=
YTAzZWQ4ZTk5OTBmY2NjYmZlNGQzZTUzNGFkNDI4N2M5NGUxMGE1OGFhMmEzODYxYjUwZjg3OWN=
lYzM4YjhmOTcwMjAyNTA4NWI1YzE2MDNmNjY3MDFlZDJiYzcwYWQ2MjlhN2I2YmQxZDUzNDcyOT=
EzMWEzZmQxNzk2ZjY5MDQ1NWI0NzQ1ZTIzZmFiMTRlOTMxYjBkNjEzOWZhOTE1NzgzYjZjMzc2>

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
<localhost:1333?u=3DNzk2ODI0OGYyMjlmMzQ0MjFkMGJiZTNiZDkzMjRmNzU3MGI0NWRjOGE=
0NGFmNzQ0YTZlZWUwNTUzMjEzNWY1OGQzOWQ4YmMyZmUzYzc0NDhiZmM3ODc5MWVkZTFiMDBjM2=
UxMjE0N2Q1ZjE4MGE2MzE3ODNmZTFiYmRhZTA0MDllYzc0ZTA5MTM1NTM1YTQyMjFmNGFhYjgzN=
TBmODNiYzdkN2VkNzhmMTJhN2Y1MTE2NDNjNzVjODc2ZDdjZGIyNjk4YTIzNDk0ZmQ0YmRhZTVi=
YzMyOWE2ZjM4NjNlMjMyNmNiNmI1ZmEwMTRmMGZjOGI1NmZlNzY5NTYwMmY1MDBlOTc0OTA5NGI=
5MDczYjdiNmZjYjg3YzQ0ZjFkMmYzOTlkMjU2YjNmMGUyZWQ1ZjMwNmU3MzNlMmEyNGFmYWE1MG=
IxOWMwOTZjY2RlYzQyODc5NTgyNGNlZjU0NDIwMWViNDBiOThjNjhmZGUyMjJjY2U2MmM0MzAzM=
jExYg=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNDM2YzdjYWFkY2ExODUyZDVhNTE1YTM0MDgwY2Y4ZTg3OGQ4ZWIzNmQ=
zMjQxZmYyNzliMzE1NDAyZmZkYTU1MDY1ZjUyNzEyYjA0YjFkMjg5MzgxN2ZiMTk0ZDdmYjllZT=
IzOTkxMzAxOGVkOThjODQ2NGFhNTNiMTNjZjQ0ODkxMDgxNjViMzY3OGNhMjBiYzY1ZTNhMGU3N=
GMxYWUwMzkwNzA1NWZmMjBmODU5Njg3ZDY5Mzg2ZWE3ZmY4NDk5OTQ4MGFlNGMxOGY3ZDBkYTIx=
Mzk2N2IwMGMyZWIyOGQxNWU5ZjdiMmY0MjM2MGZmYmM0YWFlNzNiOTI4N2RiMzlmMTE4NTA1ZjM=
3Y2ExMDUwNTI4ODE2NzlkMGZjMDQzNzUyZDI5ODJkMDgzYjg2YmY2YmEzYzNjZjE1MTdlNzYyMm=
M4N2I3OTUxZDhjODAwY2FhYWJjMjc0NmJkYTFmNzczMWY4ZTlkNGMwZjAwNTdhMDA0M2Q0NDZk>
  [image: Google Play]
<localhost:1333?u=3DMTcyMDU5ODFiMGJkMWI5NTdkYmYzY2Q1NmNjNDgwZjY1NWU5YThiODk=
4OGI2YjY2MDIxYTY2MzJhZTQyMzRiZWQ3MjBiYzIxOTBlMmQ2ZDQxZTI3N2M2MmM0ZjNlMTVkOT=
UwMzM1YWRhNzRlZGYyNjMxYmMzNDdiMTk5NjQ0YTY3Y2ViNTdkNTk3Yzg2M2NiYjU3MTZlN2MxN=
GNmZWQyMGMzY2ZhMWM5ZTRlZDBlODZmODc2NDg2Nzg1YjUxYmRjNTAxZmU2ZTA1N2IwZTVhMjhk=
OTc5ZWQ2MmM4Njg0ZTYzNzhjYjNjYWUxZTFjZWNjOWY3NzdhNDZiN2E2MzI0YzBlZDgxNGNjZmQ=
xNzdjOWVmNzA3NWRhNmMyYTgwMDhjOWRmYmYwN2QyMmFmYzkwMDAyZGExNTA5YzFiODU3M2ViZj=
IzODdjOGEyMjIyOGZmMzhjZmNhYjVhN2U0ZTdhYzkzM2RmYTI0ZjZjYjVjNDhhOTEyMDEyYmE4>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DZmQxZDQ3YWUwNTQ2ODM2ZGU4NGE2OTQyMWJkODkwNzRlNTQ2YmYyZmV=
lNjViNTU3MmUyMGIzYjQ2NjhkNDJjOGQzMzk2YmFiNGM1MWI2ZmIyZmMyZGQ4YWI2NDdiZGVmYz=
k4NTA3Y2FhN2ZhMmYxMmNmMjhiZTRjMzU3MWY2ZGRiZDA0ZDY0NjAwYjhhMWE2ZTEyYTVmNDUxZ=
WVkMTQwMWRkNjFkZjI2NzBmNDM1YWUzYTBiZTI5NzU5MDllY2ZlMjRhYzExM2E4MDVjNTljOTRi=
Y2YwOWFlOGYxYTU4YzRjMDcyZGYzNWIwNzYzN2NkMGFkOTI1YTVmNTY2YWQzMzg5ZjhhYTUxOGV=
kYWNkYTgwOTk1NmUyNTgwYTllMDgyOTAxOTNhYjIyNjQ0NGQyOGI4ZjcwNGVkZDE3YmYyY2Y0ZG=
QyZjJlZDdiOWM5YjM5ZTZlNDYzYWI3NDY4MjhmMGY2MTYwMmQ2NDUxNDNjN2NlODFkY2M5MjE2Y=
zg3Mg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMDkyMzNkMGYzOTE2OWM2MWQyNDQzZDg5NGFkY2U2YjljMWFiZmRjNmI=
4ZTliOWZhYmU3MGJiYjBlOTE1MDE5MWNhNTViMjM3NGY4ZGIzYTRlOTRjMWI4NjQ0YTVlMzUzZj=
kzNzg0ZWI3ZGI5MzAwNGRkMDIzZTBjZTNmMDE3NmY0ZjQwOGZlZTllMzdlY2E1MTU3ODI3YjEwZ=
GY3NDY0NWRlNGYxMzU0MWVlYTZlNDYzOWVmYzhmMzZlOWJhZTk3OWJlNzkxMjdjYzE5ZDEyYjBk=
ODI4OTdkMzU2N2UxNGU5MWNlMzdkMTdiMDBjZjM0N2ZhZjY0MGE0NDUxZGZhM2E0YzQyNjgzYzN=
jZjY3OTA4MWJmMzQyNzBmNmNjNWQ1ZDVhNTMzZGJlMTUyOGJkYjkwM2RmOTc1ODRjOTRiYTY3ZT=
Q0ZTgzZTE4YjZlMWI0ZjgwMzA1ODhjMTA0Mzc1ZTlkMWRiYjU2MTcyZmIwMGZlY2E5MWRhNmI4M=
Dc3Ng=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYTdkY2Y3OWZlMDNhNjZlZDE4Yzk1MTc1ZTY5NGZkMTkzYTVhNWVjZDU=
wYjg0MzU4MjU5M2JhOTY5OTRlMmEzYmMxZDU5YWE3ZDllYWU5MTFiZGM4YmRlYTljMjUzZmIxZT=
Y3ZTE0YWQ2MWRkY2Y2YjA3MGFmYWQ4Y2E2NWM3MTViZDU4NzRmNGYwYjZjOWYzZDE0NTYyNmFjN=
2FkYTE5NjBhZTAwZWZjMzlkYTkxZGJjYzBkNDU4OGY4MDYwMDA2ZTlmNzYwODM5NTExYTE2NjY0=
ZTkwMTY3NjZkOGI0ZWVhYTQ3ODc3MTBhZjMxOWRhNGJjY2JiODljZmE5NjkyMTljYzEyNzkyODQ=
3YzI1NjRkMTVjMDQ4NzY2NzIwYzU4MmY0NzMyZDZiYWViYTIzZmE3NjZiOTBmMTM0ZDQxMmY3NG=
I2YmQyMGY5YTE5YTlmYzcyOTAxZmVhYzVjNTY0OTM2NThhMjU1OWFiMzVhNThhNjNlYmFjMmQ3Z=
DhhYQ=3D=3D>
   About Us
<localhost:1333?u=3DNTI3OTEwODJhOGNiMDc5ODI2NjdhMmM2MjczZGEzYTk0M2RiNTNkODk=
0YmYwMjhlYjZkMDM3Y2RkZDY1NjM4ZThlZTFhZWZlZWQ1MzQwYzAxMTU1ZWQ1MmRlNWQxYWViM2=
QwZDI4YjUxNTNiZmRhZmY1N2M4YzVkMjYyYjdlMzVmOTI4MjI5MDNiMjQzZWIxODRjNDMyYjM0O=
GY5NWViODE5NTE2MDIwZjUwZjdhYTFjZTIwY2RiNWU3ZDEzYjViZTcyYWM4NGMzNTM1ZDc3NzAx=
ZGExZTdmNmU5N2IxYzc3ODliODJmOTg4MWU5YmYyNWRhYTViMGQzOGVlZDE1NzZmZWIwMmEyNjJ=
lOTkxZmQwZTAwZTAwNzMwZTEwMTg3OTYxNGE2MzBmZmRjOWRiYTAxZDRhNDFhNzU1YzA1MTc5NT=
hmODNiY2Q1MzM5NjA0NGRkM2I1NDU1M2I4NzYzYWExNWY2OWVhZmNiM2M5YmMxYzJhY2EyNTQ0O=
WMxYQ=3D=3D>
   Customer Service
<localhost:1333?u=3DOGU3ZmI4YThmNGJjNWRiNWIyNDJlNzM5MTVjNmVjMTZmMjk1Y2VmMmV=
iZmI5YzU1NDJkOTdmMDE2MGY3NzU3ZjNjMGRhMGZkYTNhNWMwYzVhNDJjZTc4YzY1NGM5ZTk3NT=
YwYWJiZGVhYzc3M2Q2M2E5MmFlYmQ3ZDFhNzg3YTAwMmQxNmM2NDMzYTdiN2YzY2M2YjgzZWMwZ=
WQ4YzNiNTY4NzM2YmI0N2U0MTIzNTk0ZTg3YmQyNWY3NjIwYWJjMjM1OTYwMDJjZTFiNmNmMzhh=
ZWRlMTIyNjRhYzJhYzI5MTQ0YmEzYzljNjQ4ODQwYWQ5NGZlZjIwM2ZkN2UzMDZkNGM3YTJmMzA=
0NDdlOTI1MjUyODc4MWU2OWE3MWNlNWNkYTMxMGI2ZWI2YzkzMTI5ZGJlOWZhNDk3MjFmODE4MW=
Q0ZTY0YjYyNzRmNTE4ODA3M2E3NmFhOGEyMDg3MzY3MjE4NGYzMDVhMTUzY2Y1NWNlNDhlYmM4N=
TAzMg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMjk5Y2UzMmRkYjYxMGFkYzRmODUyODI0Y2Q5Njg5ZDkwMjZiZTExNzg=
3OWI1NjY0MTEzNjljNjJiNWFmNjc2MzE2NzE0ZGUzMDlkMTA0NTU1MTFiN2ZiMWQ1N2U5MmI1OD=
U2YjRlZTAyMzg1NDRlNDEwZDg2NjZhMTc2NWZkZGUxN2EyMmQyMzU0OGY0Yjc1ZGY4ZmVmNDA4M=
DE0OWM1MmEyM2U3ZTBlMTA3YzE5YWNmZjczMmQ5MjdhMDM1MTQ1NjFhZGI2ZjcxNTQwMmNhODFk=
ZmJlOWFkYTI4MGE2MmI2NTUzYzc2ZTcxNmQzZjUwN2QxMDc2NDVmYThlNjA=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMzU5YzYzZTNmMjBmNjRiZWY0MzMxZmU5ZDYxMmVhODk3YjNiMWJhYmE=
yY2MxOTk4NDc1MDU1NmFmZjJmNmNkMzYwOTFjOWI4YzhlNDI1NmEzYjE2OGVlZDg2YjBjYjlkYz=
QxYTI3ZDI1NmJkMDM2NTRmM2E5ZDk4MmQyZDk5N2U3ZTkxYjExNzc4NWY4YjFkNTgzZmEyMTUzN=
mUyNzQ0YzYxMjYyNTgxMWE0ZWY1OTFmZDAzMTkyOTMxZTQ4YzdkY2Y0YjU1ODViMjFlYzJmMTgz=
MjE4YmUzMTFjODY5NDM1YmRiOThmZGQ5YWQ3YjFjOTI0ODRhZDgxNmFjYjlkNDIzOTFmODgyMjY=
2OWU4NTU1YWJlOWJkNzI3MWJjOTEwMzIyYTY2MDU0ZTMzN2Q0NjU0ZjZlYzdjYjE5MTBmNDk1Nz=
cyMjE5M2U1MDdjYzdlNWNkOWNiMTg2YjYwNmZlNTdmYjcxM2NiYzVkY2Q1M2Q2NTEyODBlMTcxM=
WRmNjQ3NGVlNWJmNmQ0MzhhNzc5Yzc1ZmYzMDcxMGQxY2RiMzk3OTFmMTA3YjFjYjBkNGEyNDdm=
YTVmNWY=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DOGRlYzkxMWI0YmEwZmJh=
MGNmZmQ5MTRiYWFhYWM3YmU3M2E3YTBkNjBiNGEwNmU2ZWUwYTNkNGU2ODQ0OTE4YmEzZmViMzU=
2YzMwNTZmZjBkMTdkYWNhODQxZTM2ODU1MDhhOWIwNDFhNGFjM2Y0MzFhOWM4ODU2MzM2NGFkZj=
UzYTc0OTZiMTNhNzE4NTQ4NTdhOWM1NGI4NzRmZTkxMjQ0Y2JhZjYzZjczZjgwYWY5NzE2ODUwO=
TQ3OTAzOWI1YjY1MGFlZDI1NDBjOTcyNTVmZGU3YmI0OTFhNmQ3NTVmMjgzYzM3N2RmZGZhZTQx=
ZGEwODhhNGI4MjExOTkwYTExOGRmYWI3Yjk4ZThhODM4YjhiNTlhOWY1NjViMGUzYzMxNTM5YTN=
kNDkyNDA2Y2I3NTJjZjI4MmUyZDE3N2Y5Mjk1MjY4YTM1MjllYjA2YTIzMjkzMzk5ZWYwM2Q5Mz=
k5ZGVhZWQ1MzNkMzhjMTM2MzQxYjY4ZWM3" target=3D"_blank">
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
?u=3DODQzZGE5NGU5MzFkMGVlNjg3MjgwNzJiMGM5YWU2NTdhMGM4ZDU2YWM2OGRiY2E1ZGFlY2=
M4ZTgxY2NjMWIwMmU1MWZhNDA4MGI0ODg2ODY0OGYzMzcwZTNmMWMxYzE2YTBjZTgyZmE4ODRjZ=
Dg0MDc4ZDhhYjgzNjNlMDYwMDExM2I1MDUxOTAzZDlhZmQyNzllYjk0OTI5NzhiOWIxOTNjN2Vk=
ZGFhZGQ2MDBlNGJlMjhhNTdmZGFlOGU0ODJhNjJiODZmYmQwN2Y5OWIxOTE4NDMwMjk1MGQwZDF=
kZmFiN2E0MDgwYTcyNzU2NDM4NWZmNTI4OTQ1Njk1MzYwNWU4OTAzNzRjMDkyOGYwYWRjZWFhND=
cyMzZjY2YxODYwMzkzZGRkM2FiYzAzMWQ1ZDdhZjJlMGI3NzAwZWFlMDM3OWMwNWM4MjMyMTFjZ=
TU1ZDc4NzJmYTNlMTQxNTE1ODFiNDc2NzFiMjVhNWNhZTAxOWY4MTFlMjgy" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMzVhNzI0N=
jI0NmIxZTVmNzNjYzE1MjkwNGMwNGQ2NzBmZmU3YWQ1NDJmYWY2NjAxZDg0OGMxMTUxODE3NGUx=
YmU2OTc3Mjg0Y2RmNGRkNmM4NzcyOWZmMDUwZDg0YjM0MTU5OTA0ODJmNTMzOTk1M2UwZGRiZDB=
lMTM3M2I1ZmU1ZjQwN2Y5ZjE3ODEwNWRjNWQ4ZDA2M2NmYjBkNDgxYjc2OTU4ZGY2YTQ0NmIyZm=
I3NDIxNTEzZmQzMjEwNjZjNTVhOTlkYjE1YmJhOTZmNzFhZGZlNzBlYjNmNjUxMzFjOTVjMmNiM=
WI4NjAwMDA4Nzc5YjYxOTEyMTIyYTMzYzQyYTA3MDEwNGM4ZGFlYjUwNzJhYzQ5ZjE3MzJmODlm=
YzczOTRjYjM4NzNkNDhkNWFlMzFkNTEzODU2ZmY1ODQ3MGYxMzQ1M2JlNWYxYWE1OTAyMDVmYjN=
lNGVlNzJmOTQxYjA5ZDg0YmEzZjQyZTI3OWFhOWNhNjgz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZjM2YzF=
lN2FjYmRiNzVkNDJhZmFjOGVhNWE2YzFiOGNkZmYyMjg1OTI4NjdmMzdhOTAwNGMxYmEyNWY0YT=
FkOWU2ZjI0NWJkOGM4ZTFkNDFjZTZjNzVhZTkwMzZjMmUxNzEzZDk2MDE1NDNkMzYwN2FmNTc1O=
TNjY2U5YjhhODczZWFmMWZjN2M3MzZlMGI1ODZhMzFjMTcwMGZjZTk4ODRhMzBmOTBlNjA0ODE4=
NTdjYmZlYTdlMjU1MmM3YjA2MmMwMmYwMmI1ODMwODNmNzhlZmYyZDViNDRjNmE4NTNjYzk4YmY=
1M2I5MTdmMGY2MDY3MDE4YTIwZDZjN2ZlMzRhZWQ1ZWEyMTU0OGNlMTljN2M3NGNlYjc5NjZhNz=
UwZmQwNjU4ODRkN2IwZTI3OTdkNTc1MTA1YjZhNGExZGQxMGFkY2I2YjYzZTRlMGFlYTQwNGE2Y=
jZmOTQ2NmNiMmFlNzBhOWZmOTg0MzljYWEyZTVkMGUxNGE1" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNDQ4YzU2Mzkz=
NTE0OTRiMDBmZmQ3OTg4ODRlNzUyZmZkNjE1YWU1ZjcxNmFlNWMyNDQzYWU1ZmEwYWRiYTlmZGQ=
0YTUzZWEwYjQxODcxYTE5NGQyMDQ4MDFiYTY3OWE1N2YyZTA3Y2U0ZWQ2ODNiZDg3MGE3NDc4YT=
dmYjc4NjM4MDI2N2QxYzY3OGRlZGU4YWQ5MWZkY2RhOTdmZTNkZGRmZmRkZjVhOTQ1MzkxOGUzZ=
jFhMzIyNDMyZjgzODI3ZDRhYzE2NmFiM2ZiNjhhYTAyYzZmMjZhNWQ3YWNlOGE0ZTRmOWY5N2Yy=
NjliYjYwYzY3MGE4NGU5NGNkYmNmMjFhNmZkNWE2NzkxMDQyMGI0ZDY0NTI4NTM5ZjE0YTA2ZTN=
iY2E0YTdmM2UyMWIyYTY1ODAzMTU2MmY4MGRhYzM0NTBmMDBlZmM3MTZkMWIzMzYyNGQ1OGRmNj=
ZhMzc2ODc4MjEzYzJhZTIzNzdkYzcxMWUyOGRkNDc3" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DZjAwNWQ3ZDdkN2I1M=
zMwNTI5ZTBhZDQ4YzFkN2EzODI0NzAwMzQxMWQ3ZDI0ZGIwZjE4NjFiOTU1NWZmMWNlYWIxZWI4=
ODk0NmRmMDExNjkyNzQ2OGIyZmI4MDFlYjFlZGVlYWQ2YWRjMGZkZTA3ZjYwMDBmZDdjZjhhNzE=
xOTlhNmZjZmFjZTk3NThlYzk2ZGE0ZDg1MmJmNjY1ZTZjZWNiMjZkZTliODE3ZGFiZDg4YTI2M2=
Q1MDBhMjU4N2M1ZTVmZDgyOTYzY2FlM2RhOTZmMTQwYjEwZGMxNTU1ZDQyYmNkY2NjYWU0MWI5N=
GNiZTAwOGI2NGJhNmJmNTMzOWZkODFhNTcwOTRkYTE3ZmVhM2RlYjU5MjUzZGU4MDRhZGIxOGE5=
ZTYyMWM2ODhiZDI3YTgyYzM2ZmZhMmRkNWNhMmMyM2E1MDVmNTU5YzMyMWMzNWU4ZDQwYzdkMGM=
xZmI1YjYyYWNiZWJjNTZiYWZlNWRkNmI3MWIx" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DZDI2NThhZWZlN=
jFkMTczMmViM2ZlMGQ2MjlmOTJlYjcxYWM4OGRiMTJlNmJmNWNiZmRkNTYzMDQ2YmE1YTU3OTUz=
ZGM5NmJmZDZiZTE2NDE5ODY1ZjA1MWJjZDNkZmU0NmZiYTU4ZDY3NGU1NzFkMjA2Yzc0ZDI1MGN=
lYTgzYjJmNzM3OGMxMmYyZGNhZTA5NDE5MzA4MGNhMDY0YTdlNDZiMjBhMzY4NjU4OTY4MmE4Y2=
ZjNDM3MzFhMzNjNjUyZWM3YmI4ZGM1ZWNjOWU1ZGNiMzdiNjdmOGFiYTM4MjU0YTY3NGE0ZjkzZ=
jViNjczMjRhNDJlMjk3YTVjNmM1M2QwZWIxZGFjMTFkODE5ZmI0YWVjZWU4YmJlZTUyZDc4YWMz=
MWE3ZGQ2MjY2NmE2N2IzY2MzMWM1NGIwN2VhM2ZkMGFjMzlhNjE2MmYyMzU2YTBmNjg5MjdkM2J=
iZmU3NmQ1YmVkYmZiMzllNTE3MjFmOGYyMmIwNzY0" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYmY4YzE=
xZjE2MzYwMDE0MDNjZDNmY2M5OTIzZGU4YjlkNWFjODhkZDk5YWVmY2NhOWY4ZTg2MzU0ODRkMT=
U5ZjAzZDE0Yjg1NGY2OGZkZjk2NmMxNzM4N2Y5MTIzZmE1NzM5MjZmOWE1MTQxNTc2NWZlODAxZ=
mJjYWE2M2U2ZjJhZWRlMTI5NDJlZTk2YWMwZDExOThlN2MzMTY0YmNmNTFlZDUzM2NhYzUxNjI3=
OGNiYTc1NGJmMWYyZDI4YTYyMzA4ODI5ODZkOTFmYzkxMzYxZDc0ZDI5YzMzNThkNDI2ZjBmMjE=
xOWI3ZDYzOGMwYzhhNmZhNTUyMDdjY2Q2OGY2MzE0YThjNzliMDAyZDU3MGMyOTIyNmZlODJiOW=
ViNTBmM2U4YWZmOTVjZjFiMGEyNTUxODdhYTEyMDg0ZTdhN2I3NTAxZDM4OWE4NzNjZDZjYzZjZ=
WZkMjEzYTg4MWE2N2FjZjk5MWJhNTcyNTcxNTMyMzk2YmQ4ZjZjMg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMGQ2OTgwMmFmZmNiNTJjYjM0YWYxNz=
BhNzg5MDU1Y2Q0MWI2NGU1YmM2ZDM3Y2EyYzE3MGFlMDU2ZTY2YmUxNGMzNjAwNDJlZGRhOGI1O=
TRmMjg5NGVlMjYyMzVmYTY5ZWVjMmU2M2I2MmY3Yjc3OGZkNjk4ZWU5NmQ4YTgzNjExNDY5ZWM5=
MGFkNGZhODZkMjg3NDc1ZTQ3NDY0NWYyMzA5MDZlNGJjZjQxM2YxYjI0YzM1NjVjZDVkYTRjMWV=
jMGE3OTFjNGM2ZjAxMGVhZTJjMmMzYjk0OWVkMGM2NmExYzhiOGE2ZWM5MWRjYjhjNGI4OWFlYT=
dmMmJhOTQ2ODRmMzQyMTQ5Njg2M2I2YWQwN2Q4ZjkzYzk4YWZkY2UxYTYwZmJhM2U4M2U3MDQyN=
jgxMTBmYjFlMTQ4YjA3MTMzOGIyYjAzOTliNDM4Mzc0ZjRhMGRmNWY0ZDA0MjkzOWY1NjhkYTc5=
ODU5ZWQ3OTRhZDgzMDM3YmQ3" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNTQzYTIwOTY4ZDJiOTRlZTM1OGRmYz=
BiZjQ5MmY3MTk1N2M1N2ZkMmRmMzM5ZjBkYjg1M2E0NDVlMmRkYjAwNTFjODhlNGJhYWM4ODkwN=
DBkZGRjMWE4ZWU3MDMwNzRiMDBmOGUzYmI1MmIyNDg2MTJlY2ViZTZhNmZmMjE0NGUxZDIxNTFi=
ZGM2OWNmMjcyNzkzZTE3NWJhYWZhMWUxMTkwNGZhNDY1NDFiOGQ1MDFjOTQ4NDc4YjNkM2QxZGU=
1MDA0YTA4MzcwYzZmYWQxYTM3YzUwNTQxOGE1MmIyNmQ2NDc5ZmRlMjFkZjEwMjVmMzc2MzI2OT=
JmMDlhOTg5Zjk3MDA4ZTVmM2QwNmVhZjEyNjdlOWM5NmM4NDNjZTQ3ODRiZmFhYWQ1MzYzNzFjO=
WY5NDBhODcyN2NiOWZlYWEyMjQ1Y2ZhMjg2NTg2ZmY4ZTlmNzJjZTNhY2Y2YTMwNDQxZmRkNzM3=
ZWE3MzBhNTg4YjM2YzM4MmE0" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTIzOGU0MjVmZWZi=
N2U4MDUyZDNiMWMwNWIwYWM1NGI0NWU3ZjQxYjJkMjMxZjIxMmZmZmMyYjgwMjE2NzE5Y2ZhMzA=
wOWU2YWQyOGVkYjgyNTk2MjRmYjI1ZTBiM2I0MWEyNzM5NmYzMmEyMmE4YzY4MjgyMmM3NGYyNT=
IxZTFmZTYyNmYxNmY1ZjEyYWQwYzJiYTVlMWY1N2FmODBmMzYwOTc1MjE0NjZlNWMwNGYyZDI1M=
zlmNmI5OGFkZmM2NGZmNzMwZjhjMjA5NWNjN2JlYjBiYjc2NWMwMDIyMTI4ZjI3ODFkODcyODRk=
ZTAyMTM1ODhmNjU0ZjU0MzA2ZjdlMTgzZDI5NjVmMzIzZDRhY2RjNGIzMWJkOTJjNDgyODgwZWR=
mMTM1OGVlY2Y0NWI3ZGYyYTA0ZjA4NTBjOTU2ZjYyMGNmNjkyODY5YWE2M2Y5NWMzYWEzZGZiNj=
Q1Y2I5ODJkMDBhZjVlNThlYTE0NjdjOTY0NmIxZmY0Mw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZjQ3YTNhOGUzZjA2=
YjFhNzgyNzQ2MTQzMjUzZDRjMzBkNWRlMjRjNDdjMjc5Mzk5OGYxNGJiMWU1MjIwZDllZTRkNzd=
kZWQ4OGU2YWZhODhhZmZjNThjZDk1NGIyMmYxMTJkM2VhM2M1ODA3OGU3MmYwMDM4ZjA2NGE3Y2=
E3NDc0MDY3YjI5YmU3MDcwZWQ4MmQxYjQ5Mzg4YjEwN2JiNmYwMjkyYWE4NGNlODUyOWJiNWEwZ=
DA5ZTg0Yjc5MjU2Yzc2OGMzNzc3MWUyMmNiMzcyOTZkN2IzNDZiYTVlNTA4NzM1MDMxYzQ1ZWJl=
ZGVkNDk0NzQ0MjRiNDA4ODY3MDBlZmY2MmIwMzMxOTllZmU1NmY4MjQxODgzZjhmNWY4NjgzMDB=
jMmJiNmVjNGZlM2JlZjdlYTUwZmI3YTE1OGFiMTc5NGE3NDE5YzIwODhjYTg1ZmZkNzkyYWM4OD=
Y5ZTdjMTc5NmM3M2IzYmFjNDRiNjg2MjJkOTZiNzg4Mw=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTViOGVhNDNhYzMy=
MjViNTliOTZkNDk5NzU2Yzk1YzBiMWNmZDQ3ZjU1ZjFiMzQ5Yjc2MGI0MTRkNjZmMGY0MzJlN2V=
iYzBlNDJhMjg4MTFhZGEzYzgyMjVlMDM3NTRhNDJiNTI2OTBlOWMzMDFkOTkxMDcwMTkzNWQ4Nj=
M2MmI3YmEyMmI0MWE0YTIyZDE4YzY2ZDUwZTQ3MDY4ODhlMjk3ZDZhYTJmM2UxNzg5ZTNhYzk2Y=
2ZmYzc3ZThlNTEyMTg1MDdkZDQ2NzI2NTlkMzU4YmM2ZGE2OGZjYzg1OGVlMDkwNmI2OTk4NWQ5=
NzQ3NWFkOWZhYWJkOTI1Y2I0Mzc0YjM4NjMzN2M1NzE4MmE2NDE5YTExYmNkMDgwNTU5YWE1Nzh=
mNzJmYTFkOWZhMzc4ZDdlZGM3ZGE3ZmM0ZjQ4MzMyNDUxZjFmODVkYzg5ZDU1M2ZlMzdmMTEyMz=
EwNGJlMTcxZTc1NTg3ZWVjODVmOGRlZDVjNDQ0NzA4NQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMTJjMzhmNGFjNmIz=
NDVmZDlkZTJiZDE0OWM0ODYzNDBkYWJkMzgxMzIxYmYwMWNiOTRiZjkyZjc0MDAzNjk2OTk1NWE=
2MmNhMWY4YmM3MDY1NDg1M2JjZGMwMzQ5MmEyMTE3NWExZDkyYWMyYjRmNWUyMDkzYTI2MjkzN2=
ZlYmVkMjk4MGU2MGUzODM1NDM2YzU0YjY1MjNlYjU5MTk5NTYzMjU3NDNhOWRjNjdhNmM0ODhhY=
zE0MjU3OTcxNzZkZTM1ZTNhNzZiODkzMTA1YTJiMjFlM2JjYzBkNzIzYzcyZjgyOWU3YWM3OTlj=
NjI5YzU3MDZjZjgwNjlhY2FmMzJmZTE1NTcxNmNiZWQ2M2I1NjUwMmFmODViNGYyZjQ2MDczYTR=
kYTc5ZmE5NWEyZGRjMmYzMjQyODRiN2UwYTAxMWMxNmFhZTU0MGY4N2M2M2Q3MGIwNzA4MjU2Mz=
cxZDJiNjI5MjVjMDcwM2NlY2MwMmE4NWZiZjQ2MTRhYw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDFkNmExMmVkYWIyMm=
E0M2NjMmJhOTQ3NzA0NjY2MzNhYjAyMjlmNzhkM2YxMGVmZDBiZWIwMTBlYjg4YTM4ZDc5NmQ0Y=
TNiZWY1NWJmNWY2YTVlNDIxOWI4MmRhMDE4NDAwMTU0ZTFlMjU0MzAxNmY2M2U3ZTYxMzU0YzEz=
MmE3OWRiN2VmNWZhYjg3NWU3ZDY0NzA2N2ViMjhjMWVlMzY1MmY5OTQzODgyMTc1YTI4NDM1NDg=
5ZmNjNzg5N2QwZjUwNDliNzBlOWQ0ODZkNzRjNTU5MjY5MDE4ZTlhMzAwNGQ3NDYzOWIxM2Y5YW=
QzZmRkZjMyYTY4YjBlY2YzMjAxNGIxNjE3YzdiOWMxMjk2ODlmOGE4ODMzYWZiMTU1MGUwMTEzZ=
DczZmYzMmY4YTkyODkxMmFjZTkwYjZlOGU5NTM3YjBmZjQxZTQ4MzBlOGMxYjcyOTI5Njc5N2Zk=
Y2FkZjNmMWYyNzAxZGM2MjljOWExYTJjYTJjMDQxMA=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZGJjMTEyNTcyYmRj=
YWU4MDUzZmQxMzMwZDFhZDI4Y2EyOWEzYTQ5MGU4YzQ2NzM5NjA1NTM2YzgzYzczYjRlNmMwNzk=
4ODhjMGZmMWMxNTBlNGVmMDA2NDVlM2ViYjk1MjYyZWViYjk5OGVjMTM5YTgyZGI5ZmExZWY3M2=
U5OWYxMGUwNjBjMjJiZDZjYjIwY2U4Yzk2M2IzZTRkN2MzNTJlMjQ1YmNiNWEwM2I2NTA4YTA1N=
2E5OGZkYmY4ZTY3YzNiZTY1ZDdmNmZhZGU3YjAxMzE0MzEzZGM2MWFlNzhjZmU1MjhiZGNhZGRj=
ZDQ1NjhmNmZjNjU5OThkOGI=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYzEzNzA0Y2UzMzVlMDkwNTVlODVkOWI5MzYzN=
TA5MzI3ZGEyYzIwOGNlZTE2NzM1NDBiYmJkYzJmMjU2YWNhODI2NTkyODA3NjJmZjYzODBhNjIz=
MGM5ZWE0NWJlMGM5MTQ3NzgxNDFmNGJjYzgyZmQ2YzdkNGRjOWViODIwZGM0NDY3MTg2YWYzZDQ=
1MTdmYzI2M2FkNzExOTUyYzM5YmQ4NTE3NTEyOGNhNmI3OTcwNWI0MGMzMGZlNDFmMjZhZjEwNW=
E2M2FmNDlmZTYzYWMxNjYzZTI2NzBlNThiOTk1ODc3NWJkODBiOTg0MDY4ZWEyZjA5MjllYzI5N=
jFkOThhOGUxNmE1MGFlM2ExNzkxODRmNDAyNWUzYWU3OTBhOTdmMTVmZjM5YTQ4OWViMWYyMzJm=
ZmVhZjAzZjZhNzFiNGVmZDUyZGM4MGYxZDkzMGQxNWI4YmUzZDUyYTVlNWE5ZDFkMTA5NGQ3MTE=
yMzNlNmFlZDJkODIxOTI0Y2NmZTFlMWZhZTIxZjMwNzIwNjE1NWNjZjBlZmY1ZGM5NDk3ODIxZD=
MwY2M1NWI3ZDE5ZDM5ODYwMmQ=3D" style=3D"font-size:12px;line-height:134%;font=
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
