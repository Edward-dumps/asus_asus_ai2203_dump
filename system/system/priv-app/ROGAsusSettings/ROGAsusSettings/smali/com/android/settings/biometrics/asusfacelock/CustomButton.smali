.class public Lcom/android/settings/biometrics/asusfacelock/CustomButton;
.super Landroid/widget/Button;
.source "CustomButton.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/asusfacelock/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 32
    sget v0, Lcom/android/settings/R$style;->ChooseLockButton_Positive:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/biometrics/asusfacelock/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/CustomButton;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/CustomButton;->initButton()V

    return-void
.end method

.method private initButton()V
    .locals 0

    return-void
.end method
