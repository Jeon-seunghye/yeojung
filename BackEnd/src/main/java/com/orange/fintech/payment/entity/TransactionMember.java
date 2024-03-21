package com.orange.fintech.payment.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class TransactionMember {

    @EmbeddedId private TransactionMemberPK transactionMemberPK;

    @NotNull private Integer totalAmount;

    @NotNull private Boolean isLock;
}
