.class Li0/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field final synthetic c:Li0/a;


# direct methods
.method public constructor <init>(Li0/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li0/a$d;->c:Li0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li0/a$d;->a:Ljava/lang/String;

    iput-object p3, p0, Li0/a$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3

    new-instance v0, Ll1/i;

    iget-object v1, p0, Li0/a$d;->a:Ljava/lang/String;

    iget-object v2, p0, Li0/a$d;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ll1/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lb1/i;->b:Lb1/i;

    invoke-virtual {v0, v1}, Ll1/i;->d(Lb1/i;)V

    iget-object v1, p0, Li0/a$d;->c:Li0/a;

    invoke-static {v1}, Li0/a;->m(Li0/a;)Ll0/c;

    move-result-object v1

    invoke-interface {v1, v0}, Ll0/c;->x(Ll1/i;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/a$d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
