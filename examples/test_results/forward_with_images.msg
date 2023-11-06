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
From: localhost:1333?u=3DNzg1YjI2NmU4MzgwZmI4Y2U2YTU5Njg2ZTEwMzJhYWNmZGVhYz=
M3Y2E2Yjc5YjNjMDhjNmM5NjdlZTk5NDdlMGU3N2VmOTJiNDZiOWU4 <mail@eg.expedia.com=
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
<localhost:1333?u=3DZWQxNTI0Njg5MzlkYjk2YWY2MWJmNTA3NGYzNmZmNzM5NzQwMjkzZjI=
4OGE4NTE3ZGIwNTk0ZmQ0NjkxYzM0NzEyNmVlMmQ0MGY3NTM0MjVlZDllNDU1YTgxNmRhMGVhZD=
M3ZWIzNTY4NWU4NWYwN2M4Y2YxYzFlNmIwYzRmYzU1YjgwMWFjOTY0ZDFjZmU1NmE2MWNjMmZkN=
zM5OWU0YTE0Mjg2NzBhZTA1MzZlOGZjMTUwZWI3ODUyM2VhMGM0YjQyMmUzOWQ4ZjNkMzU4N2Ji=
NmQzZjYzOWVkODE1ZTIyZDIwOTJlZGY2NjM0MWE0YjA5NjAzZDUxOWYxMzdjY2FhNzE2YjY1MmU=
1YzFmZjIxYTY2M2YxOTQ0ZTRmMTM4Nzc4YjRlNTZmNTkxYWRhZTI3NTU4YzNjMDBkZGYyZjJmNW=
RiMmRhYzMzNDZlZjlhMTE3MDZjZmEwOTA1ZDhmOWVmNmQxMDVmYmVhYTM5NmE5M2E1ODQ1Mzky>

