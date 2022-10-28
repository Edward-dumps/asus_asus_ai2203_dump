.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(DD)Ljava/lang/String;
    .locals 1

    .line 326
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object p0

    const/4 v0, 0x2

    .line 327
    invoke-virtual {p0, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    div-double/2addr p1, p3

    .line 328
    invoke-virtual {p0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 6

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 298
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    :goto_0
    long-to-float v2, v0

    const/high16 v3, 0x4ec00000

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    long-to-double v0, v0

    if-eqz v2, :cond_2

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    goto :goto_2

    :cond_2
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 317
    :goto_2
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(DD)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, v3, p0}, Landroid/widget/EditText;->setSelection(II)V

    .line 322
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageEditController;Z)V
    .locals 3

    .line 262
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 266
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 270
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    invoke-interface {p0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object p0

    const-string v2, "template"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "limit"

    .line 272
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    new-instance p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 275
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 276
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 277
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "warningEditor"

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x226

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    .line 336
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/DataUsageEditController;

    .line 337
    invoke-interface {p1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object p2

    .line 339
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 341
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 342
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->size_spinner:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 344
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v2}, Lcom/android/settings/datausage/BillingCycleSettings;->isLegalNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bytes_string_error:I

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 351
    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v4

    const/4 v5, 0x0

    .line 354
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-wide/16 v6, 0x0

    if-eqz v5, :cond_3

    .line 359
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 360
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_2

    const-wide/32 v3, 0x100000

    goto :goto_0

    :cond_2
    const-wide/32 v3, 0x40000000

    :goto_0
    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_1

    :cond_3
    move-wide v2, v6

    :goto_1
    const-wide v4, 0x30d400000000L

    .line 364
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    if-eqz v1, :cond_4

    .line 366
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_2

    .line 369
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataUsageBaseFragment;

    .line 370
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/DataUsageBaseFragment;->getDataLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    cmp-long v1, v4, v6

    if-ltz v1, :cond_5

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->warning_should_lower_than_limit:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 375
    :cond_5
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 377
    :goto_2
    invoke-interface {p1}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 283
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 285
    sget v2, Lcom/android/settings/R$layout;->data_usage_bytes_editor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 286
    sget v2, Lcom/android/settings/R$id;->bytes:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->size_spinner:I

    .line 287
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 286
    invoke-direct {p0, v0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 288
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    .line 289
    sget p1, Lcom/android/settings/R$string;->data_usage_limit_editor_title:I

    goto :goto_0

    .line 290
    :cond_0
    sget p1, Lcom/android/settings/R$string;->data_usage_warning_editor_title:I

    .line 289
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 291
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_cycle_editor_positive:I

    .line 292
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
