.class public Landroid/widget/ArrayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ArrayListAdapter$ArrayFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropDownResource:I

.field private mFieldId:I

.field private mFilter:Landroid/widget/ArrayListAdapter$ArrayFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "TT;>.ArrayFilter;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFiler:Z

.field private final mLock:Ljava/lang/Object;

.field private mLuaFilter:Lcom/luajava/LuaFunction;

.field private mNotifyOnChange:Z

.field private mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOriginalValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x1090003

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    const v1, 0x1090003

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    const v1, 0x1090003

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/ArrayListAdapter;->init(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic a(Landroid/widget/ArrayListAdapter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic b(Landroid/widget/ArrayListAdapter;)Lcom/luajava/LuaFunction;
    .locals 0

    iget-object p0, p0, Landroid/widget/ArrayListAdapter;->mLuaFilter:Lcom/luajava/LuaFunction;

    return-object p0
.end method

.method static bridge synthetic c(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v0, Landroid/widget/ArrayListAdapter;

    invoke-direct {v0, p0, p2, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-object v0
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/widget/ArrayListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    :try_start_0
    iget p3, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    if-nez p3, :cond_1

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    instance-of p1, p4, Ljava/lang/CharSequence;

    if-eqz p1, :cond_3

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-object p2

    :catch_0
    move-exception p1

    const-string p2, "ArrayAdapter"

    const-string p3, "You must supply a resource ID for a TextView"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static bridge synthetic d(Landroid/widget/ArrayListAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Landroid/widget/ArrayListAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic f(Landroid/widget/ArrayListAdapter;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    return-void
.end method

.method private init(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Landroid/widget/ArrayListAdapter;->mDropDownResource:I

    iput p2, p0, Landroid/widget/ArrayListAdapter;->mResource:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    iput p3, p0, Landroid/widget/ArrayListAdapter;->mFieldId:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public filter(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mIsFiler:Z

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/ArrayListAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayListAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mFilter:Landroid/widget/ArrayListAdapter$ArrayFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ArrayListAdapter$ArrayFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayListAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayListAdapter;Landroid/widget/a;)V

    iput-object v0, p0, Landroid/widget/ArrayListAdapter;->mFilter:Landroid/widget/ArrayListAdapter$ArrayFilter;

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mFilter:Landroid/widget/ArrayListAdapter$ArrayFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    add-int/lit8 p1, p1, 0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Landroid/widget/ArrayListAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ArrayListAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mIsFiler:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    return-void
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ArrayListAdapter;->mDropDownResource:I

    return-void
.end method

.method public setFilter(Lcom/luajava/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayListAdapter;->mLuaFilter:Lcom/luajava/LuaFunction;

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/ArrayListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mOriginalValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/widget/ArrayListAdapter;->mObjects:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Landroid/widget/ArrayListAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ArrayListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