* The Travel Edit
<localhost:1333?u=3DZWZhYWQ3MzZhMzYwNWMyNTg2Y2Y5Mzc3MmM2MmY4MGMxMGY0OGIyMjR=
mZTY4ZGVkYjI2ZDg3M2I0ZTBiNmYyZmQ2NzZhOWQzMmE0ZTFlNGFjOGI3MDA1MzQzMDk2ZjYxND=
RhOWQxODY0ZmVkZTY0ZWU0YmI5YzViZTY0MzkxY2E1ZDFmYzY1ZWUwYzczNDgwNzE5MjhhY2UwN=
zFiNjZiYWUzNGQzMTc1OGY3MmVmNGQ2MGVlNmJiYzczZTZkODg2MzVlZGQ0OWUwYzc4NjgzOTJi=
MTQ3Mzg3NzUwMGI4N2EzNjI5MDhkNjU2Y2U0MjM4YWUxMjNjMDBkNTZjM2Y3YjkwNzc1N2VkMzA=
3M2ZkNjc0Y2RmYTk2NDE0YTNlNTliYWU1YTQwYTUyOTFlYmVlYTkxM2FhZjY4ZDRiNThiN2E3Yz=
JjNDViM2Q4MTRmYjEzZmY5M2Y5Y2Q4ZWMwYWU5Yzg4N2Y3MDc5MjMyNTYwNTQ1MDQwNDIxYmY3>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DODE2MmIwZGE0YzliNGEyN2UwZTZiZWJiOGY4YzY0MDhjYWVhNWYwOGM=
xZTcyOThhN2UxNzgwN2FjODkwOTZkNWJmY2JjNGYxZDg0OWJiZjI5YzEzOGI3NzUxODdiYTlkMT=
Q0NWIxMmRmODkxYTFlZDE2MzBmOGU5YWQxNzBmNDY5ZjkzNTNlNTU5ZmZmNDIzOTZmN2NiMWZjN=
WM3MTNmNGQzODMzMjFkM2E5NDIxYWYwOWY3YmI1YTg1M2RlNjQ2ODZkMjhhZjAwMjk4MTkxZWU2=
ZjBhZjQ1MWQwMWUxMTkzOWJiOWEzODBjNmQ5NzBlMGEyZGM5NjBlMzMyMWUyOTc2M2ExMjgwYTA=
5YWNmMzQ3YTc4ODkzN2RiZTVkOWIxYWM5MmEwOTJiYTQxNGVlNzBmMDY2YTZjZmUwMzRmZmNiZj=
VlOTMyNjRiM2VhYWQyNjIyOWEzZmMzMDJkNzI3MWM0OGMzNDdiMzNjNDNlMTVkZGI3YTg1OGU3>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DN2U4M2NjMzdmNDU5ZTMxODg0NTBjZjU1MDE0ZWI1OGU3ZmNjYjRhZGV=
iOWYyODcyNmQ4MmI5NDBiOWY4MDQ1ZWRmZWE5NTgyYzkwMTQ3YmQ3NzU0ODRjMmY4M2NkOTc5OT=
M4MmUyZjRiZDgzM2YzMmJmY2Q5NmFkZmZjZTYxMWIxN2MwNDc2ODA4Njg0NGVkODk4NGIyZWYwO=
GM2MjNmYzU3ZDIwMWZjMDcwZTBmOTZmYzA0ZGM4N2RkM2VmNTU4ZDI4MGQwYjFhMDE5YzFjZmVi=
MmU5MzcyNWQxNDBmNWM0YzhiZDQ3MGYyYTVmNTlkODA1Yjg1MDY4MTQ3MzA3ZTA3YzliNzQ2OTR=
lMDU2MDYyMGYyNTA4MDNlYjc4OGE3ZDNjM2U4YTc0ZTNiNmU1NjhlMzEwMmRjYTA0ZGRmZTJhOT=
k5MTFlNzI1NWI3MjhjZTgzZTA0YWZkZTQwZWExOTcyODRjOTJhOGZiM2NiMThlMDQ1NjA4NDk4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNTdkYmJkYmU2YjQwMmQ0YjRmODVlMWQ4Y2ZjOGU4MDRlYmRmMjdlZTV=
lZmY4YzllNWM3ZGJiYzFmZTRmNzAwYmI1M2I0MmE1NzcyYjU4YzI1ZGUwYzVlYmYyZmY4NDQ4Y2=
U4MmIyNDc2MGVjYTI1ZmUyMGM1M2U5NjFlYmU0NGE5MTRhNDZiOWIzZWYzZGUxYTYzYjYwMDY2M=
TRhMDA1YzEwNDdhZGQ3ZjlkM2YyY2Y5ZWIzNTUyMTY1NzRjNjM2ODU2Yjg1ZjM3NDE3NTFjNDll=
ZjM0MWU0ZDlkM2RlNzRmNzlhM2VmNWFmZDA1ZmQ1ZmM3NWU1ODRkYjhkNmI3NDE5YTViOWU4OTJ=
kNjgzYWE0YmRiYzkyNWQzMzY1MTJmNTVmYTU4YjNkMmYzMTcxM2RlMzcyMjVhODdiYzExYjFjNT=
k1MWVlYTJlNTczY2IzNGM0ZTE1YjFmMGQ3YzBmOWJiNDJmNTllNDFkMGM1ZWNhZTg0ZDk2ZGU2>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNjAwZDMwODJiYWVkYTQ2MWU1NmYwNDk4NWMwNGJkY2Q3OGI4MTRmMDk=
yOWJjZjNiNDc3MjdkYTFiMzczM2VlM2MzMTMxZjljMTBmMTMwZjMyM2JlMTMwMzI3N2E5MGQxOT=
hmOTA2OTZjYjZiODk4MjYxODU1ZWM1MzY3MDQ3MTlhYmNhYWVmZmQwY2JiNDlhNDk0NGI3NmM1O=
Tg4NWZkZGUwMWE3NGFkNjAwMmMxMjI4ODFhYzEwZjQzNGU2ODJhNDVhM2JhOTE4NzU2NDE1MGI1=
N2U3NjM2ZDgzNTE3NTYwNWNmMmU2NGIwNjAxYTgxNDY3YWVmNmM3MjZlMTQzMzE2ZjRkN2E4MzY=
1ZDE1ZDhiMTg0ODczYWU5YjkzZTI3MWExMDQ2MzIwMWFmNjgwYjBmZjQwOTg0MjhhZjBhZWJjNm=
Y4MzIyYWYxNzNmYjE0ZDJiNGI3NjEzMDNmYjE3Mjg0NTE0OTUxYjE0NjI2NTAzYjY2Njc1ODA2>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMDcxYjJjNDE2OTE0OGM2YmRkMjI4OTYxZDM2NTNjNjVmYjQzOWVmOWE=
xZjQ5ZjI0ZjllYjRkNDVjYzBmZDg2NmRjMmExOTFjZjE2YmI1MDIwMzc3YTJjNmM3MTNkNjk1Mj=
diOWMwZmQxYWQyMmMwOGZmMmRjZWY3MDIzZDYwNTk3YzZkZjRjZTY3Y2FjMDA1YzEzMzUyM2FiY=
TIwODM3NmY2MTVkNGJhNTRkMGUwNDlmMWZjNmRmMDU0YjViMTY4MGQ5OGRjZjg1NmExMGY5ZDZh=
MTA5NWM2NzFjNWIyMjFlZGJhNTU4Nzc1MjBhMTEzZTE0NjAyOGFhMWIzMTVkMTdiY2FlMDdiNDc=
wOGRkOGJmYmRmMDAwY2ZlODY5ZTQ2MjRmYzQ0YmFhM2QxNjE1ZmM1ZDJiYWI2ODM3YmU4OTQ5ZW=
NiNTk1N2VhY2M5M2RiOTI3NWM4NjMyMGVkYmQwNTkxNmZhY2IzY2U2Mzk0MzQ4YWJkODY4YTdj>

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
<localhost:1333?u=3DZmIyNjFkMWEyYWVhNGU0MzE3ZDRkMDhhMzA4YjlhZTU4ZmZhMTRhM2Y=
3N2MzZDhjZGI0NGMzYjkwYjhlODMyNmVlZmRiOGE5NjE2MmJiNTI2MzdjOGJlZWIxMTVhNzk5M2=
U4NDY4NzFkMTI4NDM0MDFhZTU5YTE1MzJlODlhZDdkM2ZhYTg5YTAzMDMyYmJjNzcyNjA4YmQ1M=
zNmZTJhZTRlMTVlMDNjMjAxOGY1OTJhOTczMTBmMzUzNzczNjMyOTQyZTA3MjBkNDI4MDViMjU3=
N2VhYmRmOTFiZTk1Y2UxZjRkN2ZjNTNhMWRkNTdmNmJlZjVkZmQxYTk0MjIyNzliNTA0ZWYzZjk=
4YTAwNzFiYTljZjlhNTA4MDZkNDZkM2Q5MDJjNDdhZDVmNTYwNmE1OTkyOWM0ODBlYWMyNTlhYT=
lkM2I3NjY5YzkxNGJhZmE3MzNkZjI3ODQ3ZmFhMWUyMGFiZjhjYTE5ZThjNThmOWEwM2Y5YTE5N=
DJiOA=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DODBjOTNkMzU5YzllMGEwMGI1NjhlM2ZhZDliOWM0MmRhNDQyNWE1MTg=
yODllN2ViZDI2Y2I4YTdjZTYwNTY5MjBhYmEwOWJkMTQ5MGY4YjFiZmFlMjg4YzQ1YmE5MTZmNT=
M4MjRmY2E2ZTcxZWE2OTliZjZhOTliYzNkNzAyNzBmYmI3YWRjZjY4NmE2NjlmMWE1N2JhNGZhM=
2U2NWRkYWIwZGY2ODIwYzQzMjUzOGNkY2Y2ZjFmMDU3OTM3ZWU3YTQxNjVjMGI3OGFkYzgzYjdj=
MzBiZTdiNzkzNDNiYjgwYjhlNjk1YjU5NTYyNzMyNjllMTkyMjY1ZTViMTJlMTMyMTQ1ZGI2NGY=
5Yzk4ODAyZDY0YTUzNmI2NmRkMzA1NDU0MDI3MzViMTZkYWFhYTAyYTg0YzM2YTEyMGI0OTEyMm=
M4MjNhZDU2NjJlMDRhMDQ5YWRjODM4MTFkNDQyYzZkOTJmZmVmMjA5NTA4ZjRhODg3MjlhMGEx>
  [image: Google Play]
