.class public Lj1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/client/model/ModelFileBags;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lz0/d;


# direct methods
.method public constructor <init>(Lz0/d;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/d;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj1/c;->a:Ljava/util/Set;

    iput-object p1, p0, Lj1/c;->b:Lz0/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelFileBags;
    .locals 2

    iget-object v0, p0, Lj1/c;->b:Lz0/d;

    iget-object v1, p0, Lj1/c;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lz0/d;->e(Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/baidu/tts/client/model/ModelFileBags;

    invoke-direct {v1}, Lcom/baidu/tts/client/model/ModelFileBags;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/tts/client/model/ModelFileBags;->setList(Ljava/util/List;)V

    return-object v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj1/c;->a()Lcom/baidu/tts/client/model/ModelFileBags;

    move-result-object v0

    return-object v0
.end method
