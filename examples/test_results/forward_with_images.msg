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
From: localhost:1333?u=3DZGY0YTgzNzUxMmVjYTdmOTk1NjU5ZGViMTJkOTJkYjZkMmRkMz=
ZjYWUxNTIxZjNhNzE2NzU4NWQ4YzU3MTNlMmM1ZGU1ODhkZjY0MjYz <mail@eg.expedia.com=
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
<localhost:1333?u=3DMTE4Y2U2NzMzYWM3NDU3ZDY3YzlmZjgzNWM5MzYyNGU1ZTE2OGUyOTU=
2NDYzZWQwNzljMjI0MTkxMmQyOGQ0ODBkMGJkODAwMzk5YmYyZDgzYzhhM2QwMWIzYjVkN2Y0Y2=
Y0ZjUxYjNjNmRhNWQzODY3ZjFkMzFjYWUwZGU2NjExY2M0NmQxZmYxYzZmZTFhZDFhZjE1OWUwN=
WMyMWYzMGQ1ZWUwOGZkMGIzMTNkZTAyMDBhYWJmNzgyZTIwYTgxMDVmYjA5YzE0OGY3YmFiZmI1=
YTZiMDg2YjM1YmIyMjNiMmFjN2UyN2MwNzAxOGM5ODgzNWFlZmU2MjNmN2RlY2UxNjE2ODI5NDI=
3NDFhZThkNWNiZDgwYzQ2NDcxMTYyMzlhZDZmMTVkMzg0MmVlYTNjNzVlMDlhYWU1Zjk2NjJkMj=
VlOGZlM2FhNGE4OWZmZjg4NWU3MTkzYWEzY2MxZDg2YjM3ZjI5ZWRlODk3ZWUyZTYwYTJiNGVm>