<localhost:1333?u=3DM2IwMGI0Yjc1NTY0NDIzMzIxMzA4NTg4YjJjOGJkYThkNjRkMmEzMmM=
3MjhlMzA3ZDcxMmI1ZjU4NGVhZDk1ODUxODU4N2Q4NzVjZjY1NjIyYWMwOGJmY2JmMDRlOTYwOG=
NmYTg0YmFhMDEyOTVlZjE0ZTJiYTc5N2M1NGQyMWRlY2ZhNTY4ZDE2MmMwZWRhNmIyYTFhZGU4Z=
TczNDA5MGI4ZGM5MjM2OWQ4NjViYjIyYjI3NDAxNWIzZTEzZGM5YTE5ZmQxMDFiNTdmNjk1NDY4=
MDhkNGEzNzk4NDc1NzEyMTI0MTBlZmU1NjQzYTIzOTJmNTljZjhhYTVlMTEyYWJkZTI5ZWRmMmN=
mOGMwMTU5ZTEzODkyNDkxODVlMTI3ZDdkYWI4YWUxMDI1YTY3NzMwOWI0NTA2OGI0Y2FhY2Y0Nz=
Y1NmIyYmM3YjE3YTVlMzNmNDkwZWZjMTg4MDQ2ZGYwOWVhOGM5Y2Q0OWUxYjY0MWQ5OTJjMzRi>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DYTcyMDFmMDUxNjhlMTQ5NzhjMmI4ZGI2NzJlYjk3NGQ5NzU1OGMzMzU=
yMWVlMDgzNTlkNmVmNTkwOGM2ZTJkNjdmYTNmOTI3N2YyMGY5Y2YzMWE0NTlmN2JjNjhkZjJlYz=
JlN2VlNzJiNTYwMjhhODVmNWFjYWY3NDExMWJkOTBjY2NhNmU1Y2E4Y2QzNzRlN2MyMWQxN2RlZ=
GEyNTMxM2Y4MzVmYWRiNzg1ZWM0YTEwMDRkYjY0OTQ3NWY0ZGZhMTk1Y2M4YTdmYTExZGVlM2Yw=
Yjk5MmFiNjNkYjhlM2I0ZjliNWNiMTJiYjYzYWQ5OGU1NzhhZDQzMDg2Y2M3MDE3OGZjMjc0Nzg=
4MDJiYjBhYmNkMTgyZmVkN2E0ZWUxZTMzZWE0MzBjMmM0MGYxMWFhNzRhZDQ3MmVlN2JlOTU4ZT=
ExZTI1M2U2YWYzNTgwYjc0Nzg4YmI5YjVkNzFlMjRhMzgzMTZkNDc5YTZiMWJjNGU2MThmMTY0Y=
TY2Yg=3D=3D>
   Manage Preferences
<localhost:1333?u=3DOTAyMjQ5YzYyYWI2MjNhN2MxOGYyNGExMjhjNDU5YzIxZTBhYmRkMGY=
3ODI3OTNhMDFhZWEwNzI2MDE2YjAyYjdiOTA3MzAxNWVhNzdhMjgxNDIyM2M5OGI5MzVjYTQyOD=
I0YzgyMmM1NjU2MmUyZjY4OGY5Y2M3N2U0ZDJiMWIxYWMyY2ZmZTYwNzYzMTc5MWVlOWNmNTQ3O=
Tg2MWE5Y2ZkYzg3ZTg4N2YyY2ZmMTRkM2Y0YTkyNWIzNTdmMTQ5ZTAwMzhmNzliMGI0ZjIzYTBl=
ODQ2NTQwODE3MmM0MmU3OTQyNjliYjU2ZGQzODQ0Y2UxZDMzZGMyODViNGNiOTVmMWFhZjU4NTV=
lNmY2OWYyNDUwNDYyZWFkZTQ1NDI2ZTUzN2EyNGFjNzVkMjYwNGFjMjZlMzIyNjg0MzI4N2MwMD=
QxNjliNTBiZGZhMjgwYTU3ZjA0ZTdlNTFhZmU3YmQwZDdlYmVkYWM5MmIyYjI0MWI5NzEzZTczM=
mFhMA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DOWRlNTE3ODI2YjM0ODFhNWU0NzY2OThiYmM4Mzc4MGExNmIxNDI5NGZ=
kMGM0MDJhYzcwNDU4MTI1M2UxYTk4OTIwYWU4MjdkZTFmODlmYjRkNjNkZGJjOWU0NjE0M2I3OT=
IwNmU2N2RhOTJmOGRkYzU3ZTYwNDVjYjUxNzZiY2Q4NDNmZDA3OWM0ZmQyNTM3NjA4NDdhYWExM=
jkwZTgyZmQyY2FmNGE5YzU1MGIzOGM2OTY4OTAzZGVhM2YyNjc2Mjk2Y2ViNGZkN2NmNjcwMWE2=
OGMyMGMyYTM4MzNmNjdiZjczZjA2ZDM2ZGQ2ZDNmYjllNGFhY2U4M2VjZDM2NjQ1ZjFlYWRlOTI=
2ZGU3YjNkY2ZiOTY1YjRhMjMwYTNhZDUyY2FlZjJiMGE0ZTg3NGJiZDA0M2NjOTQzYTI5ZGMzYz=
kzZDYwYTA1NDI3NTllZWUzM2JiMTUyMDE4YzIxZjQyNjQ2NWEzZjVlNDdmN2IzYzQwYmIyNDgyM=
WEwYg=3D=3D>
   About Us
