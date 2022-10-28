.class public Lcom/android/settings/accessibility/AccessibilityDialogUtils;
.super Ljava/lang/Object;
.source "AccessibilityDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$5tpTm4hWSKs1IoLRxkN2mTLuPQs(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$setCustomButtonsClickListener$2(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cop3P_GRARyuPFo_0SXgXRyD3w8(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$setCustomButtonsClickListener$1(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F89HzqjFJpwf-2rTv8FkXE-QZ4E(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$getCustomizeAccessibilityButtonLink$4(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P9t-vu-Sg_wToNlRG5YrdF0OiiY(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$initAdvancedWidget$3(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X9ckJH4zJhbC2cbkh7p9U9dbooQ(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->lambda$createDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static createCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 489
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 491
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 492
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->save:I

    .line 493
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    const/4 p3, 0x0

    .line 494
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 496
    instance-of p1, p2, Landroid/widget/ScrollView;

    if-nez p1, :cond_0

    instance-of p1, p2, Landroid/widget/AbsListView;

    if-eqz p1, :cond_1

    .line 497
    :cond_0
    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    :cond_1
    return-object p0
.end method

.method private static createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 183
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->save:I

    .line 186
    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    sget-object p2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda0;

    .line 187
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    const-string v0, "layout_inflater"

    .line 274
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 309
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_magnification_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 311
    sget v0, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 315
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 301
    :cond_1
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 303
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 304
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 305
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 306
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 293
    :cond_2
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut_magnification:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 295
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 296
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 297
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 298
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initAdvancedWidget(Landroid/view/View;)V

    goto :goto_0

    .line 287
    :cond_3
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 289
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V

    .line 290
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 281
    :cond_4
    sget p1, Lcom/android/settings/R$layout;->accessibility_edit_shortcut:I

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 283
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    .line 284
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-object p1
.end method

.method public static createMagnificationSwitchShortcutDialog(Landroid/content/Context;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;)Landroid/app/Dialog;
    .locals 3

    .line 168
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createSwitchShortcutDialogContentView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 169
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->accessibility_magnification_switch_shortcut_title:I

    .line 171
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v1, 0x0

    .line 174
    invoke-static {p0, v0, p1, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setCustomButtonsClickListener(Landroid/app/Dialog;Landroid/view/View;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;)V

    .line 176
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    return-object p0
.end method

.method public static createSingleChoiceListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settings/accessibility/ItemInfoArrayAdapter$ItemInfo;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 513
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const v1, 0x102000a

    .line 515
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    const/4 v1, 0x0

    .line 516
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 517
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 519
    new-instance v1, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/accessibility/ItemInfoArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 520
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private static createSwitchShortcutDialogContentView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x4

    .line 263
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createEditDialogContentView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    .line 427
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    .line 432
    new-instance v1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 435
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software_floating:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Landroid/content/Context;Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;
    .locals 5

    .line 440
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_software:I

    .line 441
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    const-string v2, "%s"

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x2

    .line 447
    sget v3, Lcom/android/settings/R$drawable;->ic_accessibility_new:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 448
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, p0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const-string v4, ""

    .line 449
    invoke-virtual {v3, v4}, Landroid/text/style/ImageSpan;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    .line 450
    invoke-virtual {p0, v4, v4, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 p0, 0x21

    .line 451
    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private static initAdvancedWidget(Landroid/view/View;)V
    .locals 2

    .line 393
    sget v0, Lcom/android/settings/R$id;->advanced_shortcut:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 394
    sget v1, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 395
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static initHardwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 367
    sget v0, Lcom/android/settings/R$id;->hardware_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 368
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_hardware:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 370
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_hardware:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 372
    sget v2, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_hardware:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Context;)V

    return-void
.end method

.method private static initMagnifyShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 378
    sget v0, Lcom/android/settings/R$id;->triple_tap_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 379
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_triple_tap:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 381
    sget v1, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_summary_triple_tap:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    .line 384
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 385
    invoke-static {v1, v2}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 387
    sget v2, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_triple_tap:I

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Context;)V

    return-void
.end method

.method private static initSoftwareShortcut(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 355
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 356
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 358
    sget v1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 362
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 363
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result v2

    .line 361
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Context;)V

    return-void
.end method

.method private static initSoftwareShortcutForSUW(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 343
    sget v0, Lcom/android/settings/R$id;->software_shortcut:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 344
    sget v0, Lcom/android/settings/R$string;->accessibility_shortcut_edit_dialog_title_software:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 346
    sget v1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 347
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    .line 350
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I

    move-result v2

    .line 349
    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$createDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$getCustomizeAccessibilityButtonLink$4(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 427
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/accessibility/AccessibilityButtonFragment;

    .line 428
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x751

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private static synthetic lambda$initAdvancedWidget$3(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    .line 396
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p0, 0x0

    .line 397
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$setCustomButtonsClickListener$1(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    .line 246
    invoke-interface {p0, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;->onClick(I)V

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static synthetic lambda$setCustomButtonsClickListener$2(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p2, 0x2

    .line 255
    invoke-interface {p0, p2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;->onClick(I)V

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static retrieveSoftwareShortcutImageResId(Landroid/content/Context;)I
    .locals 0

    .line 421
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 422
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software_floating:I

    goto :goto_0

    .line 423
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->accessibility_shortcut_type_software:I

    :goto_0
    return p0
.end method

.method private static retrieveSoftwareShortcutSummary(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 411
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 412
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string p1, "\n\n"

    .line 414
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 416
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getCustomizeAccessibilityButtonLink(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private static retrieveSoftwareShortcutSummaryForSUW(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 403
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 404
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->getSummaryStringWithIcon(Landroid/content/Context;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private static setCustomButtonsClickListener(Landroid/app/Dialog;Landroid/view/View;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;)V
    .locals 2

    .line 238
    sget v0, Lcom/android/settings/R$id;->custom_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 240
    sget v1, Lcom/android/settings/R$id;->custom_negative_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 244
    new-instance v1, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 253
    new-instance p2, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3, p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static setScrollIndicators(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x3

    .line 211
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setScrollIndicators(II)V

    return-void
.end method

.method private static setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V
    .locals 1

    .line 199
    sget v0, Lcom/android/settings/R$id;->container_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    .line 200
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroid/view/View;)V

    return-void
.end method

.method private static setupShortcutWidget(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Context;)V
    .locals 1

    .line 323
    sget v0, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 326
    invoke-static {p4}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result p1

    invoke-static {p4}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p4

    invoke-static {v0, p1, p4}, Lcom/android/settingslib/widget/ThemeUtils;->tintCheckBoxColor(Landroid/widget/CheckBox;II)V

    .line 329
    :cond_0
    sget p1, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 330
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/16 p2, 0x8

    .line 331
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p2, 0x0

    .line 335
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 338
    :goto_0
    sget p1, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 339
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static showEditShortcutDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 150
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createDialog(Landroid/content/Context;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 151
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 152
    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 155
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->setScrollIndicators(Landroidx/appcompat/app/AlertDialog;)V

    return-object p1
.end method
