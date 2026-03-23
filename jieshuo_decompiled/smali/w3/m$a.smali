.class Lw3/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/m;->a(Lw3/o;Lw3/f;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw3/n<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lw3/f;

.field final synthetic b:Lw3/z2;

.field final synthetic c:Lw3/z2;

.field final synthetic d:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lw3/f;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lw3/m$a;->a:Lw3/f;

    iput-object p2, p0, Lw3/m$a;->b:Lw3/z2;

    iput-object p3, p0, Lw3/m$a;->c:Lw3/z2;

    iput-object p4, p0, Lw3/m$a;->d:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/m;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lw3/m$a;->a:Lw3/f;

    iget-object v1, p0, Lw3/m$a;->b:Lw3/z2;

    iget-object v2, p0, Lw3/m$a;->c:Lw3/z2;

    iget-object v3, p0, Lw3/m$a;->d:[Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2, v3}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
