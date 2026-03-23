.class Ls0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ll1/h;

.field final synthetic b:Ls0/f;


# direct methods
.method public constructor <init>(Ls0/f;Ll1/h;)V
    .locals 0

    iput-object p1, p0, Ls0/f$b;->b:Ls0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls0/f$b;->a:Ll1/h;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "enter run"

    const-string v1, "PlayQueueMachine"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ls0/f$b;->b:Ls0/f;

    invoke-static {v0}, Ls0/f;->U(Ls0/f;)Lt0/c;

    move-result-object v0

    iget-object v2, p0, Ls0/f$b;->a:Ll1/h;

    invoke-interface {v0, v2}, Lt0/c;->a(Ll1/h;)Ll0/f;

    const-string v0, "end run"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
