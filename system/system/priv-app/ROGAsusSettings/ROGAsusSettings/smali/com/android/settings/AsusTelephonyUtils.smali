.class public Lcom/android/settings/AsusTelephonyUtils;
.super Ljava/lang/Object;
.source "AsusTelephonyUtils.java"


# direct methods
.method public static appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1034
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 1037
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAsusNetworkTypeEntriesResId(Landroid/content/Context;IIIZ)I
    .locals 4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAsusNetworkTypeEntriesResId(), asusNetworkTypeSetId == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,isSupportVoLTE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-eq p2, v1, :cond_21

    const/16 v1, 0x15

    if-eq p2, v1, :cond_1c

    const/16 v1, 0x18

    const/4 v3, 0x5

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_2

    .line 612
    :pswitch_0
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 613
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_CTA:I

    return p0

    .line 615
    :cond_0
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 617
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 618
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_cn_ctcc:I

    return p0

    .line 621
    :cond_1
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_cn:I

    if-ne p3, v2, :cond_23

    .line 623
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_cn_tr:I

    goto/16 :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 627
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13:I

    if-ne p3, v2, :cond_23

    .line 629
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_tr:I

    goto/16 :goto_2

    .line 632
    :cond_3
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_cn:I

    if-ne p3, v2, :cond_23

    .line 634
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_13_cn_tr:I

    goto/16 :goto_2

    .line 602
    :pswitch_1
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 603
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_CTA:I

    return p0

    .line 605
    :cond_4
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_12:I

    if-ne p3, v2, :cond_23

    .line 607
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_12_tr:I

    goto/16 :goto_2

    .line 544
    :pswitch_2
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 545
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_CTA:I

    return p0

    .line 547
    :cond_5
    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->getPreferredNetworkMode(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x21

    if-eq p1, p2, :cond_6

    if-ne p1, v1, :cond_7

    .line 548
    :cond_6
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v3, :cond_c

    .line 549
    :cond_7
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v3, :cond_8

    invoke-static {p1}, Lcom/android/settings/AsusTelephonyUtils;->isNetworkTypeContains5G(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 574
    :cond_8
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 576
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 577
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c_ctcc:I

    return p0

    .line 580
    :cond_9
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c:I

    if-ne p3, v2, :cond_23

    .line 582
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_c:I

    goto/16 :goto_2

    :cond_a
    if-eqz p4, :cond_b

    .line 586
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_d:I

    if-ne p3, v2, :cond_23

    .line 588
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_d:I

    goto/16 :goto_2

    .line 591
    :cond_b
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c:I

    if-ne p3, v2, :cond_23

    .line 593
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_c:I

    goto/16 :goto_2

    .line 550
    :cond_c
    :goto_0
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 552
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 553
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b_ctcc:I

    return p0

    .line 556
    :cond_d
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b:I

    if-ne p3, v2, :cond_23

    .line 558
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_b:I

    goto/16 :goto_2

    :cond_e
    if-eqz p4, :cond_f

    .line 562
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_a:I

    if-ne p3, v2, :cond_23

    .line 564
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_a:I

    goto/16 :goto_2

    .line 567
    :cond_f
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b:I

    if-ne p3, v2, :cond_23

    .line 569
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_b:I

    goto/16 :goto_2

    .line 487
    :pswitch_3
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 488
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_CTA:I

    return p0

    .line 490
    :cond_10
    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->getPreferredNetworkMode(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_11

    if-ne p1, v1, :cond_12

    .line 491
    :cond_11
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v3, :cond_17

    .line 492
    :cond_12
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v3, :cond_13

    invoke-static {p1}, Lcom/android/settings/AsusTelephonyUtils;->isNetworkTypeContains5G(I)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    .line 517
    :cond_13
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 519
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 520
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c_ctcc:I

    return p0

    .line 523
    :cond_14
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c:I

    if-ne p3, v2, :cond_23

    .line 525
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_c:I

    goto/16 :goto_2

    :cond_15
    if-eqz p4, :cond_16

    .line 529
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_d:I

    if-ne p3, v2, :cond_23

    .line 531
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_d:I

    goto/16 :goto_2

    .line 534
    :cond_16
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_c:I

    if-ne p3, v2, :cond_23

    .line 536
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_c:I

    goto/16 :goto_2

    .line 493
    :cond_17
    :goto_1
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 495
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 496
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b_ctcc:I

    return p0

    .line 499
    :cond_18
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b:I

    if-ne p3, v2, :cond_23

    .line 501
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_b:I

    goto/16 :goto_2

    :cond_19
    if-eqz p4, :cond_1a

    .line 505
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_a:I

    if-ne p3, v2, :cond_23

    .line 507
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_a:I

    goto/16 :goto_2

    .line 510
    :cond_1a
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_b:I

    if-ne p3, v2, :cond_23

    .line 512
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_tr_b:I

    goto/16 :goto_2

    .line 479
    :pswitch_4
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_9:I

    if-ne p3, v2, :cond_23

    .line 481
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_9_tr:I

    goto/16 :goto_2

    .line 472
    :pswitch_5
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_8:I

    if-ne p3, v2, :cond_23

    .line 474
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_8_tr:I

    goto/16 :goto_2

    .line 458
    :pswitch_6
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isPicasso()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 459
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_7_Picasso:I

    if-ne p3, v2, :cond_23

    .line 461
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_7_Picasso_tr:I

    goto/16 :goto_2

    .line 464
    :cond_1b
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_LTE_l:I

    if-ne p3, v2, :cond_23

    .line 466
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_LTE_l_tr:I

    goto :goto_2

    .line 451
    :pswitch_7
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_choices_cn:I

    if-ne p3, v2, :cond_23

    .line 453
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_choices_cn_trCustomized:I

    goto :goto_2

    .line 444
    :pswitch_8
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_choices_cn:I

    if-ne p3, v2, :cond_23

    .line 446
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_choices_cn_trCustomized:I

    goto :goto_2

    .line 440
    :pswitch_9
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_non_LTE_l:I

    goto :goto_2

    .line 436
    :pswitch_a
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_non_LTE_l:I

    goto :goto_2

    .line 429
    :pswitch_b
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_LTE_l:I

    if-ne p3, v2, :cond_23

    .line 431
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_LTE_l_tr:I

    goto :goto_2

    .line 425
    :pswitch_c
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_intel_lte_me372cl:I

    goto :goto_2

    .line 651
    :cond_1c
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 652
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_CTA:I

    return p0

    .line 654
    :cond_1d
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 656
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 657
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_cn_ctcc:I

    return p0

    .line 660
    :cond_1e
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_cn:I

    if-ne p3, v2, :cond_23

    .line 662
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_cn_tr:I

    goto :goto_2

    :cond_1f
    if-eqz p4, :cond_20

    .line 666
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21:I

    if-ne p3, v2, :cond_23

    .line 668
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_tr:I

    goto :goto_2

    .line 671
    :cond_20
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_cn:I

    if-ne p3, v2, :cond_23

    .line 673
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_21_cn_tr:I

    goto :goto_2

    .line 641
    :cond_21
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 642
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_10_11_12_CTA:I

    return p0

    .line 644
    :cond_22
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_20:I

    if-ne p3, v2, :cond_23

    .line 646
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_choices_type_20_tr:I

    :cond_23
    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAsusNetworkTypeEntryValuesResId(Landroid/content/Context;IIZ)I
    .locals 3

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAsusNetworkTypeEntryValuesResId(), asusNetworkTypeSetId == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,isSupportVoLTE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/16 v1, 0x14

    if-eq p2, v1, :cond_21

    const/16 v1, 0x15

    if-eq p2, v1, :cond_1c

    const/16 v1, 0x18

    const/4 v2, 0x5

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 808
    :pswitch_0
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 809
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_13_CTA:I

    return p0

    .line 811
    :cond_0
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 813
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 814
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_13_cn_ctcc:I

    return p0

    .line 817
    :cond_1
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_13_cn:I

    return p0

    :cond_2
    if-eqz p3, :cond_3

    .line 820
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_13:I

    return p0

    .line 822
    :cond_3
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_13_cn:I

    return p0

    .line 802
    :pswitch_1
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 803
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_12_CTA:I

    return p0

    .line 805
    :cond_4
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_12:I

    return p0

    .line 763
    :pswitch_2
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 764
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_CTA:I

    return p0

    .line 766
    :cond_5
    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->getPreferredNetworkMode(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x21

    if-eq p1, p2, :cond_6

    if-ne p1, v1, :cond_7

    .line 767
    :cond_6
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v2, :cond_c

    .line 768
    :cond_7
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v2, :cond_8

    invoke-static {p1}, Lcom/android/settings/AsusTelephonyUtils;->isNetworkTypeContains5G(I)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    .line 784
    :cond_8
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 786
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 787
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_c_ctcc:I

    return p0

    .line 790
    :cond_9
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_c:I

    return p0

    :cond_a
    if-eqz p3, :cond_b

    .line 793
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_d:I

    return p0

    .line 795
    :cond_b
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_c:I

    return p0

    .line 769
    :cond_c
    :goto_0
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 771
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 772
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_b_ctcc:I

    return p0

    .line 775
    :cond_d
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_b:I

    return p0

    :cond_e
    if-eqz p3, :cond_f

    .line 778
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_a:I

    return p0

    .line 780
    :cond_f
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_11_b:I

    return p0

    .line 725
    :pswitch_3
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 726
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_CTA:I

    return p0

    .line 728
    :cond_10
    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->getPreferredNetworkMode(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_11

    if-ne p1, v1, :cond_12

    .line 729
    :cond_11
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v2, :cond_17

    .line 730
    :cond_12
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getDualNtSup()I

    move-result p2

    if-lt p2, v2, :cond_13

    invoke-static {p1}, Lcom/android/settings/AsusTelephonyUtils;->isNetworkTypeContains5G(I)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_1

    .line 746
    :cond_13
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 748
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 749
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_c_ctcc:I

    return p0

    .line 752
    :cond_14
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_c:I

    return p0

    :cond_15
    if-eqz p3, :cond_16

    .line 755
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_d:I

    return p0

    .line 757
    :cond_16
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_c:I

    return p0

    .line 731
    :cond_17
    :goto_1
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 733
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 734
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_b_ctcc:I

    return p0

    .line 737
    :cond_18
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_b:I

    return p0

    :cond_19
    if-eqz p3, :cond_1a

    .line 740
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_a:I

    return p0

    .line 742
    :cond_1a
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_10_b:I

    return p0

    .line 721
    :pswitch_4
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_9:I

    return p0

    .line 718
    :pswitch_5
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_8:I

    return p0

    .line 712
    :pswitch_6
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isPicasso()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 713
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_7_Picasso:I

    return p0

    .line 715
    :cond_1b
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_LTE_l:I

    return p0

    .line 709
    :pswitch_7
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_values_cn:I

    return p0

    .line 706
    :pswitch_8
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_values_cmcc:I

    return p0

    .line 703
    :pswitch_9
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_non_LTE_l:I

    return p0

    .line 700
    :pswitch_a
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_values_intel_non_lte:I

    return p0

    .line 697
    :pswitch_b
    sget p0, Lcom/android/settings/R$array;->asus_preferred_network_mode_values_intel_lte:I

    return p0

    .line 694
    :pswitch_c
    sget p0, Lcom/android/settings/R$array;->preferred_network_mode_values_intel_lte_me372cl:I

    return p0

    .line 833
    :cond_1c
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 834
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_21_CTA:I

    return p0

    .line 836
    :cond_1d
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 838
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->isCTCCSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 839
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_21_cn_ctcc:I

    return p0

    .line 842
    :cond_1e
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_21_cn:I

    return p0

    :cond_1f
    if-eqz p3, :cond_20

    .line 845
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_21:I

    return p0

    .line 847
    :cond_20
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_21_cn:I

    return p0

    .line 827
    :cond_21
    invoke-static {p0, v0}, Lcom/android/settings/AsusTelephonyUtils;->is5GOnly(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 828
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_20_CTA:I

    return p0

    .line 830
    :cond_22
    sget p0, Lcom/android/settings/R$array;->asus_prefer_network_mode_values_type_20:I

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAsusNetworkTypeSetId()I
    .locals 4

    const-string v0, "AsusTelephonyUtils"

    const-string v1, "getAsusNetworkTypeSetId()"

    .line 318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ro.vendor.asus.network.types"

    const/4 v2, -0x1

    .line 320
    invoke-static {v1, v2}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v1

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAsusNetworkTypeSetId(), asusNetworkTypeSetId == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getCNPreferenceStartPadding(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10103bd

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    .line 1100
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 1101
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferenceLeftPandingPx(): padding_in_dp_L: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getDualNtSup()I
    .locals 4

    const-string v0, "ro.vendor.asus.phone.dual_nt_sup"

    const/4 v1, -0x1

    .line 409
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDdualNtSup() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsusTelephonyUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public static getMccMncBySlotId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMccMncBySlotId(): slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    if-nez p0, :cond_0

    const-string p0, "getMccMncBySlotId(): context is null > reutrn"

    .line 883
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "phone"

    .line 886
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    const-string p0, "getMccMncBySlotId(): TelephonyManager is null > reutrn"

    .line 888
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 891
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    .line 892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMccMncBySlotId(): mccmnc = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getMobileSlot()I
    .locals 3

    .line 297
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "persist.radio.asus.mobile_slot"

    .line 298
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "persist.vendor.asus.mobile_slot"

    .line 300
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v0

    .line 302
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileSlot(): slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getNetworkType4GAuto()I
    .locals 3

    .line 395
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getAsusNetworkTypeSetId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x9

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x16

    .line 404
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkType4GAuto(): networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkType5GAuto()I
    .locals 3

    .line 380
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->getAsusNetworkTypeSetId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x1a

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x1b

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x21

    .line 389
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetworkType5GAuto(): networkType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkTypeSummaryByNetworkMode(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1a

    const-string v1, "AsusTelephonyUtils"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 234
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Network Mode ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Ignore."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeSummaryByNetworkMode(): default errMsg = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_NR_LTE"

    .line 215
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_5G_4G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_1
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NETWORK_MODE_NR_ONLY"

    .line 229
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_5G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA"

    .line 211
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_4G_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA"

    .line 207
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_4
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_TDSCDMA_GSM_WCDMA"

    .line 203
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_2g_3g_4g_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_5
    const-string p0, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_TDSCDMA_WCDMA"

    .line 200
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_TDSCDMA_GSM_WCDMA"

    .line 196
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_7
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_TDSCDMA_GSM"

    .line 192
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_2g_3g_4g_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_8
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_TDSCDMA_GSM"

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_2g_3g_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_9
    const-string p0, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_TDSCDMA"

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, ""

    goto/16 :goto_1

    :pswitch_a
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_TDSCDMA_WCDMA"

    .line 181
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_b
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_TDSCDMA_ONLY"

    .line 177
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->preferred_network_mode_3g_summary:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_c
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_WCDMA"

    .line 155
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_4G_3G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_d
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_ONLY"

    .line 147
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_4G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_e
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_CDMA_EVDO_GSM_WCDMA"

    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_4G_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_f
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_GSM_WCDMA"

    .line 151
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_4G_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_10
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_LTE_CDMA_AND_EVDO"

    .line 159
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->network_lte:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    :pswitch_11
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_CDMA_NO_EVDO"

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->network_1x:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_12
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_CDMA/NT_MODE_EVDO_NO_CDMA/NT_MODE_GLOBAL"

    .line 165
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_13
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_GSM_UMTS"

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_14
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_WCDMA_ONLY"

    .line 131
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->network_3G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_15
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_GSM_ONLY"

    .line 143
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_16
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_WCDMA_PREF"

    .line 139
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NETWORK_MODE_NR_LTE_CDMA_EVDO_GSM_WCDMA"

    .line 224
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_5G_4G_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p1, "getNetworkTypeSummaryByNetworkMode(): NT_MODE_NR_LTE_GSM_WCDMA or NT_MODE_NR_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA"

    .line 220
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_network_5G_4G_3G_2G:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 237
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkTypeSummaryByNetworkMode(): ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPreferredNetworkMode(Landroid/content/Context;I)I
    .locals 2

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredNetworkMode, subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->getPreferredNetworkModeForSubId(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getPreferredNetworkModeForSubId(Landroid/content/Context;I)I
    .locals 2

    .line 368
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 369
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result p0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferredNetworkModeForSubId(): preferredNetworkMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getRoamingNotificationDB(Landroid/content/Context;)Z
    .locals 3

    .line 943
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_roaming_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRoamingNotificationDB: iRoamingNotificationState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static getSimEnabled(I)Z
    .locals 3

    .line 110
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne p0, v1, :cond_0

    const-string v0, "persist.radio.asus.sim2.enabled"

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "persist.radio.asus.sim1.enabled"

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    if-ne p0, v1, :cond_2

    const-string v0, "persist.vendor.asus.sim2.enabled"

    .line 118
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "persist.vendor.asus.sim1.enabled"

    .line 120
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 123
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimEnabled() slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getSubIdBySlotId(I)I
    .locals 4

    .line 307
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const-string v1, "getSubIdBySlotId slotId = "

    const-string v2, "AsusTelephonyUtils"

    if-eqz v0, :cond_0

    .line 308
    array-length v3, v0

    if-lez v3, :cond_0

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", subId[0] = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    aget v1, v0, p0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    aget p0, v0, p0

    return p0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", return "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, -0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getSystemPropertieInt(Ljava/lang/String;I)I
    .locals 1

    .line 1132
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1136
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSystemPropertieInt(), return ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static getVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "No value"

    .line 53
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vendor."

    const-string v1, ""

    .line 55
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getVendorSystemPropertie(), return retStr = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusTelephonyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getVendorSystemPropertieBoolean(Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "No value"

    .line 73
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vendor."

    const-string v1, ""

    .line 76
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 81
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVendorSystemPropertieBoolean(), return ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getVendorSystemPropertieInt(Ljava/lang/String;I)I
    .locals 2

    const/16 v0, -0x1f4

    .line 63
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string/jumbo v0, "vendor."

    const-string v1, ""

    .line 65
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getVendorSystemPropertieInt(), return ret = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusTelephonyUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static is4gEnabledOnNonDdsForDsdv(Landroid/content/Context;)Z
    .locals 3

    .line 252
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isDSDVDevice()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_nondds4g"

    .line 252
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 256
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is4gEnabledOnNonDdsForDsdv(): result = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static is5GOnly(Landroid/content/Context;I)Z
    .locals 1

    .line 1193
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isCtaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isJPSpecialSIM(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isAPILevelMoreThan29()Z
    .locals 3

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    .line 987
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "persist.product.first_api_level"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 988
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAPILevelMoreThan29(): return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isAsusNetworkTypeSetIdValid(I)Z
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAsusNetworkTypeSetIdValid(), asusNetworkTypeSetId == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isCN()Z
    .locals 1

    const-string v0, "cn"

    .line 916
    invoke-static {v0}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSKU(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCTA()Z
    .locals 3

    const-string v0, "persist.vendor.sys.cta.security"

    const/4 v1, 0x0

    .line 1068
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 1071
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCTA(): ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isCTCCSIM(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "46003"

    const-string v1, "46005"

    const-string v2, "46011"

    .line 1206
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1207
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    .line 1208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCTCCSIM(): result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isCmccMccMnc(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "46000"

    const-string v1, "46002"

    const-string v2, "46007"

    const-string v3, "46008"

    .line 859
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    .line 861
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCmccMccMnc(): result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isCtaBuild()Z
    .locals 3

    const-string v0, "ro.vendor.build.cta"

    const/4 v1, 0x0

    .line 1077
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 1080
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCtaBuild(): ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDSDVDevice()Z
    .locals 3

    const-string v0, "ro.vendor.asus.phone.dualLte"

    const/4 v1, 0x0

    .line 243
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDSDVDevice(): result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDefaultDialerPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "telecom"

    .line 999
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 1000
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p0

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDefaultDialerPackage(): packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isJPSpecialSIM(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "44003"

    const-string v1, "44016"

    const-string v2, "44014"

    .line 1197
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    .line 1199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isJPSpecialSIM(): result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isNetworkTypeContains5G(I)Z
    .locals 2

    const/16 v0, 0x17

    if-lt p0, v0, :cond_0

    const/16 v0, 0x21

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1187
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetworkTypeContains5G() ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isNetworkWorldMode()Z
    .locals 3

    .line 1086
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "persist.radio.asus.nt_world_mode"

    .line 1087
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_0
    const-string v0, "persist.vendor.asus.nt_world_mode"

    .line 1091
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :goto_0
    move v1, v2

    .line 1095
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkWorldMode(): ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isOFRSIM(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "20800"

    const-string v1, "20801"

    const-string v2, "20802"

    .line 1215
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1216
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    .line 1217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOFRSIM(): result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isOPLSIM(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "26003"

    .line 1224
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    .line 1226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOPLSIM(): result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isPicasso()Z
    .locals 2

    const-string v0, "ro.product.device"

    .line 1142
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ASUS_I007_1"

    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRakutenSim(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "44011"

    const-string v1, "44053"

    .line 994
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isSimExist(I)Z
    .locals 3

    .line 900
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p0, v2, :cond_0

    const-string v0, "gsm.sim2.present"

    goto :goto_0

    :cond_0
    const-string v0, "gsm.sim1.present"

    .line 902
    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    if-ne p0, v2, :cond_2

    const-string/jumbo v0, "vendor.gsm.sim2.present"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "vendor.gsm.sim1.present"

    .line 905
    :goto_1
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 910
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSimExist(): iSlot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AsusTelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isSimReady(I)Z
    .locals 2

    .line 1108
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/AsusTelephonyUtils;->getSimEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecificNetwork(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "phone"

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 272
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 273
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecificSKU(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "ro.vendor.build.asus.sku"

    const-string v1, ""

    .line 920
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSpecificSKU(): sku="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AsusTelephonyUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "ro.product.name"

    .line 926
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpecificSKU(): name="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecificSim(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 868
    invoke-static {p2}, Lcom/android/settings/AsusTelephonyUtils;->isSimExist(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    invoke-static {p0, p2}, Lcom/android/settings/AsusTelephonyUtils;->getMccMncBySlotId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    move p2, v0

    .line 870
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 871
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    :cond_2
    return v0
.end method

.method public static isTrNetwork(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "tr"

    .line 265
    invoke-static {p0, v0, p1}, Lcom/android/settings/AsusTelephonyUtils;->isSpecificNetwork(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isWindCid()Z
    .locals 4

    const-string v0, "ro.vendor.config.CID"

    const-string v1, ""

    .line 1047
    invoke-static {v0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWindCid(): CID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsusTelephonyUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WIND"

    .line 1049
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWindCid(): result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static setRoamingNotificationDB(Landroid/content/Context;Z)V
    .locals 2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRoamingNotificationDB: on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_roaming_notification"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setSystemPropertie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemPropertie(): inputPropName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSystemPropertieInt(Ljava/lang/String;I)V
    .locals 2

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemPropertieInt(): inputPropName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVendorSystemPropertie(): inputPropName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsusTelephonyUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ro.product.first_api_level"

    const/4 v1, -0x1

    .line 87
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "persist.product.first_api_level"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 88
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "vendor."

    const-string v3, ""

    .line 90
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 93
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    :try_start_1
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 103
    :cond_1
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static showAospSetting()Z
    .locals 3

    const-string v0, "persist.dbg.showAospSetting"

    const/4 v1, 0x0

    .line 954
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static videoCallingDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4

    .line 1006
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1007
    sget v1, Lcom/android/settings/R$string;->video_calling_settings_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1008
    sget v1, Lcom/android/settings/R$string;->vilte_enable_need_download_google_dialer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCallingDialog(): appInstalledOrNot() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.dialer"

    invoke-static {p0, v2}, Lcom/android/settings/AsusTelephonyUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AsusTelephonyUtils"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {p0, v2}, Lcom/android/settings/AsusTelephonyUtils;->appInstalledOrNot(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    sget v1, Lcom/android/settings/R$string;->go_to_google_paly:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/AsusTelephonyUtils$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AsusTelephonyUtils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1021
    :cond_0
    sget v1, Lcom/android/settings/R$string;->setup_now:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/AsusTelephonyUtils$2;

    invoke-direct {v2, p0}, Lcom/android/settings/AsusTelephonyUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v1, 0x1040009

    .line 1029
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
