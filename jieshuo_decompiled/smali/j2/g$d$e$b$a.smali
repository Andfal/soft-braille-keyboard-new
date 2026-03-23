.class Lj2/g$d$e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$d$e$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/g$d$e$b;


# direct methods
.method constructor <init>(Lj2/g$d$e$b;)V
    .locals 0

    iput-object p1, p0, Lj2/g$d$e$b$a;->a:Lj2/g$d$e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lj2/g$d$e$b$a;->a:Lj2/g$d$e$b;

    iget-object v0, v0, Lj2/g$d$e$b;->a:Lj2/g$d$e;

    iget-object v0, v0, Lj2/g$d$e;->d:Lj2/g$d;

    iget-object v0, v0, Lj2/g$d;->o:Lj2/g;

    invoke-virtual {v0}, Lj2/g;->j()Z

    return-void
.end method
