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
From: localhost:1333?u=3DNWU2MDVlZDNlYThjYWY2YmU3YzBkOTdjZDEwZWQzODFjNTU4Y2=
Y0ZDM4NGExNmE5MTBiNGFlNWE4NWU1Njc4YjRjYjA1ODBkYzMzYWE2 <mail@eg.expedia.com=
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
<localhost:1333?u=3DMTZjOTFmMjNmZjJlZmFhMDg5M2Y3ODQ1NjYzNzlmNTUxZGU1Mjc0NmM=
5Zjc4MjUwYWU4YTM0MmIyMTIxNzVmNTRmNjI1MjQ3ZTFlMGYyYjhhOWU4NmVlNTI5OTE3YTU5OT=
U5YWRkYzgyYTAwNWQzN2Q3YThkNzg4ZDVlMTdjNmQ1NTIxZmFhZmVmMzAzYTExZDJiNTFhMWY1Y=
2E0MDA5MGQ5MDk3OTdiNDBhOWM0YzI2ZDQ1YzViNGMxN2I0YjRjODJmMGFlMjM4NGNmODYxMjlk=
MTczNjQ1MWUzMzM3ZTcwZjJjZmE3NDllNGM0MzUwZTYyODQwNzEwYjQ2NjAxM2E5N2ViMzU3ZjF=
hMDdmNDEwNGNkYmMyN2E0ODE5MGM3MzMzODYzMGY0M2YwODBlOTUzNjM1MTI5MWY0ZDUxZGE1MT=
M3YTY2ZjY0OGYxM2U0NTg2NmVhZmQ2MjgxNzQwYjAzNWM0ZjczMDdkZWZlM2MyNjkzNzNlZWZi>

