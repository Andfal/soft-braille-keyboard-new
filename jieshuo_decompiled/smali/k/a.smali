.class public Lk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static final a:Lk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk/a;

    invoke-direct {v0}, Lk/a;-><init>()V

    sput-object v0, Lk/a;->a:Lk/a;

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

    invoke-virtual {p1}, Lh/k0;->w()Lh/f1;

    move-result-object p1

    check-cast p2, Lspringfox/documentation/spring/web/json/Json;

    invoke-virtual {p2}, Lspringfox/documentation/spring/web/json/Json;->value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lh/f1;->write(Ljava/lang/String;)V

    return-void
.end method
