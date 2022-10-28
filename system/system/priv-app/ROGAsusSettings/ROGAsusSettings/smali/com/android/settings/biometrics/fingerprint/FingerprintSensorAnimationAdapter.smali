.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FingerprintSensorAnimationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static ANIMATION_COUNT:I

.field public static FOD_ANIMATION_STYLE_DEFAULT:I

.field private static PREVEIW_IMAGE:[I

.field public static PROVIDER_INDEX:[I

.field private static SELECT_IMAGE:[I

.field public static STYLE:[I

.field public static STYLE_TEXT:[Ljava/lang/String;

.field public static final isRog2n3:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mList:[I

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSelectItem:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 59
    invoke-static {}, Lcom/android/settings/Utils;->isBatman()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isRog6()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settingslib/Utils;->isRog5()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settingslib/Utils;->isRog2()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->FOD_ANIMATION_STYLE_DEFAULT:I

    .line 60
    invoke-static {}, Lcom/android/settingslib/Utils;->isRog2()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/settingslib/Utils;->isRog3()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->isRog2n3:Z

    new-array v0, v4, [I

    .line 62
    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_signal:I

    aput v6, v0, v5

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_crystal:I

    aput v6, v0, v3

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_halo:I

    const/4 v7, 0x2

    aput v6, v0, v7

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_lightning:I

    aput v6, v0, v1

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_takeoff:I

    const/4 v8, 0x4

    aput v6, v0, v8

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_red:I

    aput v6, v0, v2

    sget v6, Lcom/android/settings/R$raw;->fod_animation_style_none:I

    const/4 v9, 0x6

    aput v6, v0, v9

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    new-array v0, v4, [I

    .line 72
    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_signal:I

    aput v6, v0, v5

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_crystal1:I

    aput v6, v0, v3

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_halo1:I

    aput v6, v0, v7

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_lightning1:I

    aput v6, v0, v1

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_takeoff:I

    aput v6, v0, v8

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_red:I

    aput v6, v0, v2

    sget v6, Lcom/android/settings/R$drawable;->fod_animation_select_none1:I

    aput v6, v0, v9

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    new-array v6, v4, [I

    .line 81
    sget v10, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_signal:I

    aput v10, v6, v5

    sget v5, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_crystal:I

    aput v5, v6, v3

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_halo:I

    aput v3, v6, v7

    sget v3, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_lightning:I

    aput v3, v6, v1

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_takeoff:I

    aput v1, v6, v8

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_bloom:I

    aput v1, v6, v2

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_none:I

    aput v1, v6, v9

    sput-object v6, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    const-string v10, "signal"

    const-string v11, "crystal"

    const-string v12, "halo"

    const-string v13, "lightning"

    const-string v14, "takeoff"

    const-string v15, "red"

    const-string v16, "none"

    .line 90
    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    new-array v1, v4, [I

    .line 99
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    .line 139
    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->ANIMATION_COUNT:I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x3
        0x4
        0x5
        0x7
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 150
    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->rogGenerationInit()V

    .line 152
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 153
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mList:[I

    .line 154
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mPreviewImage:Landroid/widget/ImageView;

    .line 155
    iput-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mTextView:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getIndicatorDrawable(Landroid/content/ContentResolver;)I
    .locals 3

    .line 298
    sget v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->FOD_INDICATOR_STYLE_DEFAULT:I

    const-string v1, "fod_indicator_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 300
    :goto_0
    sget v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->INDICATOR_COUNT:I

    if-ge v1, v2, :cond_1

    .line 301
    sget-object v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PROVIDER_INDEX:[I

    aget v2, v2, v1

    if-ne p0, v2, :cond_0

    sget-object p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    aget p0, p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    sget-object p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorIndicatorAdapter;->PREVEIW_IMAGE_INDICATOR:[I

    aget p0, p0, v0

    return p0
.end method

.method public static getProviderValue(Landroid/content/ContentResolver;)I
    .locals 3

    .line 284
    sget v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->FOD_ANIMATION_STYLE_DEFAULT:I

    const-string v1, "fod_animation_style"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    .line 286
    :goto_0
    sget v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->ANIMATION_COUNT:I

    if-ge v1, v2, :cond_1

    .line 287
    sget-object v2, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

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

    .line 293
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result p0

    .line 294
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    aget p0, v0, p0

    return p0
.end method

.method public static rogGenerationInit()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isFirstAPIBiggerThan30()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    sget v1, Lcom/android/settings/R$raw;->fod_animation_style_red:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    .line 162
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_select_red:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    .line 163
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_bloom:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    .line 164
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    .line 165
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "red"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->ANIMATION_COUNT:I

    .line 168
    :cond_0
    sget-boolean v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->isRog2n3:Z

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    sget v1, Lcom/android/settings/R$raw;->fod_animation_style_takeoff:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    .line 170
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_select_takeoff:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    .line 171
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_takeoff:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    .line 172
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    .line 173
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "takeoff"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->ANIMATION_COUNT:I

    .line 176
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isBatman()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    sget v1, Lcom/android/settings/R$raw;->fod_animation_style_signal:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    .line 178
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    sget v1, Lcom/android/settings/R$drawable;->fod_animation_select_signal:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    .line 179
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_animation_style_signal:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    .line 180
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    .line 181
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    const-string v1, "signal"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE_TEXT:[Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->SELECT_IMAGE:[I

    array-length v0, v0

    sput v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->ANIMATION_COUNT:I

    :cond_2
    return-void
.end method

.method public static setProviderValue(Landroid/content/ContentResolver;I)V
    .locals 1

    .line 311
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PROVIDER_INDEX:[I

    aget p1, v0, p1

    const-string v0, "fod_animation_style"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public deleteImageDrawable()V
    .locals 3

    const-string v0, "FingerprintSensorAnimationAdapter"

    const-string v1, "deleteImageDrawable"

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 259
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 261
    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 262
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 265
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "deleteImageDrawable null"

    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mList:[I

    array-length p0, p0

    return p0
.end method

.method public init(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getProviderValue(Landroid/content/ContentResolver;)I

    move-result v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->setSelectItem(I)V

    .line 279
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 280
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 53
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;I)V
    .locals 4

    .line 203
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->imageView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 204
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->item_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 205
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mList:[I

    aget v2, v2, p2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->imageView_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 207
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->getIndicatorDrawable(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    .line 208
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 209
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mSelectItem:I

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    .line 210
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 215
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 216
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 217
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->asus_fingerprint_fod_animation_item_bg_stroke_width_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 218
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 223
    :goto_0
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;I)V

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;
    .locals 1

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->fod_animation_adapter_item:I

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 198
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setAnimation()V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mSelectItem:I

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->setProviderValue(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public setSelectItem(I)V
    .locals 4

    .line 238
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mSelectItem:I

    .line 239
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->STYLE:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 240
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 242
    :try_start_0
    sget-object v1, Lcom/linecorp/apng/ApngDrawable;->Companion:Lcom/linecorp/apng/ApngDrawable$Companion;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->PREVEIW_IMAGE:[I

    aget p1, v3, p1

    invoke-virtual {v1, v2, p1, v0, v0}, Lcom/linecorp/apng/ApngDrawable$Companion;->decode(Landroid/content/res/Resources;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/linecorp/apng/ApngDrawable;

    move-result-object p1

    .line 243
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    instance-of v1, p1, Lcom/linecorp/apng/ApngDrawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p1, v1}, Lcom/linecorp/apng/ApngDrawable;->setLoopCount(I)V

    .line 246
    invoke-virtual {p1}, Lcom/linecorp/apng/ApngDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 249
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSensorAnimationAdapter;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p0, "FingerprintSensorAnimationAdapter"

    .line 250
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    .line 253
    :goto_1
    throw p0
.end method