* The Travel Edit
<localhost:1333?u=3DZjNkOTY2MjczYzQyNTAyODQyZDM0YjU5ZTk2NmZhNTEwZGUyOWYyNjE=
wODdmZWUxZjYwODcwYjljY2E0NDlhYzUyZmE3ZjkwNGIzZjgxZGFkNWUzYTQyZWQzNjkzM2JhMT=
k5YmY4NDYzNGQ2ODJkMDlmYjMzN2JhNzlkNTU5NzVjZjI3NmZmYjJlNDJmNTE3ZjAwNzVkN2QxO=
GE5M2UzNGIwNjg0NzIyYTI1MjcwNzE5MzIzNWIzZjI4NzZlMDVjZGVhZTRhYmJmNDU0MDEwZTll=
NDAzZjc0ZTcyYzVmYTY5ODUxZjY2NGViZWVjMTM1ZTMwZTM3Mjk0MDRjNmZlOTYzOTNiOTVkODF=
hMDQxN2E3YTJjYzFjN2FjNDk5Nzc2ZTRiNGI4NjlkZTJlYjIzZGU1MzdiYzhlMDAyODgzNzQxMj=
M3NGVkOThlYTJhMWQyOGM2ZmYxN2JhNzE0MzkzNjQzYmQ5MzE2MDE0ZDJlMzk2ODU0MDkyZWIx>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNWQ3MTA5ODQyODQ0MzJiZGUxNzdhOTFkMmY5OTNmMDQzZGQxMmI3YzB=
kMjY4MzVkYzAzMThhZDkzNzUxMTk3Y2U5NzBlYjEyY2MwYTk3MzViMGQxZWYxODUxODdlMmQ5MG=
MxZTQ5NzdmMGFiZWNiNGNjZGEwZjg2OGFhM2JkMzkyYzE3NDc3YWU4YzgxYjRkMTI0ZDBkNWY2O=
GFhMTFkYWU5OGJlZDNkMTYxNzM5MjAyMmQ0ODUxZjk0NzdjOTU1MjM0N2RjMWEwNzNkZjY4MmE0=
NWViODViNzg2MDExMTJkOTA1N2Y4NWY3ZjJhYjBiMTRmMzNiN2FiNWU4MDQxZTU4M2Y1NjMxZWR=
hZjBhZGM0MjJlMmI5MzJiNzM5NDE3ZjIyNmNhOTE2ZmIyM2M3YWFlMjkzMTA5NTNkYTI4MDhkMD=
M0MjM1M2ZmYzc5MDJiZjJkMmNjMjJjOTNiYjg4N2YyYTVlYTZkMDY2NWNkMzNjYWRiZWJkYmY1>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNjYxZjk5NmNjNjI3ZTk5OTVlYmEyZTFkMjBjOTU1NjJmYjFiZTRlOGV=
iY2ZkZmRkYzNlZDNlNzQyZGE0ZjExOTQ1NzJjZWE4N2RiY2Q0NzljYzM1ZDVkMWMyMmJhODVjMm=
M1ZDBjOTg0NDBkNmZlMzgwMmQ5MzA5M2JhMmYwMjQxNWNhMTMxZWY3Mzk0YmU5M2JlZTQ5ZmIwN=
DZlMmI0YWE5NGU4OTcxYjgxN2FiOThlODkzNGI5OWI4NmRjNzU4OWRkYzRhYTllY2Y4YmY3M2Q5=
OTBkNTc1ZGQwMDliNjM0ZmM1M2E1MzI3ZjEwM2ZkNTUyMWFkNjgxMzQ1MmZhMWJiNmRmNTVjNWR=
lNDk1NDk5NjNjNjkxYjMyODZmMjRiNmQwZDU4N2NmYmYwNmJhMzZmYjZmNDQ1NjI0Y2U0NzAwZD=
RhMjc4ZDY5ZDNhNzdmZWQ5ZjkyNDY2M2NkNzU2YjliY2M1ZDQwNmM1ZTNkNzA4YTVmMTBlMTRl>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMGVkMjI0NzBmZGRjNmVjMjgxNjRiYTJkNWM5ODFjYzg3MjM5N2M5YjI=
yZGU0YjcxM2MxYzZiYjVhNzI5ZWJhMTcxZThjNjE1MWFmZTIwYWNkY2RmMDU1N2JjYmY1MjViZD=
Y2YmZhNWYzODllNzRlNDAwODFjYWJkNjA4NDYwMzBmYWM0ZDRkOTFmMmVkMTYzODNmNTRlMDViZ=
TY4MGM5NGY2OGQzMmQ5MjUwZDY5NjY0MTM2NzIzNDczODU2ZDlmMGE2Y2MxYzRlYzYyYmIxZjM1=
NjBjMjYwNmNmMjI1MzdhNzc4ZjMyNzNjYjczM2IxYjE0MWZkNmFhOTJhMmM0MDZmNmQwMTJiMmI=
wOTE2NGM3YmI5ZTlkOTMyZGY0NjI1NmQxNmMyNjY0Mzg3Y2VlOWY4NzJmZWQ2ZWM5MjYyOWQzOD=
BjMGI1YmIyMjUwZmM1MDExNjNkMzM1MjJlYWM4YzUwNzgwNjA3ZTczZTYxNTEzYzI1ZjM2NGQ3>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNjEwNjY2NmRlZDM4ODA2YmFiY2VhYjRjM2FhMGFlYzlkNWRkMDVlNjJ=
jYWQ4OWY4MjYxNjRkODA4OTA2YzQ2MmZlM2I1NjA5ZmI0ODQwNTVhNDA0ZTVhNjUxZmU1MmFmMW=
UwNzU4ZWJmYzBhYzcxNTE1NmQ1NDFkOTk0YzVmMmNhNTY2Yjk2Y2JlNmYzOGExYjI5ZDkzN2U4Z=
jAzMDczOTAxMGEwYmRjOTFlNjMwYjYwNmRkOTMwZTZiMDg1ZGZmZjFlNzI2MzQ0ODI5Y2RkMjk0=
N2M3NmQzY2M4NDQ0YTU5NzA5OThmZGUzNWUzODMxMjkxODU3OWQ4YTNmODkwZDhiNjQ0ZTE2YTh=
hZTE0OGYyMDU5ODFlMDFjODA1ZDE1YjUzZGU4MzUyMjZhZDk5ZjIzZjYzNjdkMTM3YWYyZDY4Nm=
U1MDg5MmRiNDNhMzFkY2Q5MGI4ZDY0MDFjMzg2OTJlYzg5YTIzYjlkNmM0ZDZjNTA4YTBlM2Ix>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNDlmYmEyOGEzY2I4ZTEyYjM3NzI5MmE2Zjk5MjU0MTA4OTc0NzI3OTB=
lMTU4OTc3Mjg3ZjEyYjM5ZjFhMGE0ZmNjY2FmMjRlYTA4MGZjMzRkZjEyYmJkNmUzNDZjZWUwNT=
Y0Mjc3NjI0Mzg2MDJmNzM0NWNjMDE3ZWY0NDIwZGU2MTQwNjVkZmU3NTFiZjE0M2ZhN2NmOTY5N=
WMyNTQzNmVkMDJhMjkzN2ZiMWFmOWFjNThhNTcxYWE0YzhjYmJmMjZkZGZlMWQ0OTRmYzZkYmUz=
ZTg2MzNlODM5YWM5NGNmMzg5YWVlNjQ2ZDdjMWYzYzRlMDdlNjA0YWUzYTRhMGM3Zjg4NjI1ZDM=
zZDA3MmQxMmRlZjkxZDZiNjkwOTc2MTRkNGI2NjNiYzliZWQzNGQ5OTQ2MDIyNmMwMWFmMjMxOW=
MzMTFlNzk5M2ZkNTA1ZTU0NTcyMWVlNWVlNDI2MjA3ZDQ5NjgxYzU4OTU5Yzg0YmYwNDQ3NDMx>

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
<localhost:1333?u=3DMDJjYzEzMjc0OTc5Njc1YTc4YTFiMmNiZDdmZDUwZTVhZjg3ZTQ2MzR=
iOWU2ZjEwMjIwOTkyMDNiYWZkMDgzNzNmYTFmZWI3ZGFiZTMzNWMxYzQ3MDcyNzA4MzQyN2Q1OG=
RmZjQyOWU4MzA4Y2YwOTI0M2M5MWVlZTgyZWIyY2U3MGI2M2M1MGVlYjQzODg2OTczNmZlMjI1O=
WUxNGE0MjVjZTkwMzYwNDMzMTkyZmNlN2M1OTY0ZmI5MDA0NDkyOTIyNGE3ZWZiYzQ4YWZlYTVi=
Mjk0YzU1NDAyNzc0YmYyODU2MDAzODVjNDQwZDU1MTlhNTU4NWY1NTVkNDU2YTdmZTJjNDE2Mjk=
5ZTU0MTQ5MjBkYjllY2FhMmE1NzA5MDgwNzg0YzQ3MzE2ZjQ1ODNjNmE3MDE5ZmNjY2Y0NDhkYm=
NiYzRkMTMwYWU3YWRhMzVhNDUwNGVjNTY5Yzc2YWI0ZGE2NGM1MjM3Nzg0NGU2NWIzMTY4NGVkY=
jg0Yw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNGQwMDBmZDZkN2ZlM2Q4Njk3MjdhZDNjYzZjNmQwZTIwYmJhOGRhN2F=
hN2UwYjAxNjJlNzNhYWJmMzQyYjFmZjAzMDc2MjA2YmQ1ODc4NzRjNzAxZjAzMWQ0ZTQ0Yzc5Yz=
VkNmQ1ZjE5MDJhNTIzOTdhYzY5MzFlNTVjMDQyOTkzZTdlNmZmNTg2NjJhYjIzZDZjYjBmYjMwY=
jIwODA2YmM0YzU1MjY3MmE0NjBmNjBmYTYyMzEwNGI2ZGQyMjIxYjdhZjZiYWJiY2FkMDM1MmRi=
MTFjM2I2NTZjZDA2YzhmNjNkYTg5YmFmODg5OWY4NGQzZDg5N2NhM2FkNWU5NjFkYWMzMjA2OGI=
5Njc4NGFjYjMzMzI2ZjEzNDgyYTNkNTljN2JlYzFmNzg5M2VmNTQ3Zjg2MDNlYzFmM2M1NTQ2YW=
NkYTM2YzU5MWUzMWFiZWQ4MGEzOTY1NmU4M2JkOGFjM2FlNGI4ZTMzN2Y5YWE4NmMyMDMyN2U0>
  [image: Google Play]
