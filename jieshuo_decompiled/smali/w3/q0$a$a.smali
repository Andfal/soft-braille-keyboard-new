.class Lw3/q0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw3/q0$a;->equals(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lw3/q0$a;


# direct methods
.method constructor <init>(Lw3/q0$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lw3/q0$a$a;->b:Lw3/q0$a;

    iput-object p2, p0, Lw3/q0$a$a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lw3/q0$a$a;->b:Lw3/q0$a;

    iget-object p2, p0, Lw3/q0$a$a;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/q0$a;->a(Lw3/q0$a;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
