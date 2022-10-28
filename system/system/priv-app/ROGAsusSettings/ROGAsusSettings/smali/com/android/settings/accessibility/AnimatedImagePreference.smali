.class public Lcom/android/settings/accessibility/AnimatedImagePreference;
.super Landroidx/preference/Preference;
.source "AnimatedImagePreference.java"


# instance fields
.field private final mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mImageUri:Landroid/net/Uri;

.field private mMaxHeight:I


# direct methods
.method private getInputStreamFromUri(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2

    .line 168
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find content uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnimatedImagePreference"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private hideAllChildViews(Landroid/view/View;)V
    .locals 2

    .line 176
    check-cast p1, Landroid/view/ViewGroup;

    const/4 p0, 0x0

    .line 177
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 178
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 155
    instance-of p0, p1, Landroid/graphics/drawable/Animatable;

    if-nez p0, :cond_0

    return-void

    .line 159
    :cond_0
    instance-of p0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz p0, :cond_1

    .line 160
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/Animatable2;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable2;->clearAnimationCallbacks()V

    .line 163
    :cond_1
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method private resetAnimations(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 149
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AnimatedImagePreference;->resetAnimation(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method

.method private startAnimation(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 135
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Animatable2;

    if-eqz v0, :cond_1

    .line 140
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Animatable2;

    iget-object p0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Animatable2;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto :goto_0

    .line 141
    :cond_1
    instance-of p0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p0, :cond_2

    .line 142
    move-object p0, p1

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 145
    :cond_2
    :goto_0
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method private startAnimationWith(Landroid/widget/ImageView;)V
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AnimatedImagePreference;->startAnimation(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AnimatedImagePreference;->getInputStreamFromUri(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "Invalid resource."

    .line 126
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p1, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 128
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 129
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const/4 p0, 0x0

    .line 131
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 69
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->animated_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->lottie_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AnimatedImagePreference;->resetAnimations(Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 77
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AnimatedImagePreference;->hideAllChildViews(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AnimatedImagePreference;->startAnimationWith(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/AnimatedImagePreference;->startLottieAnimationWith(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 88
    :cond_2
    :goto_0
    iget p1, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    const/4 v2, -0x1

    if-le p1, v2, :cond_3

    .line 89
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 90
    iget p0, p0, Lcom/android/settings/accessibility/AnimatedImagePreference;->mMaxHeight:I

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_3
    :goto_1
    return-void
.end method