<localhost:1333?u=3DYTcxMjEwNWNhZTVlZGNmYzlmM2MyNjBmYzY3MjI0Yzg3NmNjNGI5M2U=
2OWE1ZjkwYmNkYjIxZDk0M2FkMDUwZTM2ODQ4NGMxNGRjZGQ3ZWU1MDMxN2RmYzNkMmZjZDQxZT=
NjOWQ1MTk5MzU4YTZiNTc1MzFlZDIwNzdlNWNhMzhjYWYxZTg0MDVmMDYxNjJhOWNkNDcxZmJjN=
DNkYjY2NTczYTFlOGNiZDYwZGZhNDM5ZTczYWFkNTRlOTA3M2NlNDg5NzAzYjdiMTk3ZGY1YmRh=
MDM0YTk3ZmY2YTc2YjQ2NjcyMGMyNjU2NjY0OWRjYTkzNzQ1YmVmZWYwYzVjMTg3NjM5ZmZhNTd=
mMDMyOWZjNTJhMDcwNDJhZmQ2OTBmZWEzMGQ4MWI4MjNhNzBkZTE0NmIxN2RhOGVhOGI3ZTA0NT=
BmNDlkZGE0ZGYxMmI1ZmE5MDdjOTVmNTVhYjRhMGNlNGRiMDJhN2U4NDA2NTVlYzcxOTE1MjFh>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DYTZlZGQ2NWIwZmEwOWZhNDYwZjg4ZmU5YTQ4NzExOWJhM2NjYjNhYmJ=
jNzRiMDc2OWYwNGM1N2IwMTA2MmI3MmQzZDg1YjliNjkyNTUwYjljM2Q3NGQ4MDA3MjIwNDQ3OT=
c1ZDVkYTMxYWEyZDU4YTJlYmExMWIxMTI1OWQzYWI1YjAyNTFiN2NiOWI5YTExNTA0ZjYzODc3Z=
DQ3ZTIwNGE2MTZiNzFlMDVjYjkzZGRjZjU3YWYzMmU0NGZiYWUyMzQzMDU2ODk5MGIwY2VkODc3=
YTk5ZWY4ZTE2NmJiNDQ0NDc5YzRlZjc1Zjg3NzQ4YTg3NDExMTRlOWIyODlmMDJkNDI2YjZiMDF=
jNmU4MDkyM2JlNWUzODQ4ZDRhNWYxODBiZmQ1MjhlYmExOTkzMjg0NWEzZDhlNmYwMzkzYzY2NG=
UzZDU5YzVmMGEyMjQ2ODliNGRkMDVjNWQ5NjQwZjcyYjIwYWZiYjJmYjlmYmZkODMyZWRlNDA1Y=
zA0ZQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMzYyYzY1YzA1YWIyNjdmMmJlZDBlYmJlYTVjMjY5NGY3MDA2OTRjNDk=
3NDQ1YjYwOGM4ZmZkM2E3YjUxMDkwNmE4MjcwZjc2MzFkNTljZjQ3OTJhN2M3ZDljYWU2ZjEzMT=
k3MzUzMTkwZGIwOGRiMzVmYWY4NTVjOTI2YTgxZTg2YWEyMTI2YTRjNzhhZjA4MGUwNGYwYjcxY=
2EwNjEwZjNmYzk0MWIyYTc0MDY3ZmI4ZDgzZTA1OGI0YWViYmUwZDA2YjM5OTdkYjUwNjI0ZDNk=
ZDYyYjYzZTJlMjk0YWY1OGU4MjY3YTgyMzY0Njk3NzVmYmQ0ZTkzYTgwNjE4YTY4MjAzN2UzYzA=
zOTliZTJjNzdlYzIxODBkNjY4MGIyYWNmNTkxNmRjNmMwNmQzODg4NGUyYzg2MDM1ZWU0MTc3Mm=
NlY2IyNWI3NTljYTVlOThlNTc3MDBiZWMzMjFlNjFjNzQ0MzY1NWQ4ZWYyZDA4MzMyZjRmNzFkO=
WJhNA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DMzNiODlkNzViNmQzNWE2NDdiNDZhNjNiNTE4OTQ1MWUxZmU4MjAwNGU=
2ZTE5NDQzOGIyY2EwNjU0YzE1MzljNzU5ZjZmNzU3MjNlNDRhODEwYzI2NzJhM2JlMTg3YmU4ZD=
k4MjA4Mzg3ZmIyNjRhYzljMWEzZWIzYTlhOWM2OGEyZDVkMzQzYzdmZWExNzY4OTVjNjI0OTIyN=
GNjOTM4OGU4YjE3YjFjZDFjMjExY2I5YmNmMjViOWRiOWZiNThhN2MwZTk2ODA5MTcwYWI4N2Vl=
MjNhZWU5MTNmODZkYTViMWM5NWQ1NTNjOTk5YjcwYzA1ZmUyZmEwNDAyZmIyYmMyMzgwZmRlOTB=
lNTg0YTdiMGMwYzVjMGY0Y2UwNWEzMjYwMzgyNmM1ZDZlZTIwOTA0ZWIzZmY0MDVlMTc4NDA0YW=
VmNDI0OTc1YTIzMDgyYWM5NmM5YjFkY2YxMjQ2NTA1MmIyYWFiNzhkZmVhMWNjNTRlMGY2NzQ4M=
jU2Ng=3D=3D>
   About Us
