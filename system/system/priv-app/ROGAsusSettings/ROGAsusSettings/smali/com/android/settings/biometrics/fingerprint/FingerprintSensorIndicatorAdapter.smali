.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FingerprintSensorIndicatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOD_INDICATOR_STYLE_DEFAULT:I

.field public static INDICATOR_COUNT:I

.field public static PREVEIW_IMAGE_INDICATOR:[I

.field public static PROVIDER_INDEX:[I

.field private static SELECT_IMAGE:[I

.field public static STYLE:[I

.field public static STYLE_TEXT:[Ljava/lang/String;

.field public static final isRog2n3:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIndicatorImg:Landroid/widget/ImageView;

.field private mSelectItem:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 68
    invoke-static {}, Lcom/android/settings/Utils;->isBatman()Z

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->FOD_INDICATOR_STYLE_DEFAULT:I

    .line 69
    invoke-static {}, Lcom/android/settingslib/Utils;->isRog2()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settingslib/Utils;->isRog3()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->isRog2n3:Z

    new-array v4, v1, [I

    .line 71
    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_batman:I

    aput v5, v4, v3

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_classic1:I

    aput v5, v4, v2

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_bloom_green:I

    const/4 v6, 0x2

    aput v5, v4, v6

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_royal_gold:I

    const/4 v7, 0x3

    aput v5, v4, v7

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_opera_phantom:I

    const/4 v8, 0x4

    aput v5, v4, v8

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_bravery:I

    const/4 v9, 0x5

    aput v5, v4, v9

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_red:I

    const/4 v10, 0x6

    aput v5, v4, v10

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_red:I

    const/4 v11, 0x7

    aput v5, v4, v11

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_justice:I

    const/16 v12, 0x8

    aput v5, v4, v12

    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_infinity:I

    const/16 v13, 0x9

    aput v5, v4, v13

    if-eqz v0, :cond_4

    .line 82
    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_fantasy:I

    goto :goto_3

    :cond_4
    sget v5, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_fantasy1:I

    :goto_3
    const/16 v14, 0xa

    aput v5, v4, v14

    sput-object v4, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    new-array v5, v1, [I

    .line 84
    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_batman_large:I

    aput v15, v5, v3

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_classic_large:I

    aput v15, v5, v2

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_bloom_green_large:I

    aput v15, v5, v6

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_royal_gold_large:I

    aput v15, v5, v7

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_opera_phantom_large:I

    aput v15, v5, v8

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_bravery_large:I

    aput v15, v5, v9

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_red_large:I

    aput v15, v5, v10

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_red_large:I

    aput v15, v5, v11

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_justice_large:I

    aput v15, v5, v12

    sget v15, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_infinity_large:I

    aput v15, v5, v13

    if-eqz v0, :cond_5

    .line 95
    sget v0, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_fantasy_large:I

    goto :goto_4

    :cond_5
    sget v0, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_fantasy1_large:I

    :goto_4
    aput v0, v5, v14

    sput-object v5, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 97
    sget v5, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_batman:I

    aput v5, v0, v3

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_classic:I

    aput v3, v0, v2

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_bloom_green:I

    aput v3, v0, v6

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_royal_gold:I

    aput v3, v0, v7

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_opera_phantom:I

    aput v3, v0, v8

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_bravery:I

    aput v3, v0, v9

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_red:I

    aput v3, v0, v10

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_fearless:I

    aput v3, v0, v11

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_justice:I

    aput v3, v0, v12

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_infinity:I

    aput v3, v0, v13

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_fantasy:I

    aput v3, v0, v14

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    const-string v15, "batman"

    const-string v16, "classic"

    const-string v17, "bloom_green"

    const-string v18, "royal_gold"

    const-string v19, "opera_phantom"

    const-string v20, "rog_bravery"

    const-string v21, "red"

    const-string v22, "rog_fearless"

    const-string v23, "rog_justice"

    const-string v24, "rog_infinity"

    const-string v25, "rog_fantasy"

    .line 110
    filled-new-array/range {v15 .. v25}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 123
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    .line 137
    array-length v0, v4

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0x1
        0x2
        0x3
        0x4
        0x5
        0xb
        0xc
        0x6
        0x7
        0x8
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 146
    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->rogGenerationInit()V

    .line 148
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mActivity:Landroid/app/Activity;

    .line 149
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mIndicatorImg:Landroid/widget/ImageView;

    .line 150
    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mTextView:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getProviderValue(Landroid/content/ContentResolver;)I
    .locals 3

    .line 275
    sget v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->FOD_INDICATOR_STYLE_DEFAULT:I

    const-string v1, "fod_indicator_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 277
    :goto_0
    sget v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    if-ge v1, v2, :cond_1

    .line 278
    sget-object v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getSelectStringId(Landroid/content/ContentResolver;)I
    .locals 1

    .line 284
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result p0

    .line 285
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    aget p0, v0, p0

    return p0
.end method

.method public static rogGenerationInit()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan30()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_opera_phantom:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    .line 157
    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_bravery:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    .line 159
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_opera_phantom_large:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    .line 160
    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_bravery_large:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    .line 162
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_opera_phantom:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    .line 163
    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_bravery:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    .line 165
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    const/4 v1, 0x5

    .line 166
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    .line 168
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "opera_phantom"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "rog_bravery"

    .line 169
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    goto :goto_0

    .line 172
    :cond_0
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_red:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    .line 173
    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_red:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    .line 175
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_red_large:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    .line 176
    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_rog_red_large:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    .line 178
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_red:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    .line 179
    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_rog_fearless:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    .line 181
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    const/16 v1, 0xc

    .line 182
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    .line 184
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "red"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "rog_fearless"

    .line 185
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    .line 188
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isBatman()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_batman:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    .line 191
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_indicator_batman_large:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    .line 193
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_indicator_style_batman:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    .line 195
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    .line 197
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "batman"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    :cond_1
    return-void
.end method

.method public static setProviderValue(Landroid/content/ContentResolver;I)V
    .locals 1

    .line 293
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    aget p1, v0, p1

    const-string v0, "fod_indicator_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 264
    sget p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    return p0
.end method

.method public init(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->setSelectItem(I)V

    .line 270
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 271
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 63
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;I)V
    .locals 4

    .line 221
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 222
    sget v1, Lcom/android/settings/R$drawable;->fod_animation_select_none1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->imageView_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->item_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 225
    sget-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 227
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mSelectItem:I

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 233
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 234
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 235
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->asus_fingerprint_fod_animation_item_bg_stroke_width_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 241
    :goto_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;
    .locals 1

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->fod_animation_adapter_item:I

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 216
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAnimation()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mSelectItem:I

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->setProviderValue(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public setSelectItem(I)V
    .locals 2

    .line 256
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mSelectItem:I

    .line 257
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->STYLE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->mIndicatorImg:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->SELECT_IMAGE:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
