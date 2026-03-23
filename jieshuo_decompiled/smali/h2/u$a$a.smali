.class Lh2/u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/u$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/u$a;


# direct methods
.method constructor <init>(Lh2/u$a;)V
    .locals 0

    iput-object p1, p0, Lh2/u$a$a;->a:Lh2/u$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lh2/u$a$a;->a:Lh2/u$a;

    iget-object v0, v0, Lh2/u$a;->c:Lh2/u;

    invoke-virtual {v0}, Lh2/u;->h()V

    return-void
.end method
