.class Lcom/nirenr/talkman/util/b$t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$t;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/b$t;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$t;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$t$b;->a:Lcom/nirenr/talkman/util/b$t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$t$b;->a:Lcom/nirenr/talkman/util/b$t;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$t;->b:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/b;->x()V

    return-void
.end method
