.class final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;
.super Landroid/widget/ArrayAdapter;
.source "KeyboardLayoutDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyboardLayoutAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:I

.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "simple_list_item_2_single_choice"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 225
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    .line 230
    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 231
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 3

    if-eqz p1, :cond_0

    .line 261
    invoke-static {p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "simple_list_item_single_choice"

    const-string v1, "layout"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 265
    invoke-static {p1, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    :cond_1
    const p0, 0x1020014

    .line 267
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckedTextView;

    .line 268
    invoke-virtual {p0, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p0, p4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-object p1
.end method

.method private inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .locals 4

    const-string v0, "android"

    if-eqz p1, :cond_0

    .line 276
    invoke-static {p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->isTwoLine(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "simple_list_item_2_single_choice"

    const-string v3, "layout"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 277
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 280
    invoke-static {p1, p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->setTwoLine(Landroid/view/View;Z)V

    :cond_1
    const p2, 0x1020014

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x1020015

    .line 283
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 284
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v2, "radio"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    .line 286
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p0, p5}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-object p1
.end method

.method private static isTwoLine(Landroid/view/View;)Z
    .locals 1

    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setTwoLine(Landroid/view/View;Z)V
    .locals 0

    .line 297
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 240
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->keyboard_layout_default_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    :goto_0
    move-object v6, v0

    move-object v5, v1

    .line 250
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move v7, p1

    .line 251
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    invoke-direct {p0, p2, p3, v5, v7}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateOneLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    .line 254
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->inflateTwoLine(Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setCheckedItem(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;->mCheckedItem:I

    return-void
.end method
