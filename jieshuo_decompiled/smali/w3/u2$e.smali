.class Lw3/u2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lw3/f;


# direct methods
.method constructor <init>(Lw3/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/u2$e;->b:Lw3/f;

    iput-object p2, p0, Lw3/u2$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lw3/u2$e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {p4, v1, p1, p2}, Lw3/u2;->W0([Ljava/lang/Object;[ILw3/m;Lw3/z2;)Lw3/z2;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, v0, v1

    iget-object p4, p0, Lw3/u2$e;->b:Lw3/f;

    invoke-interface {p4, p1, p2, p3, v0}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