* The Travel Edit
<localhost:1333?u=3DZmIzNjEzYmRiOWRhZDBlYzY3MjFjZTMxNzE5YWRlZWE0NDgzZWIyNDA=
1ZTBlOTg4OTY0MGJkZGVkNmIxNzFhMjEwOTY0NGZiMTNkZDEzOTY1NGUwZGViMGNiNTFjZTNlNT=
VhNDlkN2IyMTIyMjkzYzFjOTA1ZDRlNGE4YjU5NGZlNjc4ZGNlNjdhMDQ1N2FjNmVmYzY0MDQzN=
zAxNWVhMjE4OTNlMWI5MzE2YjcxMTczYWEzYmE2NjVkNTAxZDkyYzI3NjQxYTIwN2U4OWE4YTk1=
ODZjOTM5ODg4NTZhNzg1MzAyMjdiMWM0ODA1YzE3MzRjMjM2ZTA5YjRlNzc0ODE5N2NjMDg4NzN=
kZDJmMGNkNjc4YzNmYzYwN2FkNjY0MGU5Yjk1YjFjYWY5YzQyNmFjZTAyOTQyNzRlZTgwYTQ4Nz=
I0OTUwYTQ0ZmY4OGM1ZmFkMGVlM2YxMDhjMTNhNTkwNGM0MmIxMWUxYmJlNGZjN2ViZGFhNTY2>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMjljYmEzMzY5YTFiMjlkZDI3YWY0YTdkN2FlMzcxMDJjNWY4Y2MxYzU=
zNzliMTc2YmM4MzMyYjgwZjg3YmQ2ODY0ZmUxMjJhMDkyMDU1Yjk2NTY1OTQyYmViZGZmZTE5ZT=
UzZDRhNWJkYzI3ODYxODdjNzBkOTJmMjg1YzFkM2NhMDY2Y2NiODdkNTNiN2EwYzc5NDliZTU4N=
jhiM2ZjODlhYTg1NTkwNGE2NzExODFiMzNlNjQwYjg1ZjQzZDk1ZTRlOGMxY2E1NGE3NjBhYzhh=
OGYyNTdmMDhiNjg1MTRkMzBiNmQ2N2RmNGNmN2Y2ZDNkZmI1NGUwN2UwMDZmN2ZiMmRkMGZjNzI=
2YmEwMjliNjdmNTNmNWY1NmE0OTI4ZDIwYzg5ZGJkODk2MTNlNDEzMjJlYjc3NmZmODRmZmViZT=
RhZDhmNzEyYzU5NDBiZWI2NTJhOTIzODVhYTIxNjRmN2VkNjU1Njg5MzU0MTExYzFiNWUxMjEw>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODNhYjNlZjZjNWYzMjhlNjcxZTRiZTljMmUzMGQ1YzJhOGViYmJmODc=
4ZDI0NzgxMTlkZTFkMWU1MTJlNmVkMmNhOWUxM2FiMDg1MmQ5MTNiY2FjNDI1Y2UwMmE4ODE5Yz=
A1YTI3NDdiNThiMjU1NTQ4MjBhMzlhMTJlYTAzODQyNDdkZjE4N2FlNmVkNzgwNDQ1ZTc0NTE5M=
GEwNmQ3MWFkZDQ0ZTQyMTQ2NWUxZTc2NjNmYzYwYTZjMjc0NWRjYjJhMjQ1NzNhODllOTk0YzQ1=
NzEwZDZkNDFmODZlMDE2OTMzMTZjYzE1Mzg1NDVjNWQ0ZGJjYjJiMDE0MDc0OGI3NTAyMDljM2Q=
wZTBmM2U1MWZjYzU0Yjk5ZjVhYjc1ZGZjMGVjNjUxYWY4YzBlOGRhZWUzNDg3NDVhZThjMGY2NG=
NlZTdlMTk1MjE1ZjY4ZDk1Y2RlOWYxMTAyZTBmY2RjYTZjYmZhMTQwNTVjZDAwNWU4MWFlYWE4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMTU5MTZkZDFkY2MzZWVhYzkyMDdhOWZiMzg5NWViM2I3YzJiOThlNGJ=
jMDZhYThkODE0MjVhMmQ3OGFhOTdlYTEyNWI1MzMwYzQwZjQ0OTNmMWNlOTgzZTU3NDg1MWUwOW=
FjMmVlYjEzNTcyN2Q0NDkzNmIzMTYxZjRmNzRjZGFmMTk2ZTEzNTUzOThhNDUwM2Q2NjMzODZhN=
WFhYzMwNDVkN2IyOTBmNWM2YmExNDUzMWU3Y2U0NDRmODUwOGJhZjFhYjk1YmY1ZmNlYzM1MDY5=
YjMwMWVhZGQ3Y2YxZjQ5Yzg0YzAxZTU3NTY4ZGQ1MTRmYjFjY2RlYzlkY2QzZjRhYzRkNWIwMzR=
jMmU0Y2UxOTA1MTIwZTkyNjU3MGM2MTA0ODEyYjZhODBkNWZjZDRiZDE3MzYxMTNjZjJlOWNjNW=
Q4ZGJlMGFiMjZjZWY0M2Y4ODlmMDJmNDYxMTYzZmFmNWU4YWZmNDRiMDM2MzA4YTNjYTU5NjQ3>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMzkwZjkyN2IzMDBjNGZlMGM5NTIwMjU1MWRkNmY1YzUyNjhkNDJjZjM=
4MGZjNDQzYWRlNGQxY2VkODc1MzM5MmExNmE5MDk0MjlhMTE3NzMyYmVmYWI2YWFjYjY2MWJmZG=
MxODI3NmNlYmZhZmM3MGYzZTc2OGUwNTQwMjljY2U3MTEwNDkzNDQzN2U3ZWFiYWU1MTkyYjliZ=
jMzYzEzN2E4Y2E1ZGE0Zjc0NmZiMTAyMjE0YWFkNDcwMTU4N2Q4OTg5YWM5N2FmYjc4ZWU4Mjhk=
OWMxZjIxYzc0MzIzYmQxZmViMGJiMzYzYTliNzQ0MDE3MTk2NWZhYzBmNDQzNTY4NmQ3YmYzNzU=
wMGUyOTBlZjgwZjMyZWYzYjk2YzQ5MTliOGFlZjI5NTMyMjQ0YjdhMjZkMGMxNGM2NDljMTFkNm=
E5ZjU4NjcwYTJiYjZkZGZlYWU3MjdiZTM2MzBjYTAyMTc3MjNlOTQ2NGVlOGM2ODBjOGE4YmQ3>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DODRmMmIwYmNhNTQ1YzQ1NjdjNmFjN2M3ZTlmNTYxOTExYTZmY2U0ZDA=
zM2MwYWZmY2VkOGU1OGNmYzY2MDg1YjljMzc3YTYzODUyNGJkYzE0MmJkNjA0NjI0MTNjMDQzMD=
k4ZDcwOWJhMDk2MjllY2Q1NDBjOWY1MmE2NTY0NTIzOWUyOTQwNmViM2RkOWVjMWZhYmNiN2Q5Z=
DI0MWZkNTQ5ZjIyYzg0YzBkYjYwOGUxNjdiODI1OWJiMTZiYTg3MWMxOWE1OWEyMzcxNDYyZTJl=
ZjQ0OWExMTM4YzdiZjAzZDI0NzU1MTRlM2E0NjZkMjZhNzZiNzdiNjJjMWIyMjA3ZjYxYjNiODU=
wOTU4YzhiYWZmNjVkMzNmYzBjMjc0NWE4OTBiZDZlYTliZGVlMWU4NWU5MmZkMDk4ZGI0YmMyMm=
YzOTIzZDBjZGU0Nzk0NjU2OWZmY2IzYmMxY2RkMTQ5ZDhjOTQ5ZWMxOGQwNWUxYzQ3MTM3Yzc3>

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
<localhost:1333?u=3DNDJiM2E5ZGNlZWY2NzIzNGM0ZTAxZjEwYzkxNGI0YmExZDZlMDVhM2I=
1ZjE2YzMyMzZhNjExOWNjNzRlZGVkMTA1MmViYzM1YTYxMzQ3N2I5MDY4ZDE5NDhiOTAyYTI3MD=
kwMTI3MTE2ZDY3ZjU4M2ZmZGM3ODJjY2Y0ZWM4ZGQzMDE3NWFmODI5MmY2YzU0MWVkMGU4OWM3Y=
WQ5MjRhYjFmY2FjNjkwZDUwYWNlN2Y4MWIxYmNiN2E4MjAzOTBhN2VkNzdkMWQ5N2UxM2ZmMjA2=
YWU4MDJkZmRjYWNhYzYzMWUyNDI0YTU4OTAxNzFhNjgwOGFhNWQ0OGIwZWFkNWQ1ZjM5MWM0MmI=
zMWE4ZjZkOTYzN2VjN2Q2NzIyODU5ZjFmNWU4MGJmZWYyYmVlYTM4NDQ3NGIzODMwZTVhNDlmZW=
U2ZDZhZDI1ZTQ1MmE0ZmNkZjJjYzhlMWVhY2MzMDc1ZmEwNDk3NjFhOWZjZDZjOWY2ZWMxMWQ4Y=
mViMg=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DOGU1NDYyZGRjYTNhODZjNjI1MTY5NGE1MDJmOTc4MTdlZGI5NTExODc=
wYjMxMWFmMGM3YWU4MTUzMTAyNDU4YTA5YjdhZjFjNzc2NmM0ZWY3NzBiZDNkZmY4ZjY3ODJmN2=
Y1MDc4YzY5NDAzMGI5NGZlNjJhODEyMDIyMjRkODk4ZTkxYjY5OTBjODc5MzA2NTRmOTdhMzE0Y=
Tg1NzEwMWUwNDM2MmJiY2NmMDlkZWY5N2Y4MWFhNzFkZWMxZmJjYmVmYWE5ZTJkOGY3ZjhmYTdm=
ZjMzNGI3NzI1NmJhMmVkNmNmMWFjMDE4NjZjZTdkM2I3Mjk0YThlNmFhMGJjNTk2MzJlMTk4Mjc=
yZDdmYmYzNTJkMWRhNjA2M2RiMTgwODM0ZWEzZDY1OTUxNzFlZWUwOTZkYjY0NzU4YjNjZTFiMT=
hhOGU5NTAxNjFkOTQwYjIwY2I4ZGQxMzYzZjUzZGVjZGNmYzIxNzJmYjhkNDg2MTdhMjNkYjk5>
  [image: Google Play]
