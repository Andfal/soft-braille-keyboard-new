.class public Lcom/vivo/speechsdk/module/record/RecordModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = true
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "RecordModule"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vivo/speechsdk/module/api/record/IRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/vivo/speechsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/a<",
            "Lcom/vivo/speechsdk/module/api/record/IRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/RecordModule;->a:Ljava/util/Map;

    new-instance v0, Lcom/vivo/speechsdk/module/record/RecordModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/record/RecordModule$a;-><init>(Lcom/vivo/speechsdk/module/record/RecordModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/RecordModule;->b:Lcom/vivo/speechsdk/b/a;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/record/RecordModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/RecordModule;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/RecordModule;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/record/IRecord;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/record/IRecord;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/record/RecordModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/record/RecordModule;->a()V

    return-void
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/RecordModule;->b:Lcom/vivo/speechsdk/b/a;

    return-object v0
.end method