<localhost:1333?u=3DYzdhNjhkYTZhNjdlNDk2NGY0MjcxOTY3MDljOWM2ZjI5NjZlMDYxYjB=
iYzlhOWRjNWVkYzQ1MGVhODVhZjE4NDljZWM3MzcxMjZiNGRhZDE0YTFmMzllNzBmYTM4NDJjNT=
UxODA2MmQ4ZmUyNTEwOGY0MGY4Yzk3NWQwZGZmNjdmZmExZGZmNTEzNGRmYzZiYTMyMmM5YWZiO=
DBhM2Y4YjkwZTljMzVmMWFhY2Q2NGE5MmNjNGY1N2M2OTY5ZjA2Y2Q2ZjM1OTIyYTgyOGI0NzA5=
MzljZjBhODRiOTliOWFlYmRhOWQ0N2UwNzQxYjMzNTc4ODFhNDA0Yzc0MmQ5ZGY4NGMwNTM1ZDZ=
kYWM1YzY4NzA5OWM5ZmIxMDQwMzM4NGYwNTQ0MmMxYWNiY2EyMGIyNmVhNjY1YzViMDg3OTU4NT=
U3MWYzYjRkZTFhYTM4ZmUxN2E1M2VhOWI5YTI0NTVmNzQxMDkwNDVjM2UxM2UzOWIwMzczZTYyM=
Dk0Yw=3D=3D>
   Customer Service