<localhost:1333?u=3DMzI5ZWQxMDFmMzhjOTIyMjk1MmIyMDI1OGY3MmJiMmNmYzZhM2ZlMmI=
0ZDUyYzkyOTgxMzAyNDVmODE2ZDMzMThjNGM3Zjc5MzJiNmU1YmFlYzQ0NTJlZDAzMmJjYTI1ZD=
RiNWIyODFjZjBmOWQ5MDI0YTI4NjFmZTUwYWI0N2ZmYTFiZDUwZmJhMzJlZjEzNjI2NGY5NGJjM=
DZhNTc0OGYyMmUwZDI2ZTRlYTkwZjM2MTZiMDg3MWY4NDEyYzBlYjM1MTc5MTM5OGI1OWVhYzdh=
OGMzNjEzMTcxNTRhOGUzNTQ0OTJiYmNmMDM3N2U4NTUxNjBlNWZjZTUwMTdmMzdmNDI3YWNjYTc=
2N2RhMzg5YWQxMmNhNTEzNWM1ZTU4OWZiYzBiYjczNWNmZjI4MWRlM2U4Zjg1M2M5NzE3NTI5OT=
ZlNzJlMDUyYzJmMGIyYjdiNWRiMzRiNmU1ZWViODk2Y2Y0MTNmMzhjYmRkOTI2MzU3OTc2MDA1>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNWE1MjQ5YTkxMDZmNWQ2NjE4MGQwZmZhZWU5MzY3Y2Y1ZWQzMDMyNGQ=
wMTBhODllN2M4ODk3YzFmMGE0NGYwZGZiYzcwMWVlODg4MGFiMWMzOTg0M2Q0NTkwZDk5ZjMzMW=
JkNzEwODI1YTk1MjU0ZTdkOWYyMTExMDY3YWFlNTQxZTI3YzJhNmM0YjcwNWZhNWFhYmFhZWZlN=
WRhOWJlMTA0MTUwMDE4MTZlYWI3ZGU0YTM2MGVjZDJmM2RhZjlhZjEwNmUwYWM3Y2NiNzAyNzgw=
NTdmMDM0MTMyZDhmZTkyZTAyMDI0MDA5OGRlZTZhZWQwODQzY2M1YzY2MDM2MDRkYWYwNTk5NmE=
wMmZkYzM3N2VkMGYyODRhMGY5YTVjMzZiYTRhOTJiMjQxNWQ1ZGUxNzgxYzAzYjlhZDU3NDliZW=
RlOGY1YmE1NzMzNjRlMzUxNjZkOWY1ZDYyZDVkNzYwNDU4NjY0MzFlOTViNmE0ZTgxNjg1NjY5N=
DhmMQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNmQyNGEwYzgzNmY3ODhmZTg4NjI0MGUxMTQ4NGJiYTViN2NhMzBkNTE=
4OGJiMzZjMmI1NTRkNTljYjBjYTAxOTcwODZlZWYzN2MwN2Y4ZmQ2ZjM0YWMyNzM0NGU5MTY3ZG=
VmNzljYTU2NTg3OGM0MjcyNDdkYzZhODE2Y2I1MTAzMmYwNzkwYTAzZTU4YmMxMTNmZTNhOGI0M=
jViNTc4NjVjMTkxN2M3YzZlNmQ1YTVjNDljNTFiMTUyMTU1MmRkODkzNDFjMjk1ZTU2OGUyNjg4=
YWJjMTA1N2VlNmY4NjIzZDkwMjY3MmQ2MGYxMGI2ZTU4ZTM4NjI3OTM0ZjBiMmM1YzJmZGM4NDY=
zMjJjMDAyMjY0NDQwM2ZlNTU2MTg1ZmFiZmFmYmE4NTY1ZThmMzVhYjBhZjJmZmIwZmNjYzFiZD=
cyZmFjZjk4NDUyM2NlYmUzNDMzN2Y3M2RhMTM0Zjg3M2E5YTBkMTBhNGYwNTdmMjgyMmNhYWMxM=
jZjNg=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNTFlYTRhNzNmNjFiNzMwODJiZDc0YjA2MmQ2YjQ2YTFiOGU2NjAwNDc=
3NGViZTgzNGRlMGI1Yjk0Y2ZhNTI1YjQzN2Y5NzEwNzk2MDM4YzgyOTFjMzRkODQwYmFmNTNkYj=
k0ZDliNTI1Y2I5YjdhMWNiNGZkYzQ0YmNjYTgzMzI0YTU2ZTEwOGFhY2YzZThmYmY5ZmEyYWI2N=
zNlMDM1YmYyNDQ3YTAxYzQ2NDIxNDhlZTczYThhYzgyYzdjOTVjNmM5M2JiYTJlOWQ4ODU3YTZl=
NmVlMWU2ODcxMTg3YWI5OTQ4YjkwMTQyZTNhMjgxMzNlOTZmYWUxZjcyZjIyMGE1NGM5NGUwZDl=
lNDliNDYwZjIwNTMzNTdiNWU4NzMxODA5MDQwY2U5MzkyMGQ5NDMyMjUxMjFhYWUwM2ZmZTJmOW=
FlYjVkZGIwNGJlMzU2YjA2NjllYzkxMDk1MTM2NGRlOTljOTM2ODIxZWMwNTdjNjEzODlkZmZlZ=
DkxZg=3D=3D>
   About Us
