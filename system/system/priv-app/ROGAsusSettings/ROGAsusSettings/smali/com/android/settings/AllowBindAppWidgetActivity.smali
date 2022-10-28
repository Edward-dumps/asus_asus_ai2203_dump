.class public Lcom/android/settings/AllowBindAppWidgetActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AllowBindAppWidgetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAlwaysUse:Landroid/widget/CheckBox;

.field private mAppWidgetId:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBindOptions:Landroid/os/Bundle;

.field private mCallingPackage:Ljava/lang/String;

.field private mClicked:Z

.field private mComponentName:Landroid/content/ComponentName;

.field private mProfile:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 60
    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    if-eq p2, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    invoke-virtual {v1, p2, v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "appWidgetId"

    .line 66
    iget v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error binding widget with id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and component "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BIND_APPWIDGET"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 75
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 77
    iget-object p2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 95
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addPrivateFlags(I)V

    const/4 p1, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->setResult(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :try_start_0
    const-string v3, "appWidgetId"

    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    const-string v3, "appWidgetProviderProfile"

    .line 103
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    if-nez v3, :cond_0

    .line 106
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    :cond_0
    const-string v3, "appWidgetProvider"

    .line 109
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    const-string v3, "appWidgetOptions"

    .line 111
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mBindOptions:Landroid/os/Bundle;

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 114
    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    iput v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetId:I

    .line 118
    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mComponentName:Landroid/content/ComponentName;

    .line 119
    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    const-string p1, "BIND_APPWIDGET"

    const-string v0, "Error getting parameters"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_1
    const-string v0, ""

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 126
    sget v3, Lcom/android/settings/R$string;->allow_bind_app_widget_activity_allow_bind_title:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 127
    sget v3, Lcom/android/settings/R$string;->allow_bind_app_widget_activity_allow_bind:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, p1

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 128
    sget v3, Lcom/android/settings/R$string;->create:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/high16 v3, 0x1040000

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 130
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 131
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const-string v3, "layout_inflater"

    .line 133
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "always_use_checkbox"

    const-string v7, "layout"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "alwaysUse"

    const-string v5, "id"

    invoke-virtual {v2, v3, v5, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 136
    sget v2, Lcom/android/settings/R$string;->allow_bind_app_widget_activity_always_allow_bind:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, p1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/app/AlertActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 139
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 140
    invoke-virtual {v2}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    .line 141
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->bind_app_widget_dialog_checkbox_bottom_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 138
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 144
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 145
    iget-object v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mAlwaysUse:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mCallingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mProfile:Landroid/os/UserHandle;

    .line 146
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 145
    invoke-virtual {p1, v1, v2}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/AllowBindAppWidgetActivity;->mClicked:Z

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 90
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