<localhost:1333?u=3DN2JhNzZhZDgwYzgzNzhhMzY2NjQ0ZTlhMzRjNGJhOTc5N2IzNzJmM2Q=
1ZTQ2NzRmM2YzNWYyYTgxNDJjYTFjZGUzNjZiYjUyOTM3MTZiNTE0NmJhYjI2Mjk0ZWIyNTUxMG=
RhZTE0NDg1YmVjNmIwN2ZiOTM0NGJhNGZkODczMDJlODM4YzM0MjhjMDIzOGY2OWY2MGMyZTM5M=
jJkYzYwY2QyYzkwODA3NjI5NTdjOTA4ODc3ZDJjNWQyNzE0YWQwN2ZjODE1NDk2NDNlN2VhN2Jm=
YjJlYjRmNzIwOGUxNDM5M2JjY2E4MWRkZjljYTFjMWNmYjBiMzBjNWE0NThkMjMwNDZhMTQ5ZTY=
1NGQ4MjVlZGZiYzg5MDE0NDU4M2UzM2ZiZTI4ZTc4MDk4MGQyNmVlZTUwNDA2OTI5OWFkZDgzMT=
M1MzI5MWU2ZTljOTA3NjczZTRiMTkyZTdjNmVhMzRmYTIwMGM1MzJlZTFiOTc3N2NlZjE0YzllN=
zU1OQ=3D=3D>
   Customer Service
