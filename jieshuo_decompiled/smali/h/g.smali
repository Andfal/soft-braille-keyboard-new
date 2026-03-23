.class public Lh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static final a:Lh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/g;

    invoke-direct {v0}, Lh/g;-><init>()V

    sput-object v0, Lh/g;->a:Lh/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    sget-object p2, Lh/g1;->i:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/k0;->F(Ljava/lang/String;)V

    return-void
.end method
