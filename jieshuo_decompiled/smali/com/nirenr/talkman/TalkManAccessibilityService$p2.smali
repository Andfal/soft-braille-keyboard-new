.class Lcom/nirenr/talkman/TalkManAccessibilityService$p2;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncGetAllApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/content/ComponentName;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->f([Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected varargs f([Ljava/lang/String;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const-string p1, "android.intent.action.MAIN"

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    const-string v1, "asyncGetAllApp"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lk2/a0;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    new-instance v8, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v8, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v5, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v9, "com."

    if-ge v1, v8, :cond_3

    :try_start_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v10, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v12, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    new-instance v1, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v1, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-ge v7, v1, :cond_5

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    new-instance v8, Landroid/content/ComponentName;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w3(Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->R2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0xa

    if-ge p1, v1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaApplication;->setAppList(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->q3()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected g(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u1(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/HashMap;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/d;->C()V

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$p2;->g(Ljava/util/HashMap;)V

    return-void
.end method