<localhost:1333?u=3DOWE1ZmMwOTJlZmNiYTE5NGQ5MTY0MDFlYzBlODFmOTc3ZmY4N2VmNTI=
zNGQ2NTlkOTM4MGYxNGE2ZTkxMjRkNGVkZjRjOGMyZDczMzYyNWE2OTNmYjA5YWQwMzk1NzliZj=
g0YWZkOThkMzFhMGRlYjI3NjZlODUyYmNhNTMyMDIzMjNiZWY4YTEzMzY1NzFhMGE4ZjZmZDIyN=
jZmZDk0ZGU4NTdhOTU5NWJmYWZhYTkxMGVkYzhkOWU1NTQ5NDFkZWIwZmE1NDM0MmU2Njk0M2I3=
MzE5ZmFmYjIyNzc3N2VlOGRiYzExZjQ3YzU2MDRjM2I1ODQ1NzZkYjE2N2VhZTkwMWIyNjM2NzI=
2YzNiYTg3MDFkODgxOWE5ZWQ0MDczNjgzMGU2ODNlNGI1OTE0YWEzZWNkNmJkY2MxNjkzMDg2Yz=
Y5YWJlZjA4OTNlYjQ3ZmQzN2QxODU5NzU4NGE2NTYzMzkzZDFkMjBlM2Y3NjEwZTgzNTE5MWZmM=
DBmZg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DNjU1ZGE3NzhjZWU1ZDZhMWY2YzE3OTExOWJkYTM4NDEwODFkYTg3Mzk=
4OGUzY2Y1ZTkzZWQ0NjgzZjljNmRlZWM1ZmNmYWRkMTI2MzE5MWM1OTdhODYxMWY0Y2NjM2U5NT=
M4OTY1ZGFlNDcyMjEzZWU4ZDJjMzNkMTUxMTQ2N2RmNjU0YjFkODc2MjAyZmQ3ZTE5OWVjMjgzM=
zFhMmE4M2U5NmZkMDkwYTY2MTdhMjZmZGVmOWJhMDA4YzE2ZDliYzIyNzMyOTMxNDMzNGFiOWM5=
OTc3NWNiNzJkZWIxYzhmNWEyOGQwMzkwOTE2M2FjZDkwYTQwOWQxNDBmZWU=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNTA5YjYxZGQyN2Y3ZGYyZGQwNDA3YmU0NTc2ZmUwN2I3NmI2MTZlYWZ=
iYzZiNDc1M2U3ZjZmOTVjNGJhYTE4MzBhYzM0ZmQwNDkwYjAzZWM0ZTM5NDc2NTlhZTlkYWIwMz=
RlNGM4MDM4OTNhMzc0ZDJmMDAyNmY0Y2ZlN2IwMTZiODgzOGY1YzQ3MWE2NmVjNzkyZDdhNGFjM=
jhjMjExMTAwNWIxMmM4NjA0MzRhYzUzOTZjYWNkNTgwM2U4ZmIyOTQzMDRiMTQ3MDFlMjc4MjI1=
NzQ0YWIwZjA0NmVmNzU2NWVlMDgxYjJiOTI0Y2RhOTM0OGQ3NDkzODMwN2M3NTk4NDdiZTAxZjE=
yZDc2NWYwNzJhNWIyOWFmYTg5NzY3NGU5NWM1MzY0ODgyODhlNTM3NjgwMTE2M2Y1OTI2ZjdiZT=
YzNzMwMjM4ZTk3OTA1NDlhNmYzM2U0ODJiMzEyMGQzNGFmOWQ4NTRmNTFlMzVmZjA3OWFjNGQzN=
jgzMGVlNmUwMmE5ZWIzZTRlYWRmZDkxNDZmOWNhOWY5MWNkODNkYmEzN2FmOWJlMGJjZGRiYWFl=
MjZjODU=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYzM0NTI0NmQ2ZDE5ODA2=
MDdlYjVjMWQxYTljYjMzOGMxMTE2NDEzOTY2NGI3YTFhNjAxMTJhNTk4MWQ1NWJkMzJlNmRhMjg=
1MGQzZjVlNGEyMzQxMWNiNjA1NmYwOGY4YmY5ZjEzN2Y5ZDg1NTM2MGNmODExNDRjYjMzNzA5Yj=
RiY2RjZTJmNmQ1NWUxODllMGMxY2RlZTlhZDFkMTg1OGM4MWIyMGNmYmNlNzUwODMxZGY2YjU0M=
jAwMmU4Njc5ZjU2NjczZWI5ZDdmOWJlOWNjZmJlYjJlZDkxNmJjYjE0NmJiNzEzNThiYTIxOTJj=
YTgwZWY3OGMzZDg2ZGUyZDVmZWM0NzBlNmIyOTQxYjE5YmY1NjBmZmZjZDZmZWZhNmZjM2I3ODY=
1NWY1NGE1ZDJlMDFlY2NjYzAxODBkNDY3YjU1ZjgxYzUxZGQwMjQyODhkMDllOGIwMTk2ZTcxNT=
dlZjE5ZWRkY2M2NDk5MTMzNjU2ZTMwYjI3" target=3D"_blank">
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
?u=3DM2Y3MjFiZWExMGFiMDNmMjdlYWNjZWJiNjJjZWJiYjExMmJjMDVlNDNlYTJlY2QxMjYzYz=
k2MDMxOWQwNjk2ZmMzZDMyOGRiNzY0ODA5Mjg3NTY0YzdjNzlmMjJiMjEzNTFkNTc2MDU5ZWM0N=
zk1ZmQ3YjJiYWE0Y2U4N2ZiM2RiZTgzMzljMGRiYjk2ZDBkNzg4Y2ZlMTU3YTc3NzA1ZmMwMzk4=
YWViNmJmZDYyMTM5NTBhMzVmZjE0NmQ0Njc1YzZlNzYxMDNiMmI3NjUxZTc2ZjEwZjFkMDU5NDB=
iMGZhOGQ5Nzc4YjMzMzFlZmVhZDQ0MGQ5MzRlNDQ5Y2U2Nzg1NmI1MjM4ODMyNTM0NDVkNDJiN2=
UxMmYxM2MwZGE3ZTc3MmIyNGUzMWM2NDc1NmJiZmZmMDk5YzQ3ZDc4MzI0MjBjMzA5MDEzYjdkZ=
DIzZmQzYWMyNWYyMDA5Mzg1YWZmM2IyZGY3MDFhZmMwODViM2NkMzEwZjM3" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DNmY3NWVjN=
mQxNjIzN2JkNjJkMDhiMWFlYjI1ODVmMmUxOTkxZjIzYzczMTg2M2M2NDVlYzFjZTIxODZjYmI0=
ODI2ZDkyOGRjY2E5MWNmNDE4MTY5NjRiMDg2YjRjNmM0MzI4ZWY4ZDU1YmVkOTViYzEyN2NkZTM=
5OGVkZDU5ODlmYjZhZGU4YzA0ZWViNTQxNDZiMzI0NTNmZWY3ZWVkNWFiZTNiMGIwMTg5YjgwZT=
liMTZjZjZmMTc3OWNlMTQ5NGQ0OTg2MWIxNmI5MDcwM2QwM2EwYzhkMTk2MzI2ZmQ2ZGE1ZWYwZ=
jY5MWI0OWRmOTdkMjcyYzMzZWZkYWZlYWE5YmQzODJhNDFmN2IzYjE1ZTlhMWQ5YmUxZjBmMDhh=
ZTQ0MjhkMDIxZTI0YWQ5OWM3NGNmNzA4YWQwYmE3ZmY1ZDM2Y2NkMDUwMmIxMjBlZjFiNmE2ODA=
1MTc5ODAzMGUzMzY4YTFkMzdhNTcxZjM0NzEzODk0Yjc1" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZjM5MDk=
5MTI4ZWNhYzc5YjI3NmY5N2ZhN2FlNTEzZjJlNWQ1N2FiMzM2ZGU0YzYyOTBhYTRlOGQwNDkxYT=
RmM2Q0ZGZkYjczMjA3NDBhZmQ3OWM4N2ViZGZhZDdmZTRiMDhlZTc5NDViZTRlZmJhYjE0NDc2M=
2UwYTAxN2ZiNjIwMTM4ZGI0NGViYTkyNmZhYmY2NDU2ODcwMGM1ZDE2YzAxNjY0YTg4NDFhMDIz=
YzFmOWIxZjY1YjcxNDFmMGU5YTlmYTM3ZDI4YTM0YWU0YWIwMGRhMjljZjA5Nzg0ZTg1MTI3OWV=
lOGQ1MzA2ZjUwYzQ0NjIxNGNkZmQzMzYyYjA1NzU5ODc0YTgzZmFlYmRiMTM1OTlhZmVjZDE5YT=
JhMjM2Y2ZhNTM2YTBjNjE1MmNhNzFjMDRjN2VkZDhhNTkwOTRiYjI0ZDQzNjlkZDYwZTA5YjM1Z=
GZhNjA5MzA2NDI4ZjA5ZjBhY2M1NmQ3YzI4ODNkNDNhMjc5" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOWI4M2NmMzQz=
NGI4NWEwMzEyZTk4ODc4NGIxOTJlZDEwMTgwNjBhYmQzZjcwZjJiMzZhNzU5ZDJjMzhkY2JkZjB=
kNjRmODkwOWQ0NDQ5NDk5MGZmZmUyNWZjOTA1OWFiNmNhNTRiOTFjMmMzNWY3M2I0OTcxZTVmZD=
Y5NjA5ZDJkMTBjNGQ0OTUzNDY4OWRhNDcwOTM1ZTViYTY2MTQ4MWFkYzFiZGQwYWQ3Zjk5NDk1M=
jRiNWIwNTdmYTU0YjY5NzNkYjQ5ZWMwNWY1OGVmMTUxOGE2MDVjOWRlODliZjU3ZDdjZTQzY2Mx=
NTk5MzczZWUxN2Y3NjgyOTZjNGQwMmVjY2MyNTk0NzJhMmFhYjkxMDYxZjU4OGJiNWU2NTk5Yjl=
iZTk4MmUyNGY1Yzk2NTQ1ODgyNGUwMzFlNWI2NzA2YzQwMzdiZjJmZjk0ZTMxZDk4OWQ2NTk1Yj=
E3NTI3ZTI0MDRiNzRjMTFlYTY0YjE4OTg0M2RhNzBm" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DMDQ2MWJhZWUxZjA2Z=
jA3YjM2NzU3NjBkNTU4ZjhhZTFhMjJiZmEzMjg2NDc2NmY1MThjZmZmYzEzMmU3Mjg1OTcwMzgy=
ZTQ1MTZiZmY3MDgzZWJhZTJmZDM0ZTkzODY2NzY0MDczZTU2OWE1NjEzODA1YjIzYjMyYmJjMmN=
mMGVhN2M3OWUzMmZhMGE1MmRkMDFjZjczNzJkNjMyYzM3ZDYzOGZlOGU1MTBiMDk4NmNlNzJiMz=
gyYmY1YzU4ZjZiYTkzYzhmYmJkZDRkNzgwMTM4ODBjYTcwMGNhM2JhYjEwMTY4NWQ3YjhiZWYxZ=
TlhMTk2NmE1MmQwZTI3ZjNkMWRkMjAxMDQyNGNjYTY4NTBlMTU2NjI4M2JhOTc5MjY1OGNjNTBk=
MjhjOWIyOGZkMDgyNzg1NDZjZDcxNTdiZWM1MzliMDI5N2Y3NzBjNzk1YTljMzU5NzMyNTIzYzc=
xMjBiOTEwYmI2MjkyZmZhYzVkNDIzNzc3Yjcz" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMjgwMGE1NWZkZ=
Dc0ZmQxMWVlMTkzZTAyMDhiMTQxMmY2MzQwYzRhYzQ5ZTU1ZWI5MWVmNDg0YzVlMDI2YzA5MjZh=
NWYwZWRhYjY2MzJkYWE5NjczOWRmYWM4ZGE2YmNiNjA4MzVlMWJlZTlmZTUzNDRlNjQ5NTViNjM=
xMWVjOGIwMWM0OThkOGNhMzAzNjhkNjg0OGM2NTg2N2ZhNjM5NjY0MjdiYjlhOTkzODAxYWViZT=
kzMDY0ZWM2NjQyYjZhMzM3ZmU3NWY4YzE4ZWVlZGNhMWRlNzc3NjFiYjUzYmE3ZDMxMjE4YzE2M=
TgyOWY3NzRjMmJmMjIxNWY3MGM0ZjgxZWZmZDE3ZTY1NjA0NDBmOGYyMDM4MWI0ODlmMzY3ZGY3=
YmEzNDBjYmQ3NTZlODI3NDYzY2IxZTY0NzI2YTdkM2MzZjQzNzUxNjllNGY2ZDRhMmY5NzcxZTk=
xMjM4NzJhYTRhMjc0MjljYzg5YTYxYjlkNjNjYTA1" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DYWEwODB=
iNzIzODlkMWQzMDRjNTAxNWEyNWYxYWQ5NDA1ZjliODQwY2M4YTNlMDgyYTEyODRiZjM5ODViOD=
c5YTQxMzRlZDVhYTA3YThkMTk1NDM3MmM5ZDRkMTFkNjU1YmJjODM0NWI1YzY2NTA4NmU3ZmZjN=
WYzNmMxY2U2MmNmOGJiN2I5OGYyZjRiMTIxYWUzMTE4NjU4MzMwNTMxZWFhNjI4MDU2YTQ4ZmEw=
Njc4YTUxZmQxYjdjZjIyMjBhN2E3YTZiNDE5NTNlMmFmMDNlM2UyYjNlYjQ3MzU4NGZmZjFkMjI=
4YjU1ZGMxZGJkYzkxZGVlZDAyYzgwNDY4NTI2MjZjYThiM2Y2ZDgzMWFlYjU3OGJmNzNhZTc3Yj=
hmYjQ3Y2E2NGQ0MWUzNWNkMmFjYjMzMDAxMDRlNTljYTA0OTQ1Mzg2ZGE5ODdiNzI4ZjQzMjc3O=
DIyOWZkYmVjNTM0ODAzNjA2NDNiYWFkMDRmNDZlNzJkMTg2MTY5MA=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNTYxNjE0OWYxNDdmY2E2ZGUyZDJhYj=
IyOGNkZTNjYmYwYzhhYmJlMGJhY2EwYWU2YzgyY2Y5ZjNhOTUwNGY0ZmE1NjFjZGIxNGMxZTQyM=
mQ0MWE5MjUxYWIxZTI1ODNkMTJmNDBlZDQyZTZiYTRiMzlhODRmODYyOTMzMGIzMjliOThhNmEw=
NWUzYjJmNjUyNWYyMjcyZjdhMmRmMjMzYmZmOGI4NWU2OGQ2NjIzNTEyZjY2OWU5YjlhZWQ5MjF=
jZWU5MWUwZTNjYTZkZDk0YmUwZDRkOGQ0YmNmOGM5YjY4NDY0ZTdiYmUzMmUxZDFkNWNiNzE0N2=
M4MDFlYTZlNDU3ODg2MDRhZDk4NDk4YjIwMjkzOTcwN2RiNzE5MzNmMzZkMzFlNDA5ZjZmMThjZ=
jRlOTkxYWY0MGIxMDk5YjJlMzdhMGY3YTM3MGIwYjQwMzgyZmYzOTNhZGZiNjg3MDVjNTlhMDk3=
YTVhNTI2NDAzNmI2NGNlOTcz" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DYzBkZDg4ZjM1MzllYzQwMjRiODBlND=
U5MDIxMzUzYTJiODhhMjQ3OGFjN2M2M2Y1ZDQ4MmIzNDM1ZDUwOGY3ODZiNjlhYTY3ZGE5M2YyM=
TI3MTlmNzA1ODM3M2NhOTMxYzM1ODFiMWQ1OWI3MzhiYjk5MDgxNTlhZmI0OTA0NTYzNTI4MzQ1=
MmUwNTBiZjg2OWNkODQyNjQzMzQ0MjkzNDk1YjRmNGJiZWZhZjQyYjQzNTg2OTM3ODhmYmI1ZGR=
hY2Y5ZjQ1ZWMzNDdmNmFhNjBkN2ZlYWQ3YTQ0OGVhODYyZWMzOTI4MjU5MWJlNTc3YTRlYTA5YT=
QxZTlkYWIzNDVlOWJmY2U2MGFiYWViZmFlMDI2NjQ2YWZlZTQzM2RhYzZiNTcxMzZjNDA5MWM5M=
DgwZTA3YzgwOWQ4M2MwNTI3NWE5ZmMzZmZmZTU1MWRhZGMzMjQwOTNlMzI3MjA5N2U4MGFkNmU3=
ZDllZmJkZjA4ODI1MzkzODBl" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOGJhYzA5Y2VlNWJl=
YTI5ZjI0N2JlMjE2NzcxZTI2NDNiOGUxNTg4YTkyMDFhNmMyMjM1MzgyODExYTM1MDc2Yjk2MjJ=
mN2RkODUyMGE2NzgxZTU5NDA1MzhlZmY3ZTBkZjI3OTZmMzNkMGJmYzhlNjYyYzM1N2MzNDgyMT=
M1ZDg5NzE1OGZlZGQ5Y2E4YzMyMDYzZjM4NzRkMDZhM2QwOTc4N2I2Mzc5YjcwYmRjOWRiMDdjY=
TllYWQyMTkzZGEyOWNjZDU2MjFhOGEwZTY3MjAyNjM4MWQ2MDUxZGZmMzk2YTY0OGM5YTZiNmJi=
N2U4ZTIyZjgwZGQ0ZGE2ZjBjMGYyZjJhNGE4Y2UyYzI2MGMyNWE5ZWE2ZmRmMzBlYzY4ZTI3NDE=
1NWJmNGNkNGZmYzM0NDAzNzU4Y2UxYjRhMmQ4NDZhMDYzNjg1ZTUzMmFlZjRlOTJkZDI2ZmQzMj=
M1YjRhYjJiY2RlMTk3YTY3OTY1ZmEwOGVkMDYyNjE5NA=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDFiNjYzOWI3Nzdk=
ZmVhMmMwMjYwYWNkNjg3YTI4ZTc1NTlhOWRkY2NlYzc5ZTAxMGFlZjk0ZWYyM2U0NGE1ZmYwNWQ=
zZjczNmMzOWVhZTg4Nzc1YmI4YTUyOWFhYjRjOThlNDRiODNlZTJjYjI0YmVlZjc3ZjE1Y2M0OT=
A2NzY5MjQ4NjdjZTFlNWQxZmVhNDIyNmJlNmRmNDUxOWM0NjYxMWQ5YWUxNjQzYTY3Yjc0MGVkZ=
mY2ZDJkZTZlN2JjN2M2NDM3ODJkZTFjODRlNTlmNzY1ZGU0ZTliMmI5YmYxZjBiZDNhNjRhMTgy=
MTVmOWMzZWQwOGYxYTQ5YzU3YzI3M2NiNDAyZDA0Y2VkMDkwYjgxN2JkMmM5YTQ4ODY3ODdjNzR=
iYjdjYzI0MGE4NmFlYjRlMjBkZDI2Nzk5Y2JkOTE4NzNmMDJiODQ5Mzc3NjM5Y2NmMTg3ZmU0ZG=
Q1MmIwNGQ1NGI4YWUzZDQ0M2EwMTI0NTYwYTg1ZDM5MA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DODhlM2I1ZjUzNDI5=
ZGMwMGY4MjE5NGEyZmQ1N2YyZGQzNjA0ZDgwYzAzODg2OGNlMjUxNjMxZWU1NGRkZTljOGE0N2Y=
0ZGE2MGFkYTBhMTU5OWIzOTgxMjI5MGM4NjY4NDQ3ODE2Y2Y4MDY5ZThhM2JhYmE4MmZkNDNiN2=
Q2YWM0MjI1NGQ2NGQ1YTJmMTM3ZTZmZGJhOTY2NmM0ZjYyMWMyYjhlMzgwYTllYWNkYWFkNmVkO=
GUwOWZlZDNmZjdlYTRkNmI4MzcyZmRhMDBkNWQ0MDM1MGY0NGJjODI3YTkyYmFhZTk5YmMxN2I4=
NGRiM2FjYzM0NDcyM2NjMjkxMTBjNzM5ZGMyNzMzOTFhZWQ5MWIzM2MwMWI5ZmE4NjA3NWNlZjI=
zNzQ3ODI1NjFiZjJjZDc0MzVlMmM2ZTMwNjVkNDFjY2I2OGIxNmE2ZDUzNTczMDlmMDY1NDhjNj=
k5ZjU0N2U3OTMxZWExYTI1ZDU1ZTE5ZmQ2MmFjM2I1YQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZWU2ZDIzZWE1OGNj=
ZDBmYjNlZjI0ZGUzNDc2MzhlMjljNzY2MmNkMzc2ZmFhZjAxY2EyYTEwYTYyMjAyMmNiZDNlMDF=
iYjgxN2I2ZDE2OTM1YWM4YTI5YWU2MzkzMWZmMjMzZTEzZTZiMjU3ZjQ2N2FkMjkxYjk1NTAyMm=
JkMGQ4ZGI2ZWY5NjY4YzY0ZGFjYWQzNTM0YTI2N2FmOWEzNmIwNWIyNDIzM2ZiMGEzNmJjMWM4Y=
TZjMGI2ODA2ZjNiZTJlZWRjZmJkY2NkOWYyMGY0MjA2ODc3YTViZWUyMDkyNDYwOGVmY2E3NWYy=
NGRmNjg2ODY4ZjAzMTQzNTQ0ZTM5MWEwYWJlZjhhODQ0NTJhYTRhNzZjODk5MThkODZlZTRhZmN=
mYjAzNjdiM2RhYWZkODAyNTEyMDRhN2I3ZGZjMmY4NjEyYzFiMDU5MDVjZDU4MTA0NzdmOGRjMT=
VjMDA4ZDk4NTMxZDczNjgxMzA3OWM4OWU3NzA5NjE2OQ=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNWM5ZTM5ZmQxYzRhMT=
IyODdjMmIyMWFmYzI0NDYyZjkzN2Q2ZWQ1NThmYzg5MmQyZjllYzkyZDA4MGU5MjI5NWNkOWVjY=
jZkMjc1ZjlhNjBlOTZjM2Q2NDg1NGY1NDE5YzA1MTZhNzkwYzQ0ZjUxNDQzNTFjZDc4YzU4OWFl=
NDFkZWNlZDJkZjczMDYzNmNiZTEwNDkyMGE1ZmUzZjlhYzg1Y2Q1NGNlM2ZlOWU5MzVkZTQxYWF=
lZTRkZDllOTM3ZTFjOTBhYWZmYjdmNjVkNmJkNzdlNjg3ODk2NTY3NDcxNDk0N2U5OGNlZTBjYT=
YxMWE4NTAxNWRhNmIzZGZkYzExMWU5M2E5OTg1YjI0ZjExNzM4NTUwYWIyYzc4MjIwYjA2NGY1N=
jQwMGMwYmY5OTcwOGUyNjM3NGY2ZjRiYzY4NzdmZGRlNDRkMzNhMzE3YTVlMzM5NmE5YmY5YTJh=
MmQ1Zjk3ZjExZGE1OTc1ODIyZjI3M2MzOGE0MzcwMg=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DYmU4N2U0Y2U5ODA5=
YjA0NmE0YmVhZWEyMmZjNzIyZDU4MGZjMmZiNDk2YWEyZTg2YTM0OTAzMmQxZmY5ZjY0OWY0MDE=
zMDcxMTMxYjVkN2NiNTNmYTdkOTZhMzMxMDdjYWI5ZjkxODM1NzA1NTAzMTYyN2FmYTk4Y2EyZj=
IzY2Q0NmNkYzZkODk0ZjdkY2YxOWYwYWE4N2I4YWRhZjgyNGU1NjJkNTkxZDk5ZjU0NDgwZWE5O=
TBkMGZhZDVkM2IwN2ZlZDA1OTdjN2RkYmJlM2RkNWNmYWFmZTY4M2EzNTQ2YWNkYWRmYzI2ODgx=
OTkxYzU5Y2E0M2Y2MjIxY2E=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DZjllNWViNzZmODJiMzBkMDk0ZDg5MTZlNzA3M=
jRkZGEyOWQwMTU1NWFjMjk3NDFjZjFjNWFlYTEwYjE0MzkyNDJkYzEyMmNhNDZlNTZmYzYwMjcx=
YjkxYThiMzZkMDJjNDU2ZmQ3ZjljMjczYWJjMDRlMDE5MGU3ZTJlYzI0MTYwOGQ3MDE1MTI4Yjk=
4NzNmNTI1MjUwNDljYTkxZGRjNjZkNWYyNGI0MTA2Zjk5MjRjNWYwMTU3YTE1NWFjZTEzZTI0Yz=
RlMzJlMjQ2YjZiOTg2ZmEyMTYyNjkzOTRkNDFhODYwN2NiNzE3YzQ3ZGMxNDhiM2ViNjg5MzA3Y=
zFlNzBlNzU4OWUzODIwYWIyOGZhYjlmZWFmY2NiY2M3NmFiNGMzYWFkYWE5ZDQxNTFlODM2YzBi=
YjU1ZDUzNTM5YWViM2YxZWQ0OWUwOTI2MTdhZGNmYTQzNjZmYjJmYjA1ZTcxZGViMjc0YzMzNmI=
zNjI1NjM5YjIzNTlhMzg2YWJkYTRhMmUwNTRiMDcxOGRlNDBmZGE3MjE2ZjVmMTE1NzI2MTU1Nz=
U5Y2Y4MGVmNGZlN2JkZDczNDM=3D" style=3D"font-size:12px;line-height:134%;font=
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
