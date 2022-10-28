.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardController;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;


# instance fields
.field private mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

.field private final mContext:Landroid/content/Context;

.field mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

.field final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kMNe3xSkLHtYjD-i_NdUPytmxDE(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->lambda$loadSuggestions$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wg-u2pVQNFE2WU9SQ6MXTct-lDw(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->lambda$updateAdapter$1(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_use_legacy_suggestion:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "LegacySuggestCardCtrl"

    const-string p1, "Legacy suggestion contextual card disabled, skipping."

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSuggestionServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-direct {v1, p1, v0, p0}, Lcom/android/settingslib/suggestions/SuggestionController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V

    iput-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    return-void
.end method

.method private synthetic lambda$loadSuggestions$0()V
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 153
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/SuggestionController;->getSuggestions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "null"

    goto :goto_0

    .line 156
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded suggests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LegacySuggestCardCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_5

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    .line 163
    new-instance v4, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    invoke-direct {v4}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;-><init>()V

    .line 165
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 166
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 169
    :cond_2
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 170
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 172
    :goto_2
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    move-result-object v6

    .line 173
    invoke-virtual {v6, v3}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->setSuggestion(Landroid/service/settings/suggestions/Suggestion;)Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;

    move-result-object v6

    .line 174
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v6

    .line 175
    invoke-virtual {v3}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v5}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v3

    sget v5, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    .line 177
    invoke-virtual {v3, v5}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 179
    invoke-virtual {v4}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 185
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    .line 186
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->mutate()Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    invoke-virtual {v2, v3}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object v2

    .line 186
    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->updateAdapter()V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$updateAdapter$1(Ljava/util/Map;)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    return-void
.end method

.method private loadSuggestions()V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .line 198
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x2

    .line 199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    return-void
.end method

.method public onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDismissed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Suggestion card"

    .line 104
    invoke-static {v1, v0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->font_size_on_suggestion_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->setSuggestionClosed(Landroid/content/Context;Z)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    .line 111
    invoke-virtual {v1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->getSuggestion()Landroid/service/settings/suggestions/Suggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/suggestions/SuggestionController;->dismissSuggestions(Landroid/service/settings/suggestions/Suggestion;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->loadSuggestions()V

    return-void
.end method

.method public onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    .line 85
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPrimaryClick"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Suggestion card"

    .line 87
    invoke-static {v0, p0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to start suggestion "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LegacySuggestCardCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->loadSuggestions()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez p0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->stop()V

    return-void
.end method

.method public setCardUpdateListener(Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardController;->mCardUpdateListener:Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    return-void
.end method