<localhost:1333?u=3DMTkwNGRiNjMyZGQ1ZGRhZTI4NTU0ZmVjZjdjM2JjMzEzNTcwMTM5OWN=
jMzczMDA4YTQ4ZWE0YTcwYWU2MWQxZTdkMTE2ODY0OTMyNzY1ZjA1ZGJmZjk0NDM4YTY5MTk1ND=
IxOTRjNGNhOGEzOWIxNDY5MmQxYzA4ODhlM2EzMjA5OGRjZjRiODU0MWY3NTBkZDRlMjk3Y2MxM=
jk3ODYyZGViMWYyYTQ1NWMwN2Y4Yzk5OTEwMTZmYjFmYjU1OWM4ODFiM2ZhMjg0MWViOWIwZmY5=
Yjc4YWViZTNkYTU2YjZkZjg2YTc0NGM3NDI3ZjIwNmQ1MGNlZDNiOTFiZGJlMzUxN2E4NTg3NTd=
mY2NjNTkxMGI2MzE2ZjQ2YmVlN2EyOGI3ZDVjMDczMjRkYjZhNTY3OTFiODA1MGE2ZTM3ZDFmN2=
RiMjgwZWM5YTFmNjNmZmY1MDJmYWMyM2M0ODFiYTYwZWZjZTlkMTM4MTc5OWM1Mjk5YWRlMWZkN=
jY5YQ=3D=3D>
   Customer Service