<localhost:1333?u=3DMjdlMDI0NGFkMDNmNTA4MGY1N2FiMGRhMWM1MmE5NWMyMWJjNjNlYTE=
yYjUxMjMyMGI1Njc1MThlNTNkYTRlYzY3ZTVjMjQ0NDQ4MWZlMmFkZmYyZmRlN2I5MWI3MzJmY2=
FlMzE1YmJmYjg4ZTU5ZmU1MDgzYTdhODlkMGIyY2I4OGFjMWQ5ZDE3YmU3NTkzY2I1M2Q5MTcyN=
zFhNmZkZGUwNmVkYmZlNjhiYWU0YjJmMzA0OGU0MzMwMGFmYzI4NWZkNzBhN2Q1MTVkYWI3ZTBm=
ZTExNzNiYjRlYWE0ZTY0ZjhmMTQ5ODRkOGQ2ZmY4YmY3MzM2OGQ3NmNjMzY4YWE5NzAxMjNmZWY=
wMmJiYWYwNzNiOTA0MzZmZDhjZGNiMWI2MTlhZGMwNTg5YWM5OWQ3ZWRkZDVhMGU5OTAyY2I1Zj=
lmNjI4NDViMzA2NmQ3NjgwMWFhY2ViNjY1YWEwMmJkMjBmOWFiNmZjMDQyODkxMTdkZmVjZWU4O=
TMyNg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNzk0NjY2ZGZjY2M5YmU3NmE3NWIwYTE3YWU5ZjA3ODBkNjVmMjU2ZTU=
4NTU3MjhkODYyNTllMTczZWExZDY0YjRiY2Y4OTQzMjJiMWRlNzhkZGIyYTNiOWE0YTU0YzNhNG=
Q3M2M2NGIzNjZlNTBjOWI0Y2Y4M2RkNzhkMjI4MDM3YzU2MDYxY2JmMjBiNzQzZGVkYmI4NjAyY=
WQzMmRhMjI2ZDMxZGI4OTEyMmZmYThkOTIwNDg0NzQ0ZGI3YmRmOTZkMjAxOWE2OTEyOThlMzli=
OGM5MjYwMTQ5NWZlYTE1ZDFjOGZiNWVlYzFlZDJiODBlZDZiY2E2N2Q0NGU=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMzNjZWVkOGI4NGVhOTQxMzBlNDRhMzFlZGJkNjE5NzEwZjBhOTc0M2Q=
xNDZlZDJjMzVlZDU2ZDg3ZGUyZWU0MzBlNWJiNDU4OGFmNWQ2NTYyZWYzOThiZTY2MDNkNTZjYz=
U3Zjk3ZjJmNWE3NTVlYzJlZTJiZmI4N2M2Mzg5ZjhhMTgxNmY4YzZiYTdjMzYyYzE0ODM4ZTc1M=
DQwY2Q0ZmI0NzIwMzI4ZGUzZDIxZDU0OWYyMjI3NThmMTFlZGEzMzVkMTU3ZTI0OTE0Njg3ZTlm=
NGRkYTcxODAyZDQ0ZDNjODdlMjNlYTg2YTNhODhiNTU5Y2UxY2QzOTc3NTVmZjg3MDAzMzNkYjR=
jOTA5ZWQxZjVhZDMzYjBjMDU5MzQwYmMzNzJkZjZjMmVkNTc0NGJkYjUyM2E2NWRlMzU3ZGJiOD=
JiYWEyZGY1YmI5NGE3NmRmYmEzMDkwODZlMmUzYjIwODE4ZTI5ZDBiZTI2YjRhNDA1ODkzNGY5M=
TA2ZWM3ZDIxY2MyMzc4MTkxOGQzNjY1ZmIxMWU1MzYwNTA0YmRkMzMwZjI5ZTk5M2ZlZmRmZGZm=
NDFhNWI=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DMDU4ZDJlOGZkYjU2Y2I3=
ZGRjZDQ5ZDBlN2UyM2I4ZGM4ZmJlNzE1M2VlYmJlZDY5NjNhM2IyZGUwNWU3NzkzNTljNzQ5YWJ=
iOTQ2ZDE1ZmRjNDA2NDE2YTVlZWQ1N2E0YzZiYWMyMmExYTBhZGRjMTEyYmY4MTdkMDkwYmJiYT=
E4ZWExNWEzMzQwZTNiOWE2ZTliZDc4MzU0MWI1OWRjNGNkMzM3MTE4MmM5Y2Q1MWJlOTYwNTBjN=
jgxNDEzN2RjZjQ5YjllMmZlZDQ4MTJhNWVmZDM5MDY2NmY5MGJiZjJhZDQ3ODhlODk0YmY4MTZi=
NDRlNGIwMDQwZTEwNWIzODg5MDY1MGNjMzczMWFmMDZmYzA1ZmMxMzgzOWI4YzA0YjM5Y2RiMDk=
zODNmZDM4NmMzNzJmZWJhZmZlNDk0YTQxYTYxYmI2ZDQxYWFmYTc1NDJkYTZlMjI4M2Q3NDQ3OW=
FlZTQxOTgyYjc2N2Q5Mjg1ZjY4MDAzNzQ5" target=3D"_blank">
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
?u=3DN2JjZTZjZDk3NjRjMTJhNDY3NTYxNzMxNDQ3MDc0NTQyMzA3YmIyMDU3MmFiNTVkODUyMW=
RlYmM0ZTI1NTQwNGU5NjhiYjM0Y2Q1NTQ0NDcyODczNDI1ZDdlNDRlOGQxZTFjYzZiYmI1NGU0M=
TI5NjQxZjMwMWMzNGExOTdjYjVlMzdmNWFiMDNmODBlYzgyNDcyNGNiNGQ3NTIwMTA3YmU2OGQ4=
YmRiZGJmODJiZDVmMjY1NmUxY2FhMTA2MDU4ZmU2YTU0NGZjMDFhZTVjYTMzMTVmNzdjOGE3ZWI=
3MTc4OGQ3YjQxOWNkOTM2MjNiMTYwOTUxODM5M2Q0YjVmNmEzMWQzMmU4Y2Y5NzE1MmVmNzc2YT=
M0M2ZiMDNjZjgzZWNiMGYwZmQ5ZDlkODBmODliYTM1ZjJkN2RiNDIyYjUxNDNiNWE3ODcxOTAxO=
TNjMTBjMTRiNDNhMjIwYzYyMWQwNGU0ODgyNDQwOGQ0NzAyNWQwN2JjNzc4" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DZGFjZmY3M=
GMwZmEwMDc1OGIxMzdmMDIxMTk5N2IzZTdkYzBlNjg4YzBlNTIxNDZlMWVjMWEyNDU2ZmI0YmVj=
ZmU5OWIzZjUwNWI0YWNhNTlmM2I1NWM3MmU2NmQ2NzUyMzdiOTdhZGY3MTQ1NzY2YWU0YWVkMGQ=
4OWMzOWM0MTZiZTVjNjk1YjVlYjRiZjJlYmJkNzNmYjVkMTNjMGZiNDAzMjY0MTA1ZjAyMWFhND=
VhMGU3MmQ1YjIzYjlkMDYwODQyMzVjNWVjMDNjZWM5ODE5NTE0MzNlNWFiMmZiZDdlMzQ4NGRkM=
TY0YmU2NTRiYzY4YWQ0MWZkZWNhYjY4NDA2YmZkMzgxYjJhODY1ZTcwNzJkNmNkMmQ2NmE2Nzlh=
ZWNjODA4ZTRkMzE5ZjQ3ZTBjNTliNTM0YmYwNDc1ODYwN2YxYTEzMjY0NTM5NGE3MmE5NGQzY2U=
2ZjhlZTVkZTAyMThlZGQ2ZjYzMDQwMzhmM2EzZmQ1YzJj" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DOGE5YTk=
zYjk1OWJhNjBhYjdiNGVkM2ZjM2MxNThjMmNkMTQxZjUyYmE0YTdmYmJkNGMxM2ViNGYyNDdlYT=
UyNTFlZDM0NzE2YjQwNGZiNTM3M2ViM2I0NjgxODk2OGJjZTFhMTE1NWEzY2Y4ZDIyMzZkMTQzN=
zc1NzhiNDU0ZjVmMDQxMzU3YTE1ZDU1NzNjMGI3NDI3YzA2YTE0MjczMjNhNWZhY2FiYzNhMjM3=
ODgxZDJiNWI4MDM3ZGMyMzI1YjI1NjgzYmY4NTdkNTY2ZDczNWQ1YTJiOWQ4Yzg0MDM1Mzk1YTI=
3MGY2YjViNWU4MTAzMmQ1Y2Y3NDQ3YTU1ZDBmZmM4NGFkNjA4MjUyMWI3YWU4MmM0NDhkMjZiMm=
NjMWJiYzY4NTVmNGE4OTVmMmM2YzVmNzI1MjFhNzQ5YmEyMDhlMDM2MzczMTQwMjk2MThmNGUwY=
jMwOWMzNDA3NzI4OTc4NDRmODI1ZjJlNDFlNTY1NjAxZWQx" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DZTU1ODdhZDRj=
NDlmNWY2NjNlNzBjODhmMzg4Y2UwOTQ0MWQ4NjM3YTU3Yzc1ODE0MjQ4MjdjYTYwNWNlMGYyOTV=
iN2RhMGI3N2ViNGFmN2NkZTdjMDgyOWVhMzAxNjFhYTMyYWEyZDVhYTIxZDE4YTY3OGU5MDNiMG=
JlYTg1ZDU3YzdjM2ZhYmU4ZjRlNGI3NjU5YzFmNTlkMjEyYWM5YjM3ZmUyZjk5NWM1YmZiM2RmM=
zRkODg5MmY1MzExZjRjMDAyZTJjN2RiNTJjM2JkNTUxNDJlOTFjOWJlZGRkNTMwNjlmN2U4NTdh=
OWE5YmZhN2YyOWM5ZmMwYjIyMGVhNzY4OTRkNGNmZjc3NmQ0NWRiOTM1ZWYzNjFiYzA5ZGI5M2U=
zZTI3OWRmYmE5Yjk2NGUzYWQ1MjNmYjcyNzI2M2RhOTk0NzIzYzJhZjJjMjg1YThhOWE1NzFjYz=
RhY2FjZDkxYTA0NGJkMWQwNzAzOWY3ODY0Njc2OTY0" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMzQ3YTgwYTllY2MwM=
WNkMjI4N2JmY2M1YTdlMzk4MDg2Y2Q2MzFkYjBhZjBiNmVlYmNhOGZkOTVmY2U4MmY3Y2IyZDM2=
MGQ3ZmI1OThjZWE1Y2JjMTFlOTU5MmUyMTViYzI1NzQ3MjA2MDEyODg4ZGI0NTNhMzE0ZTNiNjc=
xYTUyNDBkMTNhNzFkNTViY2I5YTRmMmFjNzYxMWNiNThiZDY4ZDkxMzg5MGU3ZmQ1NWFmM2Q0OG=
ZlZjc2MjAwZDQ3ZDRjNDk2ZmNlY2VjYmE5NWYxMGJmZmFiMTI2MjY3Y2E5MmU5ZmRhMmI2YWI2M=
jhhNWJjNTNlMzk1MjhhZjNjM2QwYzBiNTlmNGYzNDUwODU0N2EwOTVhNjA0NThhYjJjOGQ2NDkx=
Yzc5ZDI1NmQ3MDdkMTUyZTk1YTA1NWFkOTQxOWIzZDRiN2ZjMzI0Y2VkYzRiMzUwMjY5OTg1NDh=
jZjY5M2RhZjkyYzI5NThlMjcwY2U3ZmQxZTU1" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DNTY5M2UzZDA4Y=
TQxMzIxYmNkNmNjMTg3MWFmYzNhMGQyN2JkMzU0ODEzYjYwZjBmOTg5OTZkNTk3MjE1ZjFhODg3=
ODllNTJhYTg4ODY0OWM2ZTY0ZjUxYjkwZTNmNjc4ZWIyNjFjMDZjM2ExZjIzZGU2Y2Y2NmUzNzQ=
3NDkzMTc1NWUyNmUzMzk1MzVlZWE4MWY0NThhNjQwNDgyMTlmOGVmYzMxY2IzMzQzOWU5Zjk1Zj=
hjMjFmYjk2MWU2ZWYwMDQ0MDJkYzM4MGQ4ODBiOGNmMjFlZjE3ZjRiNGUyMWUxMDc4N2M4MmY5N=
zc2MGZmNDRhYWE1NTU0ZTliYmVkY2QxNmYxZmM3ZjYwMGE0MTczYTQ5ZWZmNDc1MGVlMzQxMjIz=
MmUxNWM0ZjQ1NDYyMGY4YTY4YzY0YTE0ODU0MThkNzMwMDkyN2E3OGJjMTM5Y2I2ZDNiNzA1OWN=
hN2YxMjQ2NDk0NDlmMmQ1NjQ5OGVhYWE2MmRhY2Nk" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DMjNhMmR=
mOTM4ZWYyMzVlNmYyMzVmNzU0MWMzMzUxYTUwNjE4ZmMzNWJkZjIwZTMwMGM1ZTA1MzBhN2Q5Mm=
NmZDM1ZWIyNWZjYjk1MjdlZTAwZWJlMzZlZTc5YjhkM2IyODY3MDZiZDUzODE4MTAwMzgwNDUzN=
DM1YmQwODQ0NzhkYmIwNDVmOGUzODk5ZmFmMTAxODZmNTYyZmIyNzdlYmMwZmMyMmEyZmQ0ZjRl=
M2RjMjY5OWQyZjgzNDQ3ZjViNTE5NGMyNDkwODE0ZTA0MWVlYmEyMDVhNzMyMzg5NzhiZmQxMTk=
xYjg4ZjQwMWNlZGQ4YWRhYjhlNjUzMjI1ZmIxYzUzMjdhMDU0N2U1YmE2MjhhMzM0ODIyYzNiNT=
AwNzI1NzZiZjBlYmQ2NWNkNDIzNjZiMmE3NDU4MDE3ODFkNDY2Njg5MjAxOWQ4ZmYzN2E1NmE1Z=
WEwNTM1MGZkZDc2YTQ5ZDEyNzllNzU3OTY2ZGUyNzU3Zjg3YmVjMw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMjM4ODE3Y2IxMGU4ZGQxZjVhNzhmNz=
FjYjBlOWJjMzE3NTZmNGFhMjM3NjE3MjI2YWZhMmYzMWI0NDljZmNiM2EwYWE3NzQwYWNhYjhlY=
WZiYjJjOGJiYWI2NmY0ODcyMzAwOWY2ZjAxYjM0MTFmMDBjYmVjZTIyZDA1ZjllOGVhNzYyMWU1=
NzA1YzMwMWFhMGI4ODhhNGMyMDhkNjA4YTE5ZWMyMjFiYWVlOTc1MWY4NWViZDcyZGViNjBiYTA=
wODA1MjNlN2ZiM2IwZDQ4MDE2OWU1NDJiNmEyNjFjZDNmOWIzMDZlZjBmZDMyZDg4NjQ1NDgzN2=
Q0NWQ1MGU2MTI3MDlmMTQyOTc1YmUzZDRjM2M1ZTUzNTFlOTc4YzA5Mjk1NTY1NTZhMzdkMjljN=
TM3NzU4MDgwMWZhNGI1M2Y2MjgzN2E3YTA2MTcyMTBkNTg2YWQwMWUxNjViZjAxNWMwODQ5NDU1=
NWVhOWNiMjAyNGExYmIwOTJh" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMTA4NWE5N2I0NTAyZmEyZTE2OWE0OW=
ZmZjc5Zjk2NTdlYjZiNWU3MGQ1ZjBmNTMwZjY5OWE5NGFlMWIyMzc4NDk1YzNiMGY5NmQ4NzhhN=
Dc0MDEwNDI1MjdmZjczMTg1NmYxYzNlNTBmYWIzNGZmZDU0YjU0M2UzZTdhZmQ2MGMxODM5Mjc1=
OWJmYzk5YTdlNjMyY2Q5MDU3YWFiZjgyMDNhMGVkYjczNzMyZmI2NGQ4MTYxZDhmOWU0ZjZmMzA=
3MGRjNWEwZDVlZjk5YzVjM2I4ZDYzYWE4ZGQwZDUyMTUxNmM3Zjg3ZmNhNjRiMDE2MTE0MjAzMW=
FjMTM1NjdlODA0N2E5NWNjNDBhOWViYTc2M2E3YjBmNWFkNDY4ZDg1OTY1YjkzNjhkMjY5OTZlZ=
jcwYjE3Y2RhZDFmMDFkNDBlY2I0NTUyMjJlMTMxZjA0YTk1MDc1NDljMjZhM2NmNjA3ZWJiMWFl=
YzRmZWNkODUwMTgyMWNmYTM4" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODE1NmRmM2FlYTYx=
NWRmMDg1YmMyNWE0NmZmNGVjZTE2ZDcyNzNjNzMwYWMzZTM4YjU5OWVhZTFkZTYxMDBjOWIwNzM=
3NDdkYjIwODY1YWQyYzM0MjllOWRjNGFiMTZkNGY4MDliYmFhMGZlZjIxMDEyNjNkYTU4OWE5OG=
ZhNmRmMDM1MGJiNTMzNzM4NDVhYjJmZGU3ZTA0Mzg3MDY1NTQyNGVhYTBlYmE0ZWNhMWRmOTcwY=
WMxNWMwYmUyOTUwYWNlNDljOTZiMTNhNmQwZGNjYTJjMTMwMTI4YzI4NTNiZTRjZWM3NGJjZGU3=
MTdhYWE5ZTZjNTA2NTJkYmI0ZDVkNTdjYTA2MDg3MDZmN2Y3NWM0ZTk4ZjZlYTlhZTI5MGExYzF=
mOGI5YzAyNmQ2Y2FlNmM3MWU0OGIwNjA0OWE1NGEyMjg4NDRhMWVjMzFiODAxYWYyMDBmNDY5Mj=
k5MjhhNWNlMjVjYWU1Nzg1MTQ5MjhmYWFiOTM4ODRjYQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZGYwMzM5MWRiYzMw=
MGMyM2Y5YWMwMTQxZjZkOGExZDEyMjBhNDg3N2FhMmMwZTg3ZjA3OTU1ZTU5MDVkZTY3NjRiYzk=
2Y2I0OGEwMGIwNzYzMmZhYjFkMDFmYmU2ZTYwMzZkYTA3OWVlNTAwM2VjMzJhY2NhNDFjYTFhYz=
g3MWRkY2RmZDAzZGMwYWQwODY1ZGRlNDEyMTgwODdkOTZiMDNjNWIzYWI2OTNmOTFiMWU4OTZkZ=
DRjMWM5YTQyNmZlMjM3NWIzZGNlODUwNmIyYzcwNjAxZmY0NTUzNzdiMWVjYjYyODI5NmM3NDcy=
MGUwOTAyZDEzMDE2NWIwMmJkYTE3ZDBhNWVkZDRkZmI3MGJjYWNlMmZjM2QyZTU0ODZhZGVjYWJ=
lNmFkMTQ1NTgyYTY2OTBlMzhhZjZhY2YzMTQwODAxMDRkNWM1Mzg5YmI4OTNmNGViMGIxZjQ5NT=
kzMTZmMGUyMjRlN2Y2ZmQ3NGMwZGNhMmIyY2NjYzRkYw=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYmJjODU0NjU3NjA5=
MjhjNjg2NzNmNDAzOTFjODZjNmU0NGRiYjVkMzQyY2IwMzU0OTM4NGU4OGM1NzUwNTZjNTUzMDB=
lZWNjMWE5YTk0Y2Q2YjlkYTk5ODM0ZDcyZDg4NGI2NGJjM2RlMDEyNWQ3MjhiNjQ3YWU4N2YwYm=
I2N2I1ZDc0NGJhMDkwNzkzNGY2ZGEyZmJjMjA0OTlhOWY4YmIwZTI5YTUzNWExZTFkYTE4Njg1N=
TBjMjYwNWJkMmUzOTkwNDBiYTU2YmE0NDliOWVjMmQwMjcyZDc5NTJiYWZkNjI3NmZlZjdmMDM3=
NTMxZGUwNTVhNDE5MjQ5ODcwMGQxODJiZWY0ZTg5NWU5MmFiYTdjNTQwNjgyYjAzNmIzMWI5ZjN=
mMDYxNDEzYmMyZDFkYmZlYzg5Y2MyMzI5ZjQ0MmQyMDBlM2FiZTQ4ZDQxY2I4OTNkYjQ3YmQyZD=
YwZjE0ODA5OTQxN2NmY2MyOGNmZjg2NWFlNjc2NjQ1OQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNjVmMTE0ZDRlMGFj=
OTFmZWFiZThlZGUzMTYwM2JiYWYyZGI3ODE3YmYzOGQ3NDZjODY3NWRhMzc3NGVlNzg0NGEyZDI=
2MGZhNzdlNTExNWJkODhlNDVhYWQzNDZjNjU0YmFiMDkzOTJiMTE4ZmY0MDIwZTM0NDA1NjViM2=
I0MDRjYWUzMjkwNmYxODZiMDBmMzA0M2U5OTliZDkxOGEzNDg3MTE5OTdlMThlMDg2OTU0ZjIxY=
2M4MTk4ZmZiYzFiYzM2NzZhNjNhY2YwNjdiOGYxNTRmNzQ5NzFkYmUwNWI2YWNmNmRmZjk2ODY1=
YTUwNmNjZTY2NzNkNzNhNTJkNGNhMWVjOWFmMDg5NGQ4MzE1ODI5YWQwOGJmMzY1MDk1NTA1ZTJ=
lMTUxODcxMmQ3MGMxYjY2MmVhMmMyZDc4NGNjYTEyMzllYTQxMDBhOTBhY2Q1NzdjNTE2N2VmMj=
NkZDljNWU2MGM0MWIxNjlkNzYyZTFkY2ZkYTE0MmUzOA=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNzk0MDZhYWQ2NDI2MD=
EzYjZhNWE1ZGJhYzc0NzYzNmU1YzE3YjJmMTdkOWQ4ODZkZDRhYmJiZTgyZWM5OTY5MmU2MTM1Y=
WViZjU2MDkwOGY1OWQzMDFiZTI1NmRhYWExZjIwZWYzZGVlYzA1ZTY2YTRiNGUyNzgxYWU1ODIw=
N2Q2ZmE3Yjc4ZDYxYzFkMWRkMWI5MWUyOGFhODFiYzdkNGY1ZjBjZTA4ZjlmOWYxZTM3NmM5MTY=
0MzFkMTBmNzFmYmRiMTdjOWVhYTUzZDJkM2M2YjIwMWJiNWYyMTE5ZDI2MzM0MGEzNWRhZjk5MT=
VlY2Q5Yjc0M2RlNjQ5ODZhMzRiMDRiNzRlYTUxZjE4ZTM5NzQ0Y2JjNjhkYTE2NTFhNDc1NDBhM=
TI1MzU0OTVmZmYwN2RlODA3ZWZjZjEyZjZkYTY2ZDE2MzQyNDMyMjFmYWYxNzdmYzAyNzc1NmNl=
ZDk5OTBiZWIyOGM1NzBlZjk3N2FkYzQyOTA1NTljOQ=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZDJiZWExZWNjYTI5=
NzU1YWU1NDg3MDBmODk4YTZlNmI5NzM0MTU4ODE4YTZkNjlmODUyMWNmMGZlNDk3NDAyMDc2YzQ=
1YTQzMzMwYjUzY2JlYWE0OWQ3ODBkM2YyM2MxYzI1ZjE3MTgzNzBkOWQwMjVhOTIxYWViY2VjMj=
A0YjRlYTU0MTcwMDgwMjdiZWVmYTY1MjVhOTlkYjFmOTYyM2JhODBjYTAxNzY4OGQ3ZTNjNjM5M=
jFkNDI4MjZlNTk0ZTdmZTU0Y2VmNzQwNTk5ODBhZWFlNjQ2ZmNkMDRmYjcxNjNlYzcwZmIxMTFl=
NGZlMDBkMTk0ZTQxMTcyMDk=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DNjBlY2I3OWJhZmE4YzVjMTFkYWIzM2FjOTljY=
2IxNzcwM2ExZWMwMGU2NWY5Y2JmZmQxNGMwOGY0OWI3MzhlOTMyYWFkMTgxNzMyNDkwMTkxNDQz=
MDJlNDNiOTM1ZDI1OTQ0OGY2M2JhZTBlODUyNjRmMDE5YjY2NTlhNzU5MWUxODZmNDA1NjE3NWI=
3Y2JhYjI1MWIxYzBjODg1ZjE2NzgyNTRhNTM2NmY4MDVmZmE4MDNhN2UzYTM5Mjg1N2IwNTE2ZD=
g0ODU2ZDgxNzY4ZTYzMmEzYTA4Yzg1MDUzZjEwYjIyZmUyM2NhNGZkMzljMDNjODk1ZmRiMmU1M=
DNjMjM0YjRmZjliZDU4NDRmNjM0M2I4ZDNiYTEyZTJiNjVlYmRhNzcxMGIzYTUxYWMxZjViYmQy=
NzI1YTU2OGZkNTRhZTU5ZTAwZWZkOWNlMGNlNGNlN2QyODA4OGI3NGRjYjUwYTA5MDUxZjM2NmQ=
1NWIxNDE5ZWY0ZjA5OTNhMTg4MzViM2FiYmE4MWRiMWE5MWY2NGJiODhkZTI1NWUzNTQ0Yzk3NT=
kxZTc5N2E4NDUyYTc0MDVlMjM=3D" style=3D"font-size:12px;line-height:134%;font=
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
