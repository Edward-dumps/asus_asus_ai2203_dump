.class public Lcom/android/settings/RegulatoryInfoDisplayActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RegulatoryInfoDisplayActivity.java"


# instance fields
.field private final REGULATORY_INFO_RESOURCE:Ljava/lang/String;

.field private mDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$-XH64hs07jkpMav4pzhJ2ZXvPuA(Lcom/android/settings/RegulatoryInfoDisplayActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->lambda$onCreate$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "regulatory_info"

    .line 62
    iput-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->REGULATORY_INFO_RESOURCE:Ljava/lang/String;

    return-void
.end method

.method private getCoo()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.boot.hardware.coo"

    const-string v0, ""

    .line 216
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSku()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.boot.hardware.sku"

    const-string v0, ""

    .line 220
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method


# virtual methods
.method getResourceId()I
    .locals 7

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "regulatory_info"

    const-string v3, "drawable"

    .line 168
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "regulatory_info_"

    if-nez v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual {v5, v2, v3, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v2

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getCoo()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-virtual {v2, v1, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 203
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 77
    invoke-static {}, Lcom/android/settings/utils/ResCustomizeConfig;->isShowRegulatory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    .line 89
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->regulatory_labels:I

    .line 90
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/RegulatoryInfoDisplayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/RegulatoryInfoDisplayActivity;)V

    .line 91
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/android/settings/utils/ResCustomizeConfig;->getRegulatoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-nez v4, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/RegulatoryInfoDisplayActivity;->getResourceId()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    const/4 v6, 0x2

    if-eqz v5, :cond_4

    .line 111
    :try_start_0
    invoke-static {}, Lcom/android/settings/utils/ResCustomizeConfig;->getRegulatoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-le v7, v6, :cond_3

    .line 115
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v4

    .line 121
    :catch_0
    :goto_3
    sget v2, Lcom/android/settings/R$string;->regulatory_info_text:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz v3, :cond_7

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/android/settings/R$layout;->regulatory_info:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 125
    sget v2, Lcom/android/settings/R$id;->regulatoryInfo:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 127
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 129
    :cond_5
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_4
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 134
    sget v0, Lcom/android/settings/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "#212121"

    .line 135
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    sget v0, Lcom/android/settings/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    sget v2, Lcom/android/settings/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 142
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->dp2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v6, :cond_6

    .line 147
    iget-object p0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x2

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_5

    .line 149
    :cond_6
    iget-object p0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setLayout(II)V

    goto :goto_5

    .line 152
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 153
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x102000b

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 p1, 0x11

    .line 157
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :goto_5
    return-void

    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings/RegulatoryInfoDisplayActivity;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 212
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    return-void
.end method
