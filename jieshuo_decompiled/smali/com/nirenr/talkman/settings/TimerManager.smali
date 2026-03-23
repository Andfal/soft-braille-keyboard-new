.class public Lcom/nirenr/talkman/settings/TimerManager;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;,
        Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/text/SimpleDateFormat;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;

.field private e:[Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nirenr/talkman/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ListView;

.field private j:J

.field private k:J

.field private l:Ljava/text/SimpleDateFormat;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->m:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/TimerManager;->b:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/TimerManager;->l:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/TimerManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/TimerManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->o:J

    return-wide v0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/TimerManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->n:J

    return-wide v0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/TimerManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/TimerManager;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/TimerManager;JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nirenr/talkman/settings/TimerManager;->h(JJ)V

    return-void
.end method

.method private h(JJ)V
    .locals 11

    iput-wide p1, p0, Lcom/nirenr/talkman/settings/TimerManager;->n:J

    iput-wide p3, p0, Lcom/nirenr/talkman/settings/TimerManager;->o:J

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/TimerManager;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->j:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->k:J

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v2, v4, :cond_7

    aget-object v3, v3, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nirenr/talkman/settings/TimerManager;->k:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->k:J

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/nirenr/talkman/settings/TimerManager;->j:J

    cmp-long v10, v6, v8

    if-gez v10, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->j:J

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-ltz v8, :cond_6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v6, p3

    if-lez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/nirenr/talkman/settings/TimerManager;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Lcom/nirenr/talkman/o;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/nirenr/talkman/o$b;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/nirenr/talkman/settings/TimerManager;->f:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/nirenr/talkman/o$b;->d()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerManager;->m:Ljava/util/ArrayList;

    new-instance p1, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;

    invoke-direct {p1, p0, p0, v0}, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;-><init>(Lcom/nirenr/talkman/settings/TimerManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager;->d:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager;->i:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager;->g:Landroid/widget/ListView;

    new-instance p2, Landroid/widget/ArrayListAdapter;

    new-array p3, v5, [Ljava/lang/String;

    const p4, 0x7f070459

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-direct {p2, p0, p3}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_6

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Lk2/p;

    invoke-direct {p2}, Lk2/p;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "[^0-9.]"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v0, ", "

    if-nez p4, :cond_9

    :try_start_1
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    mul-double p3, p3, v3

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/TimerManager;->h:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager;->g:Landroid/widget/ListView;

    new-instance p3, Landroid/widget/ArrayListAdapter;

    invoke-direct {p3, p0, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f070670

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->g:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->i:Landroid/widget/ListView;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f070664

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->b:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-M"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->l:Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getTimerDir()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->i:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->i:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerManager;->g:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager;->i:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 p1, 0x5

    invoke-virtual {v0, p1, v1}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/nirenr/talkman/settings/TimerManager;->h(JJ)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const v0, 0x7f07068b

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f070364

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerManager;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/o;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/nirenr/talkman/o$b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nirenr/talkman/o$b;->c()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/nirenr/talkman/o$b;->a()J

    move-result-wide p4

    invoke-virtual {p1}, Lcom/nirenr/talkman/o$b;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/nirenr/talkman/o$b;->d()Ljava/util/ArrayList;

    move-result-object p1

    sub-long v2, p4, p2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    const-string v4, "GTM+0"

    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0701d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x36ee80

    cmp-long v5, v2, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    if-gez v5, :cond_1

    const v1, 0x7f0701d6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0701d5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/TimerManager;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerManager;->b:Ljava/text/SimpleDateFormat;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const/4 p2, 0x3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    goto :goto_2

    :cond_2
    const-string p1, ""

    aput-object p1, v1, p2

    :goto_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f070670

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p4, 0x7f0701ea

    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/TimerManager;->d:Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;

    invoke-virtual {p4, p3}, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/TimerManager;->e:[Ljava/lang/String;

    aget-object p4, p4, p3

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/TimerManager$3;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/settings/TimerManager$3;-><init>(Lcom/nirenr/talkman/settings/TimerManager;I)V

    const p3, 0x104000a

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f070670

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getTimerDir()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lh2/h;

    new-instance v3, Lcom/nirenr/talkman/settings/TimerManager$1;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/settings/TimerManager$1;-><init>(Lcom/nirenr/talkman/settings/TimerManager;)V

    invoke-direct {v2, p0, v0, v1, v3}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto/16 :goto_1

    :cond_1
    const v0, 0x7f070459

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    iget-wide v5, p0, Lcom/nirenr/talkman/settings/TimerManager;->j:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-wide v7, p0, Lcom/nirenr/talkman/settings/TimerManager;->k:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_3

    const/4 v3, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v4, v3, v2}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;

    invoke-direct {v2, p0, p0, v0}, Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;-><init>(Lcom/nirenr/talkman/settings/TimerManager;Landroid/content/Context;Ljava/util/List;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/nirenr/talkman/settings/TimerManager$2;

    invoke-direct {v3, p0, v0, p1, v2}, Lcom/nirenr/talkman/settings/TimerManager$2;-><init>(Lcom/nirenr/talkman/settings/TimerManager;Ljava/util/ArrayList;Landroid/view/MenuItem;Lcom/nirenr/talkman/settings/TimerManager$TimerAdapter2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
