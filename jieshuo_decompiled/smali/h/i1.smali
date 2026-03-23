.class public Lh/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static final a:Lh/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/i1;

    invoke-direct {v0}, Lh/i1;-><init>()V

    sput-object v0, Lh/i1;->a:Lh/i1;

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

    iget-object p1, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lh/f1;->O()V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->S(Ljava/lang/String;)V

    return-void
.end method