<localhost:1333?u=3DMzA1MzYxMTc2YzY4ZTQyMjYxNTY0ZDI1ZDQwZTliNTkwYzQwMmI4NjA=
1NjNlMmUwY2UyMWM4MTY1NmMyY2QzOTY3ZjVhNzY4MTg2Y2IwMzU1YzcwZTA3MjYyYWRiN2NmOT=
RmYjA2MDA1MGM0ZjEzMmRmYzI2YzliOGYwZjkzZTFhMGQxNGU5MjgxMjBhYzFlZTQzNDA0ZDc1Z=
GRjMTk0OWUyMGYyOTIzOWFkZDZlMTk3NDI2MTMzY2M3Y2YyYTY0ZDZjZTg0NjgwMDJkMjg0NTFi=
ZjUzNWNlMTk1ZGUxYTZmM2EwZTVlYWRjODBhMmYwZWQ4ZGMwMzA4NzE1MDIxMDllMTliYjFlMWZ=
kZmEzODYzNGY5ZWYxYWIwNzFmOTcyMzgyYjNiNWU3Y2Q5ODU4ZTBhZTI2NjZlYTFhNDBiODcxMm=
IzMWJjNTQ4NmIxZjkwYzI1NzM4MWU3OTRkNzA4NDg4ZjEzODMyNjRmNmY1YjVhYzkxZDUwY2UzN=
jM2OA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNmVlODc3ODg4Mzk2ZWI1Y2JhZmUxNmEzOWUxYzUxNDIwMjUyNmQ0OWF=
jN2M2MWUyZTg5ZjY0NGI1MzQzMWM3NTA1N2Y1NWMwYjZiOTc1ZjAxMmY5NTEzMTdjMGJmMzIyMj=
BmYjlmMTIwOTA1NDRiMTMxNzFkMzg2YmRmMjc4MGJhYjhkNjE5M2YxOTYyYmVmNDJiZmIwMmUxY=
jk5NGYyZDczMmQ0YzA1MzE2NGFlMDEzOGEyYzY4YTRhZDM0MWE2Yzk5ZGVhZDAyYjQ5NzYzNmM1=
MjAzZmFlMmIzODI0MjkxYWFlZDZjNTE4MmE5OTA3MDBjZmNiYTVmODc4ZTM=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DZTA5MmZjNWYzMmE4N2EwYmUxNDUyN2VkNDRhMmI4NzZjMzlmYTk0Njg=
4ZjkyYjExYzhhOTlkZGI3YTAzMDE4OWNjOTBiYmVmYTgyMzNjMmExYzIwYmI3MTZhNWIwMjY1OW=
YxY2FmMTllYzkyNDZiN2FmMjY4MTc0YWUyZGYzMDUzZGFlOWQ4ZTI5NjQyYjZlNDRkZWQ3MTVmM=
jY5NDdiOWY3MjE3YWE0NGQ3YjUzZGMzYjVhMzlkMzNhOTliYzY4N2ZhZWYyOGU1NWQyOGYyM2Rj=
NDU2NWM1Yzk1NDk1NTZmZGJhYWY2NjMzNjliZDVlODJjYTFiNmZiY2U1N2M1YWViMDhkYTVjNjc=
1OTFmY2FlZTA3OTcxYjlkYTYwNzc3YTc0NGY4M2U1MWYxN2E0ZTQ2MTNjYzQyN2E0YWIyNzhjND=
cxYjhhM2IyMGZjZmQ4ZDJkYWZmNTk0MjI2N2M4YTRkZjI0ZjU4NmY2ZTZiNDI3NDI5MDQ0ZGE3Z=
GUyOWJjOTI0NzVjMzdjZDVkNDE2ZGZmZDAyOGJiNzExNDg4YTEzNWIzYWNiYjFjNjliYzNkMGE5=
ZWMyZjk=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYWNjNWZkNGIxMjZhOTlj=
YTFmZDEwNjA5ZTBjNWMxMmU3MmQ4YjMwMjg4MDkyNGY4ZDJlYzFlMGNkYTliYzEzODg1MmQ4NTd=
jNDhlMTkyY2U2OTgwNDdiMWQ2MzkxZDg5MWZkMjEyOTQwZDhlODc4NDViNTU2YTlmMjA4NGZhYm=
NlNGJjNTExNWNlMmU1YjVmMDU4MWJhNDgzZTJhOGM1NDIyMzQyZTA0MjM0YzQ5NTkzZDY2OTEzO=
TU4ZjdlNWUyNTI0OGNhNzk4N2YwNzBlYjJhNGQ1MTBkNmIxNDU1MWMzNDc4ODZlZWQ5NDljNjBk=
ZWFjNTJlNzY3M2U4NTExZGU4YTkwN2QzNjlkMDA4Y2Q1YzFiYzYyNTg0ZGMyNzZmOWY0Y2FmNjI=
zNTBlMjM5NTU0NGNjNGNjODhjNzYyYThjNmViYjVjNzJjNGQxNDc5OGFlNWY2OTc3ZTUxMzExZj=
c4ZWFlOGVmNWMxODkyOTVmZGZkZmZiNDU0" target=3D"_blank">
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
?u=3DOTEyZWVhMDMyOTNhYjQ0MDYxOTY2MDRhZmNmM2FlZWRiN2UyNGI4YzgwZmJiYWFhYjE3Yj=
BkNDA5OWZhMDUyYzMwYjQwMTZmZDkyZjVjOTEyZTJiYWNkNWEyMzg2YTI2N2UyMmNjYWFhMDljN=
TFiZTI1NjhjMzNmMjRkNzBiOWYzYWNjODk0ODBmMGQ4NzI2ZDdiODYyYzY4ZTcwOGJkZWZlMzU2=
YWJjNGY3MTRiOWFjYTljNjQ1YTg3YTY1NzRmODE5M2UxNzRkM2I4ZjBjMWRhNjIyZTdjODVjZmU=
xMTgzMjgyMDczZDE1YTkyNTdlMDVkNzZjMWQyNzI2YjNkYjM1Y2M0ZGU3MjJjNDAzMGNkMDJiMD=
NjZDY1NWIxNDQ3YTU2MzYxNjY1NDg3NmQ1MzZlZDQ3NDEyNWU0ZWU2YmMwMjE3YjQwNDMzMzhjZ=
WFjNGIyYWYyMmJiZWRlY2Q2MGI3MGMxMWYxMDA5YjIxNTlhOTQ4YjYxNWI4" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DY2RmMmUzY=
jdkNGQwZjQyYjVjOGNmMGIyOTNjZTcxMjcxNzdmNGU1MTE1MTAyODNjZmU0Y2U2MjQ4NTlmMjEy=
MzViNjYzMmVjZmRkZjdhMTM1YzkyNTZmYjFjOGYxMTJjZTFjMTNjMmY1YTQyODlkM2UyNzU0ZjR=
kZTc3YjI2OTY4OGQwNmI0Y2Q1Y2U3ZjY5NTY2MzM0OWVjNjVjZWIwNmYyOWI2NDEyZGYyNDQ2M2=
ZkNmViNmYyZjE0NTljMjE1NjY1ZGIwZjFlMjIyZjMxNDNjOWIwZWFlYWE2YTg1Y2UxMjc2NDcwM=
mY0ZjExY2UzYmUzZjhhYTRiZGI0MGQ3ZmM4Y2NiZGIzMGRkYzM0YjJiNTYxMGYwM2U4OTY0YjBl=
NGY4MTI4NWNkM2Y5Mjc0MTUzYThhNTFiZTgzOThjZGI3OGQ0YmY4MjNkZjUwNDY4OThkODk3NjM=
0MGUyN2RmOWJiNGNlNWE1YWQwMTdhODdlMTgzYWQ1NDM3" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNDg2NTU=
1ZGZiNjhjYjAzNjk0NmU0YzMyNGY0MWYxMGE4YWVhMmQ1NGU4NWIyNDJmOWEzYjM1MDY3MDQ2ZG=
UxYTZlYmI0MGEzZjQ3ZDQxMzlhZmJjMmJkMDA2OTQ3NDJkZmI2ODdiZTY5MTYzMTM1NjBmYzczO=
WZlNGJiNDUzMjBhYzM1NGY4NTY2ZmE3NzVhM2U3NTkxN2Q2MmNjZTU4OGVmZDVkN2M2N2NhOWM4=
Yzk2Y2U2N2M1NDMwMmY5OWRjYTJjZDU2Nzc2MTY4NzNmZGNjMzlkNDc3YWRmMWM2NmE5ZjViZDJ=
hNGQxNTYzYWZjNzFhODhmOTYzOTUyNWNmOWY1MWRlZWRlYTQ3ZWFjYmU0Njc2ZjQzZTRiYjljZW=
QyYjkxODY4NjQ1NjYxMGQxMDAwMjBhNTIyMGYwNDMzMTBkNDk5NDRhMDJlZDQwYjQwNWYzNTY0Z=
DliMzVhN2IxY2VhOWI5M2UwNWM5ZTliNmVhYTVhYzk0Y2Fl" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNTMxM2JlNjEx=
NmZmNTM3YWMxNWIxNDAyMDEzZjg0NTlmOGIzODNlNTA3ZDRlNTcyYTg3NzQ2MTQ4MmNkODg5ZGJ=
hNmExZjg3ZWViZmNlNmI4ZTczMjk2NWQxZjdjMjhhMmNhMDc4Zjg0MGFmN2UxNTNlYjJhZWE1MD=
YyOTIwYmY4YmVlNjAxOTU5NzA2NTY5ZjcyNDc0YTU4ZjcyNmYxZjQzOGE5OGZjOTkxZGU2ODlmN=
zE3MDVjMDhmNzZkNGQ2ZWI3NTM2Njc4ZGEwNDE5YTg4NjU0ZTRhNmRiM2FiZWMzMjc5MGJhMTUz=
YWY0ZDMyMDg4MmVhODNmMTk5OWYwMDIxZjljNTgyYjQ0MTJkOWE3ZTg5MWFmODAwMTRjZTQ4MDR=
lYzAxMWI4YWE2YmQ0Mjk5OTk5MjEyNzYzMzAzNWRiMGM2YWY1NDM0NDZjYmQ4ZWJkNjVkY2E3Zj=
VjYmI5YjFlOGE2ZDVlYTgyZjY5ZDFlODhhNmEwZGFj" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DZTA1NjUxMzcwYjg2Y=
zRhYjc2MzNmMDYyNTgyMTM4ZjIwMTE1ZmQ4MzRkZWNkNzM2MTgyZTFlZjA4OGNkY2RiNTkxYmZi=
YzY4MzM5MWI4MWIyY2YzMWVjN2M3ZTJhNTYyMTEyNTU1OTBkOWEzZTZiYTQ4NzliMGViYzAwMjl=
lNjllOTg0YjU2MzQyY2E1ZTU3N2FhM2M3NGQ3ZDBlNDJjMDBiMTUxOWYzY2M0Mzc5MzIwNTkxOD=
k5ZDM5N2MzOGRkMDE0ZGJlMTk0M2E4OTA1ODI4NDYxM2RiNGMzYmJiNmZlYTZjZDFlNGUwMmFjN=
jZiMjBhOTI0ODYzYzRlMjYyMWFmZmUxMDdlNDg2YTQ3ZGY3M2VlZmRhNzMxYTk1NGU4YTYwZGRj=
Y2I5NzM3NThmMjM1Y2U4MGJjYTBhZjkzODZhYTFlYmZjMDI1Mjg0OTVlNTY4MGE0MzI4OGJjMWQ=
zMTYxOTEwMmRlOTdiY2JkY2Y5OThjMGY0MWI3" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DNTMwOTkyZTNiM=
DEyZTE5NWUwODlkZjJiNmY3YjdjZjg0MTc1OTFlYjllOTBmMzdmNzM1M2JiMmQwNTYwNWVmOTE2=
YzgwNTg1ODAxNTNiOWNkM2RiZjNiY2EwY2I0YWIyOTFiM2MxMjEyYTFiOTBjNGM5MDJiMzhkMDY=
3NGJjZGI5NTMyYjYyZTFiMTQzNWNhMGE0NTc2NDI3Yjg3MTdjMjllZGI2YjBhZjk2ZDM1MjU0Ym=
E1Y2ZkZGRlMDEyZmY3OTI1M2NkZjFhZTdkYjkyMTFhYmY4ZmM2MTk0MWMyNDNmNjlmMWU4ODY4N=
2U1MDNlYmVhMmE1YTU1MjdhYTc0NGI5Y2JkYWQ0MmQwYTBmMmI3MjcyOTBjNmY5ZGQwZTQzZDk1=
ZjM5YzMwMTQwOWEyNmM4YzJkOTM3ZDFjMzBjYjU2ZmMyY2NkZTRlMzFkOTNmOTkzOWUzNWUxOTI=
1ZDZlODdhYTkwYmNkYTUyZWMwZmQyMmY5MmJiNjdi" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYTdjNWE=
wMDEzNzAwNjVlMzI1NzY4ZjdjMjQ1ODFiODZlYzNhNDhiNzE4ODNiMTdlYWZkMzVjZjg3YzcxND=
FhNWFjOTgzMmQ3YTlkMjY0MmFlMTMwYzE2MDhiMTc0ODQ4OTBkOWRiOWY1MjYzNWJhMGQ3ZWZjZ=
DVkYTY5ZTg4NTA0YTcwMzRjNDY5ZTU5YjM0NTE1MjkwNzBmYWFkNmJlYjM0NDAxMzFlN2I2ZGRj=
NzY0ZjA4NzZkNWQyYjBlZmQ1OTBkNmVkMmQyYzdhMzNlZjYxMDU1Y2ZjZjRkMmY2NjFhMDgwMDA=
1YTRkMWFjZDEzODg3NWU5Y2VhMmQ4MTk5NTgxZmExZmU0NWI0MWUwYjI5NmNlNTM4ZGU4ZWZjMD=
g2NjRhZjFkZTI1MmRlY2IwODYxMGY0ZTc3NDk1ODE2N2E3MmExOTFmZDZmN2FmMDAzMTYwYTE0Z=
DhjNmJjZTBlNWZlNGFlMGIxNTNkODlhZDZlMDNkMjllM2FmNGI1Mg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNmY4MWRkM2U0NDU3NDVjZmNkOTRhYj=
lkNGQ3YjI2YTEyMjljMDZjOGRkNjM4ODI3OTYyNzQzMjE4MDRjZWZkNDMwOGUyZjk5MmRkYzg5Z=
TI1YzYwMWE5M2QzMTgyMDkxNzViZjgwZjA5MDNkNDI2MjY3MDg0NDJiMGE4ZDEzOTllZjU4NjI1=
YjVjZDdlNWM1MGU0MTU0YjVjZmNkODRmZDJkMzBkOTIwYzhlM2UwZjNjZmRjZmY0OTdkZGJhNTU=
5MWI5NTg0MmQ3NGE3YTI4OWIwZTdmYzlkNWYwNDgxNDlkODY5MWQ1MzgzZTA4YTFmYjEyYjczMD=
Q3ZTRlMDI0NWI2YWM2ZmQwMzUyNTU2NmIxZTRmYzg4NWVlYWRmZmYzNDM0MjlhMGFiYzBiYzE2Z=
jk0OGNjZDQ3YmU0ODFmOGFmMDA2YWJmNTQ4MjVkYjFhOWI4NDUxMWRkZjdkZDRjYWE2ODMyZjhm=
MWI4NDc4NDdhMjU4MDM3Mjgy" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNjgwZGQxYTJjOGIxZTM4YzVlMjY4NG=
M5N2ViY2YwMTExNzg0NjllYmRjYWZmZjViMjVkMzdjYTEyYmI5ZTBlMmQyOGU1MDVkN2M4ZGQ2N=
zY1YTVjNDUwNzFiMGEyNzNjOGZiOGRhNWJjZjMxNjc5N2Q1MDE1Mzc0NGMyMmRiNjY4YzFkODIy=
NDNmM2YzZDIxNTFmNzk3ZjQ0N2M5OWUwNDkwNDY0MmVmMjBiNTA3ZmNjMDVhOTZkYzFlZThkMWZ=
mOTI0OGEwYzQxNzBjMWQwOWQ1NTc0M2ZkZjY1MmE0Y2VmNTY4YjU1YWQ5ZmZmYWYwM2RjYjc4OT=
dhODg3MDE1N2M1ZTVlMzA2ZWUxNmQ1NDk1ODgwYzFkMzA3MzM2ODYzNDdhZWNjNTIxMDVkMWUyM=
zU3NjE1YmViZDM4OGM4ZWU4MDE1OTA4NTVhYmNlOGRjNzdhNjE1MGM5YmZjZjIzZjNkYzE0NGM4=
NjdhZjFhODAxYzM0NDhjZTNl" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzEwYWQ5NzQ4NWM0=
YjU4OTllZGRhN2U0NGNmODViYzEyZTVmYzJlNGZhYTMyZjliZjY3MzQ0MzFhNGQyNzFlOWU1YTE=
zY2EwZGUyNGJmMGE5MTFhYzcwMWRjMzcxODJkYThjYmUzYjE5OTFmM2U2NDg1YWU0ZTU1ZWM1Nj=
QxNzFmNzYxZThmZGQ3MDFlMzgzZGFkODRiN2RjYmI5MTRkZDVkNmU1YzA3MWM2OTlhZmNkMWU5M=
TliMjdiM2E5MzY4YTU5OWUwNDg0YmUyMTk2ZDMzNDE3ZWI0NDcwMjUzOTk0MGM3ZjZkNDE2N2M1=
ODE0NDYxN2I0MTBlZTVlMWYzZGVkNDUxMmE4ZDM4Mjc5YTUyNTMxM2ZmYWM2MmM1YjdkNTY4N2J=
jOTU0OWI4OTU1ZGJkOTcyMmY3ZGRjNWU5M2NiZjdlZDBlYjE4NjI1NTgxYTE0ZTFmZDRkMTM0ZD=
Y2NDljMDExMWI5YjQ0YjNhMGYzZGVhYTFhY2EzNmYxMg=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTNjMmU5ZDFlYzAz=
NGRlYzBjMWI1MTE4MzJjMTkwNTk1NjZiN2QwNDdlODlmNzUzZmY3NDY3ZTlmNDg2NTlhNDlkODN=
kMmE4YzMxYTgwOTE5NjI1MzM5YzQ0NWQ3MmJiNTlmYzQ2MWM0YWQ5NWM5Y2Y1MWM2Mzg3ZjZmOD=
IzM2JkOThlZWQwYWYyMmI3NTFlZTgyOTYzN2I5YzNlZjJhODMyNWRhM2QwMDQzNmJkYmI3Y2MyZ=
jY5MmQ2YTVkZDMxMWE4NmM2Y2VmNGE1NGQ5NGVhYWI3YzJiNzNjOWJlYjRlZjMxMjQyYTFkMzNm=
MTM0ZjQ1ZmUzMDU1ZWMwM2EyN2RmM2E4MTAzNmUyZjAyYjYyNzgwMGIxMDVhMTgzYjg2NzhjNGU=
0M2NhMTg4ZTUxNzVjZTU5M2QzMmFlMjU2YTU0Yzc1MmYwOTdlNTBlODg3MjJmMmQ1ODQzZjQzYz=
NjN2Q1ZTZmNjkyZjBmMDE5ZmVkNjhiMzVmNzZjYWNjYw=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMDY1NThlY2VhZWRh=
MTZhNDczNGM1ZDE2YmQ4MDk2OWUxMDQ3NzM3ODdmOGZjZjM2ZDU4MzYxNGQzYzYzYWFiNmJmNjQ=
yYTc2OWYzNmNlZTBhNWRlNDliZTJiZGRiZmM2N2RhNjVmYjY0NTA2MDhlNGNhOGJiMTNhMmM3YT=
UxMWQ1MWQ2NTIyOTNjZTBiMzE5NjVmYTI3Y2I5MjdjZDVhY2U5MzYzNGMxZGMzMTg4MzIzNWI0Z=
DAwNjY4M2I4MzdjZDJiMzZhYTM2MGE3ZjIzNmQ0MjVkZTgyMWFjY2ViNjRlMmE5OTAyZWViOGQw=
MjEzNzAwOTg1YWMzNDI5MWIyY2VjNWI1N2EwZTBhN2M3OTg2MjRlNGE5N2I1YmM3N2ZjOTRmZmY=
yYzdhZjM4NTA0ODIxYjdmM2I5YzVhZDEzZjY1M2JjODAxMjY3M2Y1Zjg4YmJkYmEzMDZiMmU5YT=
k0NGFkNGE1Mzg2YzdjMTQ4YjY5NTJlNmIxZWI0YmI0MA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDE0NzZhNmJkYTJi=
NTVmY2M0OWYzOTI3NjRhMGYzZDdmZDQ4YWVjYzljMTA5YzhmNzIwYTgzOWEzODEzMDI2Nzc5NjE=
5MDI0NTUwNzRhNmEyZDRiOTdlY2YyYTdkYzJkYzQ5ZDcyOTYxN2YzMzdmZjEzMWY3YjY4MzAwYT=
kwNDIwNmE5MTE4NmRjNzI5ZjhlOTExOTk1YzJlN2IzMmFmN2U2MWIzZTAwMzZjOTRjZWQyY2VkY=
jU0YmQwZThjY2VlMDc4YjYwZTNiMjJhNTBlYzIxMzRmNjNhYTRjM2E5MzE3YjgwZDJlMjEzYzQ1=
ZTNlNzUyMGNmZjdiYWRjZWQxMmI3YjYzOWFhYTZjZDNmMThmMjE5YTRkMWRjODIyM2JhZmQ0YzU=
xMTQ0Yjk0ZGZlNzcyNmY3OWIwMmFmYjUxYWY2Y2I5OGE4YWY3MjFmMWFmOGQ5ZGY3NTIzODk4M2=
FlYTdmOGIwOGI3ZmRjZWQ3NmM1NTgxZWMyN2E3ODI3Nw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNjIzZjJlOWEwZDkyN2=
U0YjQ1MGRiMTkxZGU2N2Q1ODlhMzQ2ZTMzNDc0OTYyYjYzYmY4M2E1MzliMTVhMDI2YjU5MDExN=
jhmMTJkYmUxNWRkM2U2NDI0ZTI1Yjk5NzBmNDdmNzAxMjYwZTI3ODE0NTg0ZDJiMGJjODE2YTNi=
ZTJiNmJkMjc2MWUwZjcxNWRmNzVmN2QzYTcxY2UyMjdjMTFlODQ2MDcyNjg1NjNiYWE5YWY2NmJ=
iOGRjZDBhYWNmMTFiMDMxNTFkMGQwNzZiNDkyYzVlNGM2MTMzZjhiZWJjNzA4ZmZkY2E1YzcxMD=
U2ZjU2M2U4ZmI2YTg2MGNmNmI4MmJjMTQxN2YwMTc1MGQwZDRmNzM4NWQ3MjcxNzIyMjcwM2VjY=
WFiMDRkNzUwMzY0MzRiMzhmMTdmNDdlNmVmYTA3ZDEyMmVmNzdmZWFlY2Q5NWFmNjMwMzVlMTYz=
Y2VkMzc1ZjhjZmFjZTExMDhmN2JhZDg0YzIwNTA4NQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DNzRmMzczMmRjM2M0=
NWEzNDdlM2IzODc2NjdmZDEyNTc5MzYzNjQxNjg0OGZhZDg5OGU0YWU4MmMxOTc2NTc0NGFiY2Y=
wMzJiYmUzZjRkOTBmZDU5M2ZhNjg1Y2U3NWI0MGU0ZjM0MTM4OWNhOTgzZTZjMmM4MWEwNDI4M2=
ViMzI4ODJmM2FlNTA5NTIxOWU4MTdjY2JlY2VhNWE4MWIxNmZlMzgwNDQ0ZDY2NzczMzBlODYyN=
zJiOWUzYzQ5MWU4NTljOTNmYWMyM2EzMDhmZGE5NWZhMDBmMjIwZTRiNTY1NmUyMmU0ZGRiYjRi=
OTM4NzRkNWEzM2YxYTY5YzI=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DM2EyNzU5YmQ1YjQ3ZjU5ODkzZmU0NDY2ZmEwO=
TBiZWIyZDkwMzI2MTYwMzJjNjI2MmEwMmU1ZjRlNWU3ZGM1MjRiMGU1NDJjOTljNDEyZjg5NjJl=
YTU0ZDQxYzRhZDJmM2JhN2YyZDFlMWVmZTNjMmM1ZDYzMjRkZDhmNGE0NGM0ZjhmMGNhYTU5MWU=
4YWUwOWUxZWQ2NjBkZTY5ZTU1YjgwNWZiMGY1MmMxMDI4Y2Y2ODhhNzFjNjhlN2U0OTdjMjMyM2=
U4Mjc0M2YxZDdhYmVjYjlmMjZiNWUzNWU0YjIyMDY0YjQwYjY1NmY4NzYzNjNiMjg2YWMzOTMwZ=
jFjOTY5YmVmZTNmMTM2MTkyNGVkYTRiYWVkNjY5YmJlZmNjNWZkYjIxZThlOGIwZmM2MmM4ZGNh=
NDBkNzY5YjdhZmVlZDAyNzAwM2FkZGU0NThmZGI4Y2JmNmM4MjQ0ZTE5MjZlNTRhYzA5YTg4MzB=
hYjEzNmFjOGI4OTJmNGIzNWJmNGRlODlhZjMyNTQ4MDk0YzBhYTFkMTgxOGJjNmYyNTg1MDhlND=
UwNzJlODAwNjAyMzlkNTRiZTk=3D" style=3D"font-size:12px;line-height:134%;font=
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
