.class public Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;
.super Landroid/widget/LinearLayout;
.source "OneHandGestureIndicatorView.java"


# instance fields
.field private mDrawable:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;

.field private mIndicator:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    sget v1, Lcom/android/settings/R$layout;->one_hand_gesture_indicator_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52
    new-instance v0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;

    invoke-direct {v0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mDrawable:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;

    .line 54
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->indicator_bottom:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mIndicator:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mDrawable:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x800

    or-int/lit16 v0, v0, 0x100

    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x400

    const/4 v1, 0x2

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x4

    new-array v1, v1, [I

    .line 66
    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x2000

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x101056c
        0x10104e0
    .end array-data
.end method


# virtual methods
.method public getLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 86
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    .line 88
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1000018

    or-int/2addr p1, v1

    const/16 v1, 0x7f6

    const/4 v2, -0x3

    invoke-direct {v0, v1, p1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 95
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string p1, "BackGestureIndicatorView"

    .line 96
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public setIndicatorWidth(I)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorView;->mDrawable:Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/asusadvancedsettings/OneHandGestureIndicatorDrawable;->setWidth(I)V

    return-void
.end method
