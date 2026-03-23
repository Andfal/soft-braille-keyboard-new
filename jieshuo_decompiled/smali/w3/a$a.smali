.class Lw3/a$a;
.super Lw3/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lw3/z0;

    sget-object p4, Lw3/z0$a;->c:Lw3/z0$a;

    invoke-direct {p1, p2, p3, p4}, Lw3/z0;-><init>(Lw3/z2;Lw3/z2;Lw3/z0$a;)V

    return-object p1
.end method
