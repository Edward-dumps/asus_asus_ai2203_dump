.class public Lcom/android/settings/analytics/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# direct methods
.method private static getAppSecret()Ljava/lang/String;
    .locals 4

    const-string v0, "ro.build.product"

    const-string v1, ""

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.vendor.build.asus.sku"

    .line 21
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CN"

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/WW"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "ZS661KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "ZS661KS/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "ZS660KL/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "ZS660KL/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "AI2203/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "AI2203/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "AI2202/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v2, 0xb

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "AI2201/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "AI2201/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "ZS676KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "ZS676KS/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_b
    const-string v3, "ZS675KW/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_c
    const-string v3, "ZS675KW/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_d
    const-string v3, "ZS673KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_e
    const-string v3, "ZS673KS/CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1

    :cond_f
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_f
    const-string v3, "ZS672KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_10
    const-string v3, "ZS590KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1

    :cond_11
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_11
    const-string v3, "ZS670KS/WW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    :cond_12
    const/4 v2, 0x0

    :goto_1
    const-string v0, "43d4d784-28c2-4814-983d-19326214378a"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "2cf479b0-6a74-46d2-a9c0-ea7f9b305b3d"

    goto :goto_2

    :pswitch_1
    const-string v1, "d3d275b3-dd52-48ab-bce1-7613a34e6ba4"

    goto :goto_2

    :pswitch_2
    const-string v1, "a2b035f8-3177-48bb-b0a6-1af36944eeca"

    goto :goto_2

    :pswitch_3
    const-string v1, "246b83d8-8116-40f5-9455-251ba3de07af"

    goto :goto_2

    :pswitch_4
    const-string v1, "fd0aa27f-fb4f-4c1d-ac00-dbb09c0a060c"

    goto :goto_2

    :pswitch_5
    const-string v1, "72a940ee-f102-42a1-992a-e6ebb404a299"

    goto :goto_2

    :pswitch_6
    const-string v1, "8a516bf8-17de-4cbd-a38e-c541614ed89b"

    goto :goto_2

    :pswitch_7
    const-string v1, "ad11ec5d-56c4-4cde-b54b-fdf81c9bf664"

    goto :goto_2

    :pswitch_8
    const-string v1, "8b0c0ed1-fd98-4e1c-ac89-f566d6f79cce"

    goto :goto_2

    :pswitch_9
    const-string v1, "6c6a1924-cf8b-4ad1-8c84-7aa44dabc2a0"

    goto :goto_2

    :pswitch_a
    const-string v1, "1458526c-36fc-4828-b8ea-55b445929b64"

    goto :goto_2

    :pswitch_b
    const-string v1, "5e224459-cd64-4091-a5c2-0ffc8bf5598b"

    goto :goto_2

    :pswitch_c
    const-string v1, "855f8f9b-ecef-41d6-8f07-4bd99423acf5"

    goto :goto_2

    :pswitch_d
    const-string v1, "0fb0cae1-950b-4fad-b8b9-76f87444da1f"

    goto :goto_2

    :pswitch_e
    const-string v1, "19278191-7e6e-4fc1-b149-d54ed19444c6"

    goto :goto_2

    :pswitch_f
    move-object v1, v0

    goto :goto_2

    :pswitch_10
    const-string v1, "74548ad5-389f-4f4a-b0a3-9b13d34c6ab1"

    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x6ed8150f -> :sswitch_11
        -0x6ceccb6c -> :sswitch_10
        -0x6b6e63d1 -> :sswitch_f
        -0x69b98da7 -> :sswitch_e
        -0x69b98b32 -> :sswitch_d
        -0x664e0aed -> :sswitch_c
        -0x664e0878 -> :sswitch_b
        -0x649b03ca -> :sswitch_a
        -0x649b0155 -> :sswitch_9
        -0xe64bc2f -> :sswitch_8
        -0xe64b9ba -> :sswitch_7
        -0xe64455b -> :sswitch_6
        -0xe63d371 -> :sswitch_5
        -0xe63d0fc -> :sswitch_4
        0x5c3e7ea2 -> :sswitch_3
        0x5c3e8117 -> :sswitch_2
        0x5df685da -> :sswitch_1
        0x5df6884f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
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

.method public static start(Landroid/app/Application;)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/android/settings/analytics/AnalyticsManager;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/analytics/Analytics;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    const-wide/32 v0, 0x240c8400

    .line 15
    invoke-static {p0, v0, v1}, Lcom/android/settings/analytics/AnalyticsJobService;->schedule(Landroid/content/Context;J)V

    return-void
.end method
