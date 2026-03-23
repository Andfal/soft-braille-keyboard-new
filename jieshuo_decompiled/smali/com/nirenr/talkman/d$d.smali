.class Lcom/nirenr/talkman/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/d;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/d$d;->a:Lcom/nirenr/talkman/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/d$d;->a:Lcom/nirenr/talkman/d;

    invoke-virtual {v0}, Lcom/nirenr/talkman/d;->x()V

    return-void
.end method
